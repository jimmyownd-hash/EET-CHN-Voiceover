# v2.3 supplement (zh-CN)

Against the v2.3 tag, `assets_dev/languages/zh-cn/`:

- `text/engine.po`, `engine-pending.po`, `mm6.po`, `mm7.po`, `mm9.po`: the v2.3 files with our changes applied.
  - 57 texts still untranslated in v2.3 are filled (Ledger/innkeeper-style event results, "+10 Magic resistance permanent", "+5 Spell points restored", debug/placeholder texts, MM9 quest-bit names, ...).
  - 3 existing entries are re-worded: `Elder {class}` 长老{class} -> 资深{class} (MAW rank prefix: "长老大法师" read as a title, not a rank); `Elder Priest of the Light` / `the Elder Priest of the Light` 光明长老祭司 -> 光明大主教 (matches 光明主教).
- `engine/icons_x2/sprites.pcx`: the Chinese Arcomage card sheet, same size (1920x5000) and layout as `assets_dev/engine/icons_x2/sprites.pcx` (the file is a PNG with a .pcx name, like the original). Copy it to `assets_dev/languages/zh-cn/engine/icons_x2/` now that language packs can replace icons_x2 (OY-579). It has not been tested in 2.3 yet.

Still not translated in v2.3: 252 MM9 artifact lore texts and 47 fuzzy ones (the rebalanced MM9 artifacts). Party/NPC names and professions (roster, npc_names, npc_professions) stay English in a language pack, because packs do not replace data tables; players can use the `mods` folder (see 08-v2.2-supplement/mods).
- `save-editor/OpenYAMM存档修改器-2.3.html` – single-file save editor, reads/writes .oysav versions 154-179 (1.21 - 2.3).
