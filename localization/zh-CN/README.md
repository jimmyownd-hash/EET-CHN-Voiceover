# Simplified Chinese localization (OpenYAMM 1.21)

Translator credit shown in game: 汉化：考拉粑粑

`packs/` holds only the files that differ from the English content, laid out like the content packs:

| folder | goes into pack |
| --- | --- |
| `packs/engine`  | engine.core (data_tables, ui, fonts, scripts, events) |
| `packs/mm6`, `packs/mm7`, `packs/mm8` | mm6.core, mm7.core, mm8.core |
| `packs/rules` | engine.rulesets |

Copy each folder over the matching content, then repack and rebuild `index.json` as usual.

Engine changes this needs (already in this branch):

* `engine/FontAsset.cpp`: optional font descriptor key `glyph_scale` (0.5 to 1.0) draws glyphs smaller without changing the line metrics.
* `game/ui/UiText.*`: the translation overlay, read from `data_tables/english/ui_text.txt`. With no table it returns its input, so the English build is unchanged.
* Small call sites that translate before measuring or wrapping text.

Font: LXGW WenKai (SIL OFL 1.1), licence text in `packs/engine/fonts/truetype/lxgwwenkai_ofl.txt`.
