# zh-cn: texts that stay English because the code does not call tr()/localize()

Checked with OpenYAMM 2.0, language zh-cn, MAW ruleset. The .po files contain these texts and there are no refused
entries in openyamm.log, so the lookup never happens for them. Please check each call site.

1. **Spell book description (MAW)** - `MawSpellRules::spellTooltip` appends "\n\n" + "Recovery time: {ticks}"
   (and the combo / aura reserve lines) to `text.description`, and `GameplayHudOverlaySupport.cpp` then calls
   `Engine::localizeKnown(text.description)` on the whole string. It no longer matches the table text, so the description
   stays English while the mastery lines and "Recovery time" are Chinese. Suggested: localize the table description
   before the appended lines are added.
2. **Monster health bar** - monster name is not localized.
3. **Automap title** - e.g. "Dagger Wound Island" is shown raw.
4. **Hover label of an NPC** - profession + name template is filled with raw parts.
5. **House interior title bar** - e.g. "House of Reshie", although `House of Reshie` is translated in engine.po.
6. **Coloured barrels** - hover names (Red/Green/Blue... Barrel) come from `RegisterGlobalEvent(..., "Green Barrel", ...)`
   in Global.lua; the translations exist in engine.po.
7. **Battle Orders** - `Caster` and `Copy from...` are raw literals (GameplayBattleOrders.cpp); `empty` needs a translation key.
8. **Trainers page** - the continent tabs (Jadame, Antagarich, Enroth, Chedian) are raw.
9. **Party member names** (Shimon, Navin, ...) in Battle Orders and the character creation screen.
10. **World map (teleport) screen** - the place names are part of the picture, not text.

Tip for translators: `OPENYAMM_UNTRANSLATED_TEXT_LOG=<file>` lists the texts that were looked up but missing; it cannot
list the ones above because they are never looked up.
