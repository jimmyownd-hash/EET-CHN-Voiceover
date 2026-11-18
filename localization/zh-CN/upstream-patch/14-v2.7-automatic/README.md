# OpenYAMM 2.7: "Automatic"

`text/engine_zz-v2.7.po`: "Automatic" is 自动 (was 自动存档).

The same msgid is used by the alchemy bench (power of a potion used as an ingredient: choose it automatically) and by the save screen (kind of save slot). 自动存档 is right only in the second place. A neutral 自动 reads correctly in both. Better long term: a msgctxt for the save screen (`Engine::trc("save kind", "Automatic")`), then the save screen can say 自动存档 again.
