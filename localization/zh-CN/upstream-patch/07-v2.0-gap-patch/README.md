# 07 - gap patch for the zh-cn pack of OpenYAMM 2.0 (translation files)

Built from the zh-cn pack as shipped in 2.0 (engine.languages-c06c47d3be9c624b). All files parse, no placeholder mismatches.
Not a full in-game test; please spot-check.

- `text/engine.po, engine-pending.po, mm6.po, mm7.po, mm8.po, mm9.po`: your files with 44 mixed English/Chinese entries fixed,
  82 name unifications (太阳神殿, 巴尔萨煞之穴 ...), `empty` -> `空`.
- `text/engine-extra.po` (new, loaded because every `engine*.po` is shared): 6850 entries that exist only in
  `world:mm9` context copied to the global context. Reason: with MAW, MM9 items appear in MM6/7/8, where the
  `world:mm9` entries are never consulted, so e.g. Thjoradric Amulet, Trigvanian Mail, Hatchet, Scramasax and their
  descriptions stay English. Plus ~60 MAW content texts (rulesets/maw/content) that are not in any .po
  (npc_topic_text_patch, skill_des_new, special_item_enchants_patch, npc_topic_patch, place_mon_names, quests).
  Alternative: add the missing text to engine.po directly.
- `data_tables/roster.txt, npc_names.txt, npc_professions.txt`: display-only columns translated (roster columns 1 and 123;
  bios left blank on purpose). Shipped as `mods/engine/data_tables/`; they are your tables with only these columns changed.
- `fonts/lxgwwenkai.charset.txt`: union of the 2.0 charset and the characters our texts use (+780 glyphs).

See ISSUE.md for the places that cannot be fixed by .po files.

## mods/ (files that are not text)
- `mods/engine/audio/`: 851 Chinese companion voice wavs (灵石之光配音). Our earlier packs put them in `mods/worlds/<w>/audio`, where
  2.0 never reads them (the log says "is a new file"); the engine audio pack is where the English voices live, so same-named
  files in `mods/engine/audio` replace them. The same files are identical for mm6/mm7/mm8.
- `mods/engine/icons_x2/sprites.png`: Arcomage sprite sheet with Chinese card names and labels (built for 1.21, not verified on 2.0).
