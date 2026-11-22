# Xeen / OpenYAMM 3.0: issues found while testing zh-CN (not fixable in .po)

Setup: OpenYAMM 3.0 release, zh-cn, a "Xeen start" game in the MMerge world (save name "XEEN开局 - MMERGE").

1. House dialogs open the wrong house.
   - Camp Shrine (Brother Tobit): "Donate" opens Emerson's "Master Builder's Office".
   - Ebenezer's Tent: "Learn skills" opens a throne room with a king ("加冕殿", "此角色在此没有可学的技能").
   Looks like Xeen house ids collide with another world's house ids.
2. In those dialogs, house names, NPC names/titles and topics stay English ("The Camp Shrine", "Brother Tobit",
   "Emerson, Royal Engineer", "Ebenezer, Taxman", "The ruins", "Castles", "Newcastle", "Taxes") although
   all of them are translated with msgctxt "world:xeen" and the log shows them loaded (34,779 translations).
   The ", " between name and title IS translated, so localize() runs but finds nothing: maybe the lookup in
   the MMerge world doesn't fall back to world:xeen.
3. Monster inspect panel names, save-screen world name and pause-menu "{world} - Day {day}" are not localized.
4. Lua strings built by concatenation never match a translation:
   xeen_common.lua ("The niche shows its number: " .. n, ": the sundial reads ", "The sundial is set to "),
   xeen_dd09.lua ("The dial grinds round. It reads ", "Dial reads " .. n .. ". Turn?"),
   xeen_xd10.lua ("The great skull takes ten of your gems and grins wider. +5 " .. stat).
5. Unnamed NPCs show "Group 47" (monster group id) as their name.
6. A "Fountain" dialog opens by itself at the start of a new Xeen game; the selection highlight is very bright.
7. MM8 Lich promotion (Global_mm8_promotions.lua, event 89): says the party has no Lost Book of Kehl although
   it is in the quest-item pouch. requireItem(611, 115) -> HasItem(611). In MMerge the book may have another
   item id, or HasItem may not see the shared quest pouch in the release build.
8. The packaged zh-cn/text/xeen.po is empty and hides any user file with the same name.
