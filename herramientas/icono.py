#!/usr/bin/env python3
"""Genera el icono monoline del mod (carta con tilde y líneas de texto).

Fondo 100 % transparente, trazo continuo con puntas redondeadas y
antialiasing por distancia. Sin dependencias externas (PNG con zlib).
"""
from __future__ import annotations

import math
import struct
import zlib
from pathlib import Path

MOD_DIR = Path(__file__).resolve().parent.parent
COLOR = (242, 238, 250)  # blanco lila muy suave
STROKE = 0.058           # grosor del trazo (fracción del lado)


def seg_dist(px: float, py: float, ax: float, ay: float, bx: float, by: float) -> float:
    dx, dy = bx - ax, by - ay
    t = max(0.0, min(1.0, ((px - ax) * dx + (py - ay) * dy) / (dx * dx + dy * dy or 1)))
    return math.hypot(px - (ax + t * dx), py - (ay + t * dy))


def round_rect_dist(px: float, py: float, cx: float, cy: float, hw: float, hh: float, r: float) -> float:
    qx, qy = abs(px - cx) - (hw - r), abs(py - cy) - (hh - r)
    outside = math.hypot(max(qx, 0), max(qy, 0)) + min(max(qx, qy), 0) - r
    return abs(outside)


def build_paths() -> list[list[tuple[float, float]]]:
    # Tilde (~) de la «ñ»: un periodo de seno
    wave = [(0.37 + 0.26 * i / 40, 0.31 - 0.04 * math.sin(2 * math.pi * i / 40)) for i in range(41)]
    lines = [[(0.35, 0.50), (0.65, 0.50)], [(0.35, 0.615), (0.60, 0.615)], [(0.35, 0.73), (0.53, 0.73)]]
    return [wave, *lines]


def render(size: int) -> bytes:
    paths = build_paths()
    w = STROKE * size
    rows = []
    for y in range(size):
        row = bytearray([0])  # filtro PNG «None»
        for x in range(size):
            px, py = (x + 0.5) / size, (y + 0.5) / size
            d = round_rect_dist(px, py, 0.5, 0.5, 0.27, 0.38, 0.085)
            for path in paths:
                for (ax, ay), (bx, by) in zip(path, path[1:]):
                    d = min(d, seg_dist(px, py, ax, ay, bx, by))
            alpha = max(0.0, min(1.0, w / 2 - d * size + 0.5))
            row += bytes((*COLOR, round(alpha * 255)))
        rows.append(bytes(row))
    raw = b"".join(rows)

    def chunk(tag: bytes, data: bytes) -> bytes:
        return struct.pack(">I", len(data)) + tag + data + struct.pack(">I", zlib.crc32(tag + data) & 0xFFFFFFFF)

    ihdr = struct.pack(">IIBBBBB", size, size, 8, 6, 0, 0, 0)
    return b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", ihdr) + chunk(b"IDAT", zlib.compress(raw, 9)) + chunk(b"IEND", b"")


def main() -> None:
    targets = {MOD_DIR / "assets/1x/icon.png": 32, MOD_DIR / "assets/2x/icon.png": 64}
    for s in (16, 32, 48, 64, 128, 512, 1024):
        targets[MOD_DIR / f"assets/iconos/icono-{s}.png"] = s
    for path, size in targets.items():
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(render(size))
        print(f"{size:>5}px -> {path.relative_to(MOD_DIR)}")


if __name__ == "__main__":
    main()
