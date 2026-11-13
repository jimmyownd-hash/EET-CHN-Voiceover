# 08 - zh-cn supplement for OpenYAMM 2.2

Thanks for taking issue #31 into 2.2. Checked the 2.2 zh-cn pack against the templates; what is still open:

- `engine-supplement.po`: 59 texts that are empty in the 2.2 zh-cn files: the innkeeper's two lines after buying the
  Ledger of Teachers (`teacher_ledger.yml`, they are in no template), MM6/MM7 event results ("+5 Spell points restored",
  "+10 Magic resistance permanent"), MM9 quest-bit names and a few engine texts. The MM6 riddle answers and single
  letters (dark, time, an arrow, fish, B, C ...) are left empty on purpose: the player types them.
  Internal names (Cinema ..., ... destroyed, Pledge ...) are left empty too.
- Still English in 2.2 (code): the updater status "The update was cancelled." (AppUpdater.cpp, shown on the
  settings page as "上次检查失败: ..."), party member names (roster.txt is not looked up; we ship a translated
  roster.txt / npc_names.txt / npc_professions.txt as mods/engine/data_tables), monster health bar names, and
  `glyph_scale` in the font descriptors (Chinese text is drawn about 28% larger than intended).
- The Arcomage sprite sheet with Chinese card names (07-v2.0-gap-patch/mods/engine/icons_x2/sprites.png) is not in 2.2.

## Also in this folder
- `mods/engine/data_tables/` – translated party member / NPC names and professions (roster, npc_names, npc_professions) for the game folder's `mods/engine/data_tables/`.
- `更新日志.txt` – changelog and install notes (Chinese).
- `save-editor/OpenYAMM存档修改器-2.2.html` – single-file save editor, reads/writes .oysav versions 154–176 (1.21 – 2.2).
