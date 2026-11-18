# Arcomage digits: font test (not tested in the game)

Replaces the `comic` font (Arcomage numbers and names) with Noto Sans CJK SC Medium (SIL OFL 1.1), subset to the zh-cn character list (840 KB). The thin Wenkai strokes plus the engine's one-pixel drop shadow read as a doubled glyph; a heavier face looks like a normal shadow.

Files: `comic.yml`, `notosanscjksc_medium.otf`, `lxgwwenkai.charset.txt` (same list the other fonts use).
Not verified on a device: if the game refuses the .otf or the digits look off, delete these three files and the game falls back to the shipped `comic.yml`.
