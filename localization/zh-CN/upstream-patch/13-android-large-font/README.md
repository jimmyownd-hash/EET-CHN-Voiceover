# Android large-text font descriptors (zh-CN)

Optional, for phones and small screens. The official zh-cn fonts draw the Chinese glyphs at 0.78 to 0.86 of the line height
(`glyph_scale` in each font yml) so they match the Latin letters. On a phone screen that is too small to read.

These files are the same descriptors with `glyph_scale` raised by 1.25x and capped at 1.0 (0.78 becomes 0.98, 0.8 becomes 1.0,
0.82 becomes 1.0, 0.86 becomes 1.0). Nothing else changes: same font file, same `logical_height`, baseline and character list.

## Why the cap at 1.0

`glyph_scale` only changes how big the glyphs are drawn; the line height (`logical_height`) stays the same. At 1.0 a Chinese
character fills its whole line. Above that the glyphs run into the line above and below and get clipped by boxes sized to the
line height, so 1.0 is the largest value that does not break layouts.

## How to use

Copy `languages/zh-cn/engine/fonts/truetype/*.yml` over the pack's files of the same name. For Android only, it can ship as a
mobile override, or the engine could read a text-size setting and multiply `glyph_scale` at load time (the better long-term fix).

## Not tested on a device

Made from the engine's font code and the pack files, not run on a phone. Wider text wraps sooner; tell us if a screen overflows.
