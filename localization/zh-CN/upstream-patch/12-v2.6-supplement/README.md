# OpenYAMM 2.6: Chinese supplement

Drop-in file: `text/engine_zz-v2.6.po` (loads after `engine.po`, so it wins).

What it fills (114 entries that are empty or fuzzy in the 2.6 `engine.po`):

- New solo talents: Chaining Arrows 连锁箭, Power Shot 强力射击, Conditioning 体能训练, Spell Suppression 法术压制, Manathirst 嗜魔, and their effect lines.
- Upkeep potions and auto-brew (维持 / 炼制): the status messages, the Battle Orders panel, the Upkeep key tooltips.
- Loot filter rules panel (战利品筛选).
- Game speed cycling, the save-on-missing-map warning, two item effect lines.

Fixes to translations that exist but disagree with the English:

- Bloodthirst-style leech line: the floor is "÷5 less 0.5 a rank", not "÷4, ÷3, ÷2.5".
- Kill-streak talent: the stacks last 60 s, the Chinese said 30 s.
- Cleave-style burst line: was missing "in half a swing's recovery".

Left alone on purpose: placeholder/debug msgids (`dimensional_maps`, `well_known`, `openyamm:fx/...`, `x: %d  y: %d`), the credits names, the cipher text, and the blank MM6/MM7/MM9 test strings. Earlier supplements (09 to 11) are still needed for the strings the author has not taken yet.
