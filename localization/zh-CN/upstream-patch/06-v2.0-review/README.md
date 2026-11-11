# Review of the zh-cn pack in OpenYAMM 2.0 (checked against commit 1a0ffeb, 2026-11-11)

Everything here is against `assets_dev/languages/zh-cn/text/*.po` as it is in 2.0. Each `.po` holds only the
entries to change (`msgid` unchanged, new `msgstr`, the previous text in a `# was:` comment), so it can be
imported with `l10n.py import po` or cherry-picked by hand.

## 1. Definite fixes - `fixes.engine.po`, `fixes.mm8.po` (11 entries)
- Doubled characters: 前哨站站 (4 entries, Pirate Outpost) and 的的 (2 entries).
- Escaton's three riddles: the Chinese question text ends with a numbered choice list
  ("请输入数字：1、蛋；2、锅；3、纸盒；4、箱子"), but the accepted answers are only the English words
  (`jail`, `in`, `inside`, `egg`, `an egg` are empty). A player who follows the prompt and types the number fails.
  The file gives the number and the Chinese word as the translated answers.

## 2. One English text, two meanings - `shared-name-potion-vs-stat.tsv` (20 entries)
`Fire Resistance`, `Meditation`, `Bless`, `Haste`, `Shield`, `Stone Skin`, `Resistance` ... are both a potion name
and a stat / skill / spell name. The pack has the potion wording for all uses, so the character sheet shows
"御火药剂" (a fire-resistance *potion*) for the Fire Resistance stat and "冥想药剂" for the Meditation skill.
Suggested: the plain wording for the shared text (third column), and a context (`trc`) for the potion item names
if you want to keep "…药剂" on the potions.

## 3. Terminology - `terms.*.po` + `term-diff.tsv` (2,191 entries)
Entries whose English text is also in our current pack (v2.1 `ui_text.txt`) with a different Chinese text.
Only entries with identical placeholders and no line break. This is our latest wording after several playtest
rounds; the 2.0 pack was imported from an earlier state. The visible ones:
- Mastery: `Master` is 智者 in the pack, 大师 in ours (普通 / 专家 / 大师 / 宗师). The mastery letter for M would
  then be 大 instead of 智 (`msgctxt "mastery letter"`).
- House and shop names, see 4.
Treat it as a candidate list; `term-diff.tsv` has both versions side by side.

## 4. House names vs. NPC names - `names.house-vs-npc.tsv` (71 names)
House names were translated by meaning or with another transliteration than their owner
(`Stillwater Residence` 静水宅邸, but `Bertram Stillwater` 伯特·斯德渥; `Lotts' House` 洛茨之家, but
`Barbara Lotts` 芭芭拉·拉兹). The table gives the house name that matches the owner's name. All 71 old forms are
still in the 2.0 pack.

## 5. Texts that cannot be translated yet
- Monster attack types `Phys`, `Ener`, `Pois` (from `monster_data.txt`, shown in the monster info panel through
  `Engine::localize(pStats->attack1Type)`) are not in `templates/engine.pot`, so they stay English in every language.
  Suggested Chinese: 物理 / 能量 / 毒素.

## 6. Code
- `game/rules/maw/MawSkillRules.cpp`, Vitality tooltip: the legendary effects are appended as
  `"\n - <value>" + effect + "</>"` after `mawFillText` has run, so the raw `<value>` and `</>` tags are printed
  (English too). Passing that line through `mawFillText` fixes it.
- Our older patches in `../02-code-fixes` were written for 1.21; 2.0 already covers 0001, 0002 and the paralyse line
  of 0003 with `Engine::tr` / `Engine::localize`. Only the two points above remain.

Not checked by a native reader in game: this is a comparison of text files.

## 7. The machine drafts - `machine-drafts.reviewed.engine.po` (27 of 162 changed)
2.0 has 162 entries marked `machine translation (Claude), review` (145 in engine.po: battle orders, guard values,
loot settings, promotion and bounty lines; 17 in mm9.po). All 162 were read. 135 are fine as they are and can lose
the review mark. 27 are changed so their terms match the rest of our pack: Armor Class 防御等级 (not 护甲等级),
Unarmed 空手搏斗术, Armsmaster 武器使用术, sword / spear 长剑 / 长矛, mastery 精通等级 (not 掌握度),
Spell Points 魔法值, Antagarich 安塔格里克, Jadame 贾丹姆, Bounty hunt 悬赏追捕, Dungeon 地城, Blood 血液,
mastery letter M = 大. These follow the same wording as `terms.*.po`; if you keep the pack's current terms instead,
skip this file. The MM9 drafts use the same names as the rest of mm9.po (约维克, 乔加德, 马克尔) and need no change.
