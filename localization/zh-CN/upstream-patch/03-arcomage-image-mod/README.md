# Arcomage Chinese sprite sheet (mod)

`mods/engine/icons_x2/sprites.png` replaces the Arcomage sprite sheet with Chinese labels
(Bricks/Gems/Recruits, tower, etc.). Drop the `mods` folder next to the game.

Technical note: the engine honors PNG alpha, but the blue (0,0,255) colour key is only applied to `.pcx`
paths, so this PNG carries real alpha (0) for the key pixels.
Not tested against 1.22 (built for 1.21) - please verify.
