# 2.8: NPC topic "keg of wine" shown in English

The game displays the topic as two lines, but engine.po (`npc_topic_text.txt:5783`, `Global.lua:15207`) has one msgid with both lines joined by "\n", so the lookup misses and the first line shows in English. This adds the two lines as separate msgids. If more topics show a first line in English, they probably have the same cause.
