# v2.3 supplement (zh-CN)

Against the v2.3 tag, `assets_dev/languages/zh-cn/`:

- `text/engine.po`, `engine-pending.po`, `mm6.po`, `mm7.po`, `mm9.po`: the v2.3 files with our changes applied.
  - 57 texts still untranslated in v2.3 are filled (Ledger/innkeeper-style event results, "+10 Magic resistance permanent", "+5 Spell points restored", debug/placeholder texts, MM9 quest-bit names, ...).
  - 3 existing entries are re-worded: `Elder {class}` 长老{class} -> 资深{class} (MAW rank prefix: "长老大法师" read as a title, not a rank); `Elder Priest of the Light` / `the Elder Priest of the Light` 光明长老祭司 -> 光明大主教 (matches 光明主教).
- `engine/icons_x2/sprites.pcx`: the Chinese Arcomage card sheet, same size (1920x5000) and layout as `assets_dev/engine/icons_x2/sprites.pcx` (the file is a PNG with a .pcx name, like the original). Copy it to `assets_dev/languages/zh-cn/engine/icons_x2/` now that language packs can replace icons_x2 (OY-579). It has not been tested in 2.3 yet.

`text/mm9.po` also has the 47 fuzzy MM9 artifact descriptions (the rebalanced artifacts) re-translated with their new bonuses, the flag removed, plus the Halberd and Fizbin descriptions (translated from scratch).

Still English in v2.3: about 200 MM9 script/quest-flag labels ("Cinema chess_capture_2: done", "Pledge 191", ... debug names that players do not see). Party/NPC names and professions (roster, npc_names, npc_professions) stay English in a language pack, because packs do not replace data tables; players can use the `mods` folder (see 08-v2.2-supplement/mods).
- `save-editor/OpenYAMM存档修改器-2.3.html` – single-file save editor, reads/writes .oysav versions 154-179 (1.21 - 2.3).

## text/engine-supplement.po (new file, 78 entries)
Texts that ARE wrapped in tr()/trNoop() in the v2.3 code but are in neither templates/*.pot nor zh-cn (so no translator could see them): the Battle Orders Upkeep list (36), the Load screen's playthrough texts (16: "This playthrough", ...), the updater messages (16: "The update was cancelled." ...), "All continents"/"Continent" on the Progress page, "+{experience} experience", "Quest Book", the party-creation voice hint, the upkeep status messages. Please regenerate the templates and merge this file into zh-cn engine.po (it adds new msgids only, nothing is overridden).
- 98 artifact descriptions in the form the MAW popup looks them up (mawArtifactDescription cuts the "(Special Powers: ...)" and the leading "(...)" from the English first, so the full texts in engine.po never match; this affects every language).
