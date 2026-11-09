# zh-CN localization: contributions ready for upstream OpenYAMM

Hi pjasicek - this folder collects everything from our Simplified Chinese localization
(credit: 考拉粑粑, whom you already mention in language.yml) in a form you can take piece by piece,
whenever you want it. Nothing here is urgent; it is simply organized so you do not need to dig.
Every item says what it is and why it exists.

我们的汉化成果整理成可以直接给作者的形式。你想要时随时取用，不急。

## 01-term-patch - terminology patch for assets_dev/languages/zh-cn/text/engine.po
- `engine.batchA.po`: 1532 short entries (English text <= 40 chars) re-mapped to our terminology.
- `engine.all.po`: the above plus 147 longer entries (1679 total).
- `changes_A.tsv`, `changes_B.tsv`: per-entry list (English / current upstream translation / ours).

Why: our terminology was refined over many playtest rounds of MM6-8 (the v2.1 pack); the current
zh-cn pack differs in ~1900 entries. The most visible ones: equipment enchants and potion-style names
(e.g. `Fire Resistance` shows as "御火药剂" (a potion) where a stat is meant; ours: 火系抗性),
`End` translated as "结束" in the stat abbreviation context (should be 耐力 / Endurance), and consistent
skill names (武器使用术, 经商术, 洞察术 ...). Only entries with identical placeholders and no line
breaks were touched; dialogue is not included. Not verified in-game - treat as a candidate list and cherry-pick.

## 02-code-fixes - engine-side patches against OpenYAMM 1.21 (reference only)
- `0001-ui-translate-bench-effects-bounty.patch`: text composed in C++ before drawing was shown in English
  (crafting bench lines/slots/"N items", monster active-effect names, bounty boss affix). Fix: route via
  `UiText::translate`. In 1.22 this likely maps to `tr()` - please check whether these spots are covered.
- `0002-roster-join-chinese-topic-labels.patch`: story companions could not join ("no join event") because
  the topic label was compared against an English literal; with a translated label the match failed.
Also found: comparisons against English literals must stay English (e.g. ranged damage text `N/A`) when the
display string is translated separately.

## 03-arcomage-image-mod
Chinese Arcomage sprite sheet as a `mods/engine/icons_x2/sprites.png` override. See its README.

## 04-upstream-pack-issues
Issues we noticed in the current zh-cn pack (untranslated entries such as Promotion / "Your rest is interrupted.",
corrupted apostrophes in 22 source strings, a few placeholder mismatches) plus the full 1941-entry term
difference table.

## MM9
Chinese translations of the MM9 Chedian Guide pages (quests, promotions, travel, teachers, shops, bestiary,
items) are in `../guides/mm9/`, with a glossary. We kept the MM6-8 terminology so that MM9 text can be dropped
in quickly when MM9 lands.
