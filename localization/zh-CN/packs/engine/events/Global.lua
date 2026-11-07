-- generated from legacy EVT/STR

SetGlobalMetadata({
    onLoad = {},
    onLeave = {},
    openedChestIds = {
    },
    textureNames = {},
    spriteNames = {},
    castSpellIds = {3, 5, 8, 14, 17, 25, 36, 38, 51, 58, 69, 83},
    timers = {
    },
})

RegisterGlobalEvent(1, "Cataclysm", function()
    evt.SetMessage("诸位同行，我们正面临危难。\n但愿我们的师父能找到出路，带我们离开这片多灾之地，平安回到阿尔瓦。\n我不愿就此断送一生——哪怕这里是我的故乡。")
    SetQBit(QBit(232)) -- Set when you talk to S'ton
end)

RegisterGlobalEvent(2, "车队领袖", function()
    evt.SetMessage("达德洛斯带我们来这里，是为了和单牙蜥蜴人氏族交易托伯斯克果。\n他已经去和村长布拉克许·单牙谈了。\n你们或许该去找他？")
    SetQBit(QBit(232)) -- Set when you talk to S'ton
end)

RegisterGlobalEvent(3, "雷格那的海盗", function()
    evt.SetMessage("雷格那海盗威胁着贾丹姆的贸易与通行。\n几乎没有船敢出海，生怕被击沉……甚至更糟！\n我在渡鸦海滨时，确实听说有一小股走私者一直在海盗眼皮底下活动。\n真不知道他们是怎么做到的！")
    SetQBit(QBit(232)) -- Set when you talk to S'ton
end)

RegisterGlobalEvent(4, "Cataclysm", function()
    evt.SetMessage("这正是我在“毁灭预言”里读到的记载！“……一座火山将从海中升起，宛如利刃划出的伤口……”。你们必须想办法离开这些岛——就算不为商队，也要为自己！\n总得有人把这里发生的事告诉阿尔瓦的商业议会！\n他们必须知道这场大灾变和雷格那人的袭击！")
    evt.SetNPCTopic(2, 0, 20) -- Dadeross topic 0: Quest
end)

RegisterGlobalEvent(5, "Pirates", function()
    if not IsQBitSet(QBit(6)) then -- Pirate Leader in Dagger Wound Pirate Outpost killed (quest given at Q Bit 5). Ends pirate/lizardman war on Dagger Wound. Shuts off pirate timer.
        evt.SetMessage("来自恐怖的雷格那岛的海盗们正趁着大灾变及其造成的混乱，横行诸岛。\n一旦他们征服匕伤，就能把它当作前哨，直接进犯渡鸦海滨！\n必须通知阿尔瓦的商业议会！\n你们必须想办法到船上去，把消息带给他们！")
        return
    end
    evt.SetMessage("干得漂亮，解决了那些海盗。如今他们不在了，单牙酋长和他的族人也许能重建家园。这里发生的一切，实在是场惨剧。")
end)

RegisterGlobalEvent(6, "Caravan", function()
    if not IsQBitSet(QBit(6)) then -- Pirate Leader in Dagger Wound Pirate Outpost killed (quest given at Q Bit 5). Ends pirate/lizardman war on Dagger Wound. Shuts off pirate timer.
        evt.SetMessage("要把整支商队渡回渡鸦海滨，得动用好几条船，或者一条船来回很多趟。\n只要匕伤群岛周围的海面上还有雷格那海盗，这事就办不成。\n你们最好回阿尔瓦去，把雷格那人来袭的事告诉议会。\n他们会派援军来救我们！")
        return
    end
    evt.SetMessage("可悲的是，商队是海盗劫掠时最先抢走的东西之一。我真不知道他们要那三百箱托伯斯克果做什么！我自然想念那些果子，但最糟的是他们把车也毁了。看样子至少下个季度我都得留在这儿督修。只但愿在下次托伯斯克收获前能完工，别让这趟血本无归的买卖白忙一场。")
end)

RegisterGlobalEvent(7, "Cataclysm", function()
    if not IsQBitSet(QBit(6)) then -- Pirate Leader in Dagger Wound Pirate Outpost killed (quest given at Q Bit 5). Ends pirate/lizardman war on Dagger Wound. Shuts off pirate timer.
        evt.SetMessage("半夜里大地忽然震动！\n燃烧的巨石从天而降！\n我的族人死伤惨重！\n村庄损毁严重。\n连接小岛与主岛的桥全被毁了。\n我们被困在主岛上，无法去小岛上救援那些可能受伤的人。\n许多亲友下落不明。\n我们到不了有船坞的岛，也就没法向渡鸦海滨求援。我甚至不知道还有没有船幸存！")
        return
    end
    evt.SetMessage("巨浪、落石，再加上海盗的袭击，我不知道我们的村庄还能不能恢复原样。我知道你们为我们做了很多，但有些东西一旦破碎就再也修不好。我也不知道我们今后怎么办。也许重建，也许离开。就交给时运吧。")
end)

RegisterGlobalEvent(8, "岩石传送门", function()
    evt.SetMessage("很久以前，我的族人靠“石头传送门”在各岛间快速往来，但我们早已遗失了它们的运转之法。如今只有连接村庄与西南田野的那一对还能用。桥一毁，我们就被困在岛上了！")
    evt.SetNPCTopic(1, 1, 21) -- Brekish Onefang topic 1: Quest
end)

RegisterGlobalEvent(9, "佛得瑞克·塔力米尔", function()
    evt.SetMessage("一位名叫弗雷德里克·泰利米尔的牧师，过去几年一直和我们住在一起。\n他一直在研究石头传送门和那座废弃神殿的外围废墟。\n也许他懂得怎么让传送门重新运转！\n找到他，请他帮忙！")
end)

RegisterGlobalEvent(10, "岩石传送门", function()
    evt.SetMessage("啊，对……“那些传送门”。多年来我一直在研究它们，以及建造它们的失落文明。它们早在蜥蜴人居住于这些岛之前就建成了，是各岛之间瞬时通行的手段。可悲的是，运转所需的能量水晶如今极为稀缺。")
end)

RegisterGlobalEvent(11, "Cataclysm", function()
    evt.SetMessage("火山喷发的第一夜，我走到海边，想看看能否见到什么。我不能确定，但随着火山不断喷发，我觉得自己看到有土元素在遍布熔岩的山脚下游荡。")
end)

RegisterGlobalEvent(12, "能量石", function()
    evt.SetMessage("这么说单牙酋长把他一直保存的那块能量石给了你！它能给岛西南端的传送门供能。使用时，踏上传送门的同时，在脑中默念那块石头的模样即可。")
    evt.ForPlayer(Players.All)
    SetAutonote(492) -- Brought Power Stone to Fredrick Talimere.
    AddValue(Experience, 1500)
    ClearQBit(QBit(7)) -- Bring Brekish Onefang's portal crystal to Fredrick Talimere. - Brekish Onefang asks player to bring a power crystal to Fredrick Talimere
    SetQBit(QBit(8)) -- Fredrick Talimere visited by player with crystal in their possesion.
    evt.SetNPCTopic(28, 2, 602) -- Fredrick Talimere topic 2: Roster Join Event
    evt.SetNPCTopic(1, 2, 0) -- Brekish Onefang topic 2 cleared
end)
RegisterCanShowTopic(12, function()
    evt._BeginCanShowTopic(12)
    local visible = true
    if HasItem(617) then -- Power Stone
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(13, "废弃神庙", function()
    evt.SetMessage("那座失落文明所建神殿的废墟，就在主岛西北边的小岛上。我没敢去探——危险的爬行动物把它当成了巢穴。我怀疑神殿通向一条水下隧道，出口在西北岛的船坞附近。桥断之后，那条隧道也许是到达船坞、乘船逃生的唯一途径！")
end)

RegisterGlobalEvent(14, "Quest", function()
    if not IsQBitSet(QBit(138)) then -- Found Isthric the Tongue
        evt.SetMessage("我弟弟“巧舌”伊斯西里克去小岛上查看托伯斯克植株。\n他还没回来！\n我怕他也被困在大灾变中。他说不定还受了伤！\n要是你们能修好石头传送门，他就能回来，我们也能向需要帮助的人求援！\n替我找到他！")
        SetQBit(QBit(137)) -- Find Isthric the Tongue, brother of Rohtnax. Return to Rohtnax in the village of Blood Drop on Dagger Wound Island.
        return
    end
    evt.SetMessage("你们找到了伊斯西里克，还告诉他怎么回家了？\n阿尔瓦的商人，我们真的欠你们一份人情！\n我会在布拉克许·单牙酋长面前替你们美言。\n请收下这些治疗伤口的药水作为谢礼。")
    evt.ForPlayer(Players.All)
    AddValue(Experience, 750)
    evt.ForPlayer(Players.Member0)
    AddValue(InventoryItem(222), 222) -- Cure Wounds
    AddValue(InventoryItem(222), 222) -- Cure Wounds
    ClearQBit(QBit(137)) -- Find Isthric the Tongue, brother of Rohtnax. Return to Rohtnax in the village of Blood Drop on Dagger Wound Island.
    evt.ForPlayer(Players.All)
    SetAward(Award(54)) -- Rescued Isthric the Tongue, brother of Rohtnax, on the Dagger Wound Islands.
    evt.SetNPCTopic(29, 0, 0) -- Rohtnax topic 0 cleared
end)

RegisterGlobalEvent(15, "岩石传送门", function()
    if not IsQBitSet(QBit(1)) then -- Activate Area 1 teleporters 3 and 4.
        evt.SetMessage("我祖母从前常给我们讲古时候的事，那时石头传送门是各岛间的主要通路。\n她说，传送门的钥匙在雷格那海盗最早的一次袭击中失落了。\n要是石头传送门还能用，我弟弟伊斯西里克就能回到主岛了！")
        return
    end
    evt.SetMessage("你们修好了石头传送门？\n真是天大的好消息！\n快去找我弟弟伊斯西里克，叫他回家！")
end)

RegisterGlobalEvent(16, "佛得瑞克·塔力米尔", function()
    evt.SetMessage("那个粗鲁的男人？\n他只关心那座废弃神殿，对身边的世事一概不闻不问！\n我祖母早就警告过他，那座神殿是至邪之地。\n他从来不听。\n如今祖母不在了，除了布拉克许·单牙，再没人记得从前的事。")
end)

RegisterGlobalEvent(17, "火之山", function()
    evt.SetMessage("我们触怒了先祖！\n不然他们为何要召来这座火山！\n预言里说过，有朝一日海洋会沸腾！\n这就是末日的开端！")
end)

RegisterGlobalEvent(18, "Prophecies", function()
    evt.SetMessage("有许多预言都讲到贾丹姆乃至整个世界的毁灭！\n 多数预言说，世界终将被创造它的力量吞噬。\n也许是先祖决定把我们全部抹去！")
end)

RegisterGlobalEvent(19, "Quest", function()
    evt.ForPlayer(Players.All)
    if not HasItem(652) then -- Prophecies of the Snake
        evt.SetMessage("有一则“巨蛇预言”，我一直找不到抄本。\n我想它或许最能揭示贾丹姆的未来。牧师弗雷德里克·泰利米尔跟我提过巨蛇废墟和那座废弃神殿。\n他和我看法一致：那则预言的抄本也许就藏在神殿某处。\n你们能替我找到吗？")
        SetQBit(QBit(135)) -- Find the Prophecies of the Snake for Pascella Tisk.
        return
    end
    evt.SetMessage("你们找到了巨蛇预言！\n也许我们未来的细节就写在它的文字里！\n请收下这份谢礼，感谢你们的帮助！")
    RemoveItem(652) -- Prophecies of the Snake
    ClearQBit(QBit(135)) -- Find the Prophecies of the Snake for Pascella Tisk.
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 750)
    evt.SetNPCTopic(30, 1, 0) -- Pascella Tisk topic 1 cleared
end)

RegisterGlobalEvent(20, "Quest", function()
    if not IsQBitSet(QBit(3)) then -- Deliver Dadeross' Letter to Elgar Fellmoon at the Merchant House in Ravenshore. - Given by Dadeross in Dagger Wound. Taken by Fellmoon in Ravenshore.
        evt.SetMessage("你们必须想办法离开这些岛。总得有人把这里发生的事禀报我们的主人——阿尔瓦的商人！\n他们必须知道这场大灾变和雷格那人的袭击！我写了一封信给阿尔瓦商人在渡鸦海滨的代表埃尔加·费尔姆恩。信里说明了我们的处境。要说谁能指点我们该怎么办，那就是费尔姆恩。立刻把信交给他。")
        evt.SetNPCGreeting(2, 8) -- Dadeross greeting: What are you doing here? Get my letter to Fellmoon!
        AddValue(InventoryItem(741), 741) -- Dadeross' Letter to Fellmoon
        SetQBit(QBit(221)) -- Dadeross' Letter to Fellmoon - I lost it, taken event g 28
        SetQBit(QBit(3)) -- Deliver Dadeross' Letter to Elgar Fellmoon at the Merchant House in Ravenshore. - Given by Dadeross in Dagger Wound. Taken by Fellmoon in Ravenshore.
        ClearQBit(QBit(85)) -- Find Dadeross, the Minotaur in charge of your merchant caravan. When you saw him last, he was going to talk to the village clan leader. - Given at the start of the game, taken by dadeross when he gives you the deliver letter quest.
        return
    end
    evt.SetMessage("你必须把我的信送到渡鸦海滨，交给埃尔加·费尔姆恩！")
end)
RegisterCanShowTopic(20, function()
    evt._BeginCanShowTopic(20)
    local visible = true
    if IsQBitSet(QBit(4)) then -- Letter from Q Bit 3 delivered.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(21, "Quest", function()
    if not IsQBitSet(QBit(7)) then -- Bring Brekish Onefang's portal crystal to Fredrick Talimere. - Brekish Onefang asks player to bring a power crystal to Fredrick Talimere
        evt.SetMessage("把这块水晶带给弗雷德里克·泰利米尔。我知道它和石头传送门有关。也许他能告诉你它是怎么工作的。")
        AddValue(InventoryItem(617), 617) -- Power Stone
        SetQBit(QBit(212)) -- Power Stone - I lost it
        SetQBit(QBit(7)) -- Bring Brekish Onefang's portal crystal to Fredrick Talimere. - Brekish Onefang asks player to bring a power crystal to Fredrick Talimere
        evt.SetNPCTopic(28, 2, 12) -- Fredrick Talimere topic 2: Power Stone
        evt.SetNPCTopic(28, 3, 13) -- Fredrick Talimere topic 3: Abandoned Temple
        return
    end
    evt.SetMessage("把传送门水晶带给弗雷德里克·泰利米尔。他会知道它的用途。")
end)
RegisterCanShowTopic(21, function()
    evt._BeginCanShowTopic(21)
    local visible = true
    if IsQBitSet(QBit(8)) then -- Fredrick Talimere visited by player with crystal in their possesion.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(22, "如何晋升为暗精尊者", function()
    evt.SetMessage("商业议会派我们最伟大的战士考瑞·黑刺去，就席卷整个贾丹姆的灾难向太阳神殿的祭司请教。\n阿尔瓦一传来大灾变的流言，考瑞就动身前往低语森林的太阳神殿了。\n她本该在请教祭司之后回来。\n她至今未归，我们非常担心。至于你的晋升，只有考瑞能准确考验你的本领、评定你是否够格。\n若找到她，就尽力协助她，并把她的近况和下落带回来。")
    SetQBit(QBit(39)) -- Find Cauri Blackthorne then return to Dantillion in Murmurwoods with information of her location. - Dark Elf Promotion to Patriarch
    evt.SetNPCTopic(39, 0, 31) -- Relburn Jeebes topic 0: Where is Cauri?
end)

RegisterGlobalEvent(23, "考瑞·黑王座", function()
    if IsQBitSet(QBit(1537)) then -- Promoted to Elf Patriarch.
        evt.SetMessage("考丽回来了，告诉了我们你给予她的帮助。\n她还通知我们你的晋升。\n恭喜，愿你的利润给你带来快乐！")
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 15000)
        evt.SetNPCTopic(39, 1, 0) -- Relburn Jeebes topic 1 cleared
        return
    elseif HasAward(Award(20)) then -- Rescued Cauri Blackthorne.
        evt.SetMessage("考丽回来了，告诉了我们你给予她的帮助。\n她还通知我们你的晋升。\n恭喜，愿你的利润给你带来快乐！")
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 15000)
        evt.SetNPCTopic(39, 1, 0) -- Relburn Jeebes topic 1 cleared
    else
        evt.SetMessage("这是考瑞-黑王座的家，她是最伟大的黑暗精灵战士。\n她目前外出，在为阿尔瓦商人议会办事。\n也许你们该去问他们她的下落。")
    end
end)

RegisterGlobalEvent(24, "多谢！", function()
    evt.SetMessage("谢谢你们帮忙解决石化巨蜥诅咒。\n通常我对付那些恶臭蜥蜴很有准备，可这次数量实在太多。\n太阳神庙让我来查看几名在这一带寻找德鲁伊石圈的朝圣者。\n我找到第一尊雕像时，就明白了朝圣者出了什么事。\n我自己原先不知道这一带石化巨蜥数量增加了。\n它们似乎被什么惊扰了。\n我正要去调查德鲁伊石圈，石化巨蜥就袭击了我。")
end)

RegisterGlobalEvent(25, "Patriarch", function()
    evt.SetMessage("::考丽审视着你队伍里的黑暗精灵们::要救我，你们一定研究过我的行踪，调查过我到过的地方。\n这表明你们具备在这世界和生意上取得成功所需的智慧。\n要到我遇袭的地方，你们必须有与石化巨蜥及其他威胁战斗的本领，证明你们作为战士的勇武。\n正当谈判破裂时，战斗技巧必不可少。\n来找我请求晋升，表明你们有渴望，没有渴望，成功永远抓不住。\n你们具备获得暗精尊者头衔所需的一切品质。\n我回去后会通知议会。\n能再与你们同行，是我的荣幸。\n你们可以在渡鸦海滨的酒馆找到我。")
    for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 8) then
            SetValue(ClassId, 9)
            AddValue(Experience, 35000)
            SetQBit(QBit(1537)) -- Promoted to Elf Patriarch.
        else
            AddValue(Experience, 25000)
            SetAward(Award(20)) -- Rescued Cauri Blackthorne.
        end
    end
    ClearQBit(QBit(39)) -- Find Cauri Blackthorne then return to Dantillion in Murmurwoods with information of her location. - Dark Elf Promotion to Patriarch
    SetQBit(QBit(40)) -- Found and Rescued Cauri Blackthorne
    SetQBit(QBit(430)) -- Roster Character In Party 31
    evt.SetNPCTopic(42, 1, 38) -- Cauri Blackthorne topic 1: Thanks for your help!
end)

RegisterGlobalEvent(26, "岩石圈", function()
    evt.SetMessage("我得为太阳神庙进一步调查石圈。\n希望不是所有朝圣者都落得这种下场。希望有幸存者！\n有什么东西惊扰了这一带的生物，我想源头就在石圈里。")
end)

RegisterGlobalEvent(27, "考瑞·黑王座", function()
    if IsQBitSet(QBit(39)) then -- Find Cauri Blackthorne then return to Dantillion in Murmurwoods with information of her location. - Dark Elf Promotion to Patriarch
        evt.SetMessage("考瑞-黑王座一个多星期前来过这儿，也许更久。\n她问了我们许多关于元素入侵的问题。\n我们把手里的情报都给了她。\n她说她会带着这些情报回阿尔瓦。\n她离开前，我们请她帮个忙。\n我们请她顺路照看一群朝圣者，他们要去我们东北边那座古老的德鲁伊石圈。\n她答应在回阿尔瓦的路上顺路看看他们。")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(InventoryItem(339), 339) -- Stone to Flesh
        end
        evt.SetNPCTopic(41, 0, 26) -- Dantillion  topic 0: Circle of Stone
        return
    elseif IsQBitSet(QBit(40)) then -- Found and Rescued Cauri Blackthorne
        ClearQBit(QBit(39)) -- Find Cauri Blackthorne then return to Dantillion in Murmurwoods with information of her location. - Dark Elf Promotion to Patriarch
    else
        evt.SetMessage("考瑞-黑王座一个多星期前来过这儿，也许更久。\n她问了我们许多关于元素入侵的问题。\n我们把手里的情报都给了她。\n她说她会带着这些情报回阿尔瓦。\n她离开前，我们请她帮个忙。\n我们请她顺路照看一群朝圣者，他们要去我们东北边那座古老的德鲁伊石圈。\n她答应在回阿尔瓦的路上顺路看看他们。")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            AddValue(InventoryItem(339), 339) -- Stone to Flesh
        end
    end
evt.SetNPCTopic(41, 0, 26) -- Dantillion  topic 0: Circle of Stone
return
end)

RegisterGlobalEvent(28, "Letter", function()
    evt.ForPlayer(Players.All)
    if not HasItem(741) then -- Dadeross' Letter to Fellmoon
        evt.SetMessage("你来找我，说有我商队领队的信。那么，信在哪儿？要是真那么重要，你路上就该更小心别把它弄丢了！")
        return
    end
    evt.SetMessage("这是什么？商队领队达德洛斯的信？我看看……嗯……看来有大事在酝酿。真可惜——匕伤发生的事。也许得采取严厉行动，可我需要更多情报……而且我知道怎么弄到！也许你有兴趣帮我？我当然会酬谢你。来。拿这个当你送达德洛斯这封信的报酬。")
    evt.SetNPCTopic(3, 0, 29) -- Elgar Fellmoon topic 0: Quest
    evt.SetNPCGreeting(2, 58) -- Dadeross greeting: Hail, adventurer!
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(3)) -- Deliver Dadeross' Letter to Elgar Fellmoon at the Merchant House in Ravenshore. - Given by Dadeross in Dagger Wound. Taken by Fellmoon in Ravenshore.
    SetQBit(QBit(4)) -- Letter from Q Bit 3 delivered.
    RemoveItem(741) -- Dadeross' Letter to Fellmoon
    ClearQBit(QBit(221)) -- Dadeross' Letter to Fellmoon - I lost it, taken event g 28
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 2500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 7500)
    SetAutonote(494) -- Delivered Dadeross' Letter to Elgar Fellmoon.
end)

RegisterGlobalEvent(29, "Quest", function()
    if IsQBitSet(QBit(12)) then -- Quest 11 is done.
        evt.SetMessage("你必须赶到阿尔瓦的巴斯沈·卢德林那儿。快去！必须把近来的事通知他！")
        return
    elseif IsQBitSet(QBit(24)) then -- Received Reward from Elgar Fellmoon for completing quest 9.
        evt.SetMessage("你们也许知道，我们行会总部在阿尔瓦城。你们若没去过，最容易的路就是沿河向上穿过北边峡谷。\n去行会会馆找巴斯沈·卢德林。把水晶和传闻的事告诉他。劳德林会知道怎么办。")
        SetQBit(QBit(11)) -- Report to Bastian Loudrin, the merchant guildmaster in Alvar. - Given By Elgar Fellmoon (w503, area 2). Taken by Bastian Loudrin (area 3).
        return
    elseif IsQBitSet(QBit(10)) then -- Letter from Q Bit 9 delivered.
        evt.SetMessage("很好，这是我们说好的报酬。危机期间，亨特的船对我们会很有用。\n对，我说的就是‘危机’！自从你们初次来访，又有好几支商队没按预定站点停靠。还有那些传闻。我两次听说沙漠里升起一片燃烧的火湖。\n火山！火湖！我担心那神秘水晶与此有关。无论如何，必须通知阿尔瓦的行会领袖！")
        evt.ForPlayer(Players.All)
        SetAutonote(493) -- Blackmailed the Wererat Smugglers.
        AddValue(Experience, 12000)
        SetQBit(QBit(24)) -- Received Reward from Elgar Fellmoon for completing quest 9.
        ClearQBit(QBit(284)) -- Return to Fellmoon in Ravenshore and report your success in blackmailing the wererat smuggler, Arion Hunter.
        return
    elseif IsQBitSet(QBit(9)) then -- Deliver Fellmoon's blackmail letter to Arion Hunter, leader of the wererat smugglers. Report back to Fellmoon. - Given and taken by Elgar Fellmoon (w503, area 2).
        evt.SetMessage("听着。我们需要那些船！把我的信送给艾瑞安·韩特。忘了？他的巢穴在西边沿海往上！")
    else
        evt.SetMessage("本地走私犯有渡鸦海滨最快的船。我的手下若能用这些船，就能沿海岸上下快速侦察，好弄清达德洛斯信里提到的灾难范围。\n来。把这封信带给走私头子艾瑞安·韩特。我敢说它会‘说服’他出借手下。他的巢穴在西边沿海往上。\n哦，差点忘了。那些走私犯——他们是鼠人——你知道他们的德行。亨特可以讲道理，但他的手下若不太文明，别惊讶。")
        SetQBit(QBit(9)) -- Deliver Fellmoon's blackmail letter to Arion Hunter, leader of the wererat smugglers. Report back to Fellmoon. - Given and taken by Elgar Fellmoon (w503, area 2).
        AddValue(InventoryItem(742), 742) -- Blackmail Letter
        SetQBit(QBit(222)) -- Blackmail Letter - I lost it, taken event g 32
        evt.SetNPCGreeting(3, 11) -- Elgar Fellmoon greeting: Have you done as I've asked of you?
    end
return
end)

RegisterGlobalEvent(30, "黑王座的居所", function()
    if not IsQBitSet(QBit(40)) then -- Found and Rescued Cauri Blackthorne
        evt.SetMessage("这是考瑞-黑王座的家，她是最伟大的黑暗精灵战士。\n她目前外出，在为阿尔瓦商人议会办事。\n也许你们该去问他们她的下落。")
        return
    end
    evt.SetMessage("考丽回来了，告诉了我们你给予她的帮助。\n她还通知我们你的晋升。\n恭喜，愿你的利润给你带来快乐！")
end)

RegisterGlobalEvent(31, "考瑞在哪里？", function()
    evt.SetMessage("你们找到考丽了吗？\n我们真的很想知道她出了什么事！\n没有她，我们都残缺了！")
end)
RegisterCanShowTopic(31, function()
    evt._BeginCanShowTopic(31)
    local visible = true
    if IsQBitSet(QBit(40)) then -- Found and Rescued Cauri Blackthorne
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(32, "Blackmail", function()
    evt.SetMessage("你们为了送封信，把我的守卫弄成那样！让我看看……嗯……费尔蒙想要我的船？绝不！我……什么！……他威胁我的伊拉贝尔……我……我……唉……很、很好。你可以告诉费尔蒙，他可以用我的船。我想阿尔瓦商人想要什么，是没法拒绝的。")
    evt.ForPlayer(Players.All)
    SetQBit(QBit(10)) -- Letter from Q Bit 9 delivered.
    ClearQBit(QBit(9)) -- Deliver Fellmoon's blackmail letter to Arion Hunter, leader of the wererat smugglers. Report back to Fellmoon. - Given and taken by Elgar Fellmoon (w503, area 2).
    SetQBit(QBit(284)) -- Return to Fellmoon in Ravenshore and report your success in blackmailing the wererat smuggler, Arion Hunter.
    RemoveItem(742) -- Blackmail Letter
    ClearQBit(QBit(222)) -- Blackmail Letter - I lost it, taken event g 32
    evt.SetNPCTopic(4, 0, 33) -- Arion Hunter topic 0: Smuggler Boats
    AddValue(History(3), 0)
    ClearQBit(QBit(231)) -- The were-rats are mad at you
end)
RegisterCanShowTopic(32, function()
    evt._BeginCanShowTopic(32)
    local visible = true
    if HasItem(742) then -- Blackmail Letter
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(33, "走私者的船", function()
    evt.SetMessage("我的货可不是那种愿意让港口官员检查的货，所以我的船必须、也确实是贾丹姆海岸上最快的。它们连雷加德桨帆船都跑得过！它们从这儿往西开到残破镇，往东开到阴影塔。")
end)

RegisterGlobalEvent(34, "古代巨魔之家", function()
    evt.SetMessage("远古巨魔传说讲我们并不一直住在这荒凉地区。\n传说讲有一个安静祥和的地方。\n我们被石头诅咒赶出了那里。\n于是几百年来我们住在这铁沙之上。\n如今看来，我们连这儿也要待不下去了。\n不断蔓延的火海毁了我村子大半。\n许多亲友亡故。\n这也许真的是我氏族的终结。\n我们族人有句俗话：‘一件事物只要被记得，就还活着。’\n只要我记得我们的故乡，它就永远在那儿等我们回去。\n只需要找到它。")
end)

RegisterGlobalEvent(35, "Quest", function()
    evt.SetMessage("也许你们能找到我们先前的故乡，看看石头诅咒是否还在。\n若还在，也许有办法解除它。\n你们队伍里任何完成这件事的巨魔，都会被晋升为我们氏族的战斗巨魔。这个头衔附带许多荣誉，你们也将作为传奇英雄被我们永远铭记。\n我们的一位战士达丁·沙行者已出发去找那地方。\n他原以为会在残破镇的石头旷野里找到线索。\n也许你们能在那儿找到他、一起行动——至少找到把你们引向目标的线索。")
    SetQBit(QBit(68)) -- Find the Ancient Troll Homeland and return to Volog Sandwind in the Ironsand Desert. - Given By ? In area 4
    evt.SetNPCTopic(43, 0, 40) -- Volog Sandwind topic 0: Ancient Home
end)

RegisterGlobalEvent(36, "找到了古代巨魔之家！", function()
    evt.SetMessage("你们找到我们的古老故乡了？\n它在低语森林西部？\n这是好消息。\n也许还来得及迁移我的人民。\n不幸的是，元素威胁必须先解决，否则谁都不安全！\n你们中间所有巨魔已晋升为战斗巨魔，他们的名字将永远留在我们的歌里。\n我会把我会的本领教给你们其余人，也许足以帮你们拯救整个贾丹姆。")
    for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 38) then
            SetValue(ClassId, 39)
            AddValue(Experience, 35000)
            SetQBit(QBit(1538)) -- Promoted to War Troll.
        else
            AddValue(Experience, 25000)
            SetQBit(QBit(1539)) -- Found Troll Homeland.
        end
    end
    ClearQBit(QBit(68)) -- Find the Ancient Troll Homeland and return to Volog Sandwind in the Ironsand Desert. - Given By ? In area 4
    evt.SetNPCTopic(43, 1, 612) -- Volog Sandwind topic 1: Roster Join Event
end)
RegisterCanShowTopic(36, function()
    evt._BeginCanShowTopic(36)
    local visible = true
    if IsQBitSet(QBit(69)) then -- Ancient Troll Homeland Found
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(37, "岩石的诅咒", function()
    evt.SetMessage("你们是被派来找巨魔古老故乡的？\n欢迎你们帮忙！\n我没辙了；我循到这地区的线索走进了死胡同。\n这儿没人知道我们传说里提到的石头诅咒。\n食人魔法师佐格一点用也没有。\n我能从他要塞活着逃出来算走运。不过，他也许无意中帮了忙！\n我一提石头诅咒，他说我再烦他，他一定把我和他养的石化巨蜥关在一起！\n石化巨蜥在低语森林出没！")
end)

RegisterGlobalEvent(38, "多谢你的帮助！", function()
    evt.SetMessage("再一次谢谢你们帮忙对付石化巨蜥诅咒！\n快回阿尔瓦！\n我们必须尽一切努力拯救贾丹姆。")
end)

RegisterGlobalEvent(39, "多谢你的帮助！", function()
    evt.SetMessage("谢谢你们找到我们的古老故乡，等贾丹姆的威胁解决了，我们就能开始迁回去！")
end)

RegisterGlobalEvent(40, "古代巨魔之家", function()
    evt.SetMessage("你们为我们氏族找到古老故乡了吗？\n没有它的位置，我的人民必死无疑！")
end)
RegisterCanShowTopic(40, function()
    evt._BeginCanShowTopic(40)
    local visible = true
    if IsQBitSet(QBit(68)) then -- Find the Ancient Troll Homeland and return to Volog Sandwind in the Ironsand Desert. - Given By ? In area 4
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(41, "送上报告", function()
    evt.SetMessage("匕伤也遭了灾？这确实令人不安。要是相信所有传闻，还以为整个贾丹姆都在动荡混乱。\n我真希望知道更多。我靠商队领队提供消息，可这个月本该到这儿的人都没来。我听到的事让我不安。飓风、洪水，如今又火山！我听到最糟的是铁沙漠里出现了一片火海——而且来自多个消息源。\n不知渡鸦海滨这块水晶是否与此有关。它在灾难开始时出现，似乎不仅仅是巧合。")
    ClearQBit(QBit(11)) -- Report to Bastian Loudrin, the merchant guildmaster in Alvar. - Given By Elgar Fellmoon (w503, area 2). Taken by Bastian Loudrin (area 3).
    SetQBit(QBit(12)) -- Quest 11 is done.
    evt.SetNPCTopic(5, 0, 42) -- Bastian Loudrin topic 0: Quest
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 2000)
end)
RegisterCanShowTopic(41, function()
    evt._BeginCanShowTopic(41)
    local visible = true
    if IsQBitSet(QBit(11)) then -- Report to Bastian Loudrin, the merchant guildmaster in Alvar. - Given By Elgar Fellmoon (w503, area 2). Taken by Bastian Loudrin (area 3).
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(42, "Quest", function()
    if not IsQBitSet(QBit(25)) then -- Find a witness to the lake of fire's formation. Bring him back to the merchant guild in Alvar. - Given and taken by Bastian Lourdrin (area 3).
        evt.SetMessage("这一切动荡严重影响我们行会生意。我需要更多情报，可我被流言传闻淹没了。\n许多人跟我讲铁沙漠那片火海。这故事我听多了，几乎信以为真。证实或否认那湖存在，对我帮助极大。\n你们若愿为我效劳，就去铁沙漠找那湖。若它真在那儿，给我找一个亲眼见它出现的人。把他带回这儿，我要亲自听他讲。")
        SetQBit(QBit(25)) -- Find a witness to the lake of fire's formation. Bring him back to the merchant guild in Alvar. - Given and taken by Bastian Lourdrin (area 3).
        AddValue(History(4), 0)
        evt.MoveNPC(7, 752) -- Overdune Snapfinger -> Overdune's House
        evt.MoveNPC(47, 752) -- Farhill Snapfinger -> Overdune's House
        return
    end
    if HasPlayer(4) then -- Overdune Snapfinger
        evt.SetMessage("哎呀，你把事情弄成什么样了！我叫你给我找铁沙漠事件的目击者，我以为不言自明你得把他好好地带回来！你看看这可怜的巨魔！带他去神庙把他修好。\n而且拜托……记住你是为行会办事。我们好歹还有个办事利落的名声。")
        return
    elseif IsQBitSet(QBit(60)) then -- Party visits Ironsand After QuestBit 25 set.
        evt.SetMessage("好吧，看来是真的。想想……一片火湖。可我的目击者呢？我得跟亲眼见它形成的人谈谈。这事很重要……原因我现在不愿跟你讨论。\n给我找个见过火湖诞生的人！去巨魔村子铁锈镇找找看。")
    else
        evt.SetMessage("我必须更多了解铁沙漠发生的事。我不能再靠传闻了。传闻我已经够多了。\n我要你真的去那儿。沙漠在东边，要走几天。")
    end
end)

RegisterGlobalEvent(43, "Quest", function()
    if IsQBitSet(QBit(19)) then -- Allied with Necromancers Guild. Steal Nightshade Brazier done.
        if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
            if IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
                evt.SetMessage("很好……或者说，至少好得符合预期。你设法拉了三家盟友加入联盟——我的顾问告诉我，最少三家就足以实现预言中‘……贾丹姆必须团结一致……’那部分。可惜不能更多，可灾难事件显然正在走向高潮。是时候继续前进了。\n你必须去渡鸦海滨，与聚集在那儿的联盟议会会面。与他们一起决定应对元素危机的下一步。")
                return
            end
            evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
            return
        elseif IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
            if IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
                evt.SetMessage("很好……或者说，至少好得符合预期。你设法拉了三家盟友加入联盟——我的顾问告诉我，最少三家就足以实现预言中‘……贾丹姆必须团结一致……’那部分。可惜不能更多，可灾难事件显然正在走向高潮。是时候继续前进了。\n你必须去渡鸦海滨，与聚集在那儿的联盟议会会面。与他们一起决定应对元素危机的下一步。")
                return
            end
            evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
            return
        else
            evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
            return
        end
    elseif IsQBitSet(QBit(20)) then -- Allied with Temple of the Sun. Destroy the Skeleton Transformer done.
        if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
            if IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
                evt.SetMessage("很好……或者说，至少好得符合预期。你设法拉了三家盟友加入联盟——我的顾问告诉我，最少三家就足以实现预言中‘……贾丹姆必须团结一致……’那部分。可惜不能更多，可灾难事件显然正在走向高潮。是时候继续前进了。\n你必须去渡鸦海滨，与聚集在那儿的联盟议会会面。与他们一起决定应对元素危机的下一步。")
                return
            end
            evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
            return
        elseif IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
            if IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
                evt.SetMessage("很好……或者说，至少好得符合预期。你设法拉了三家盟友加入联盟——我的顾问告诉我，最少三家就足以实现预言中‘……贾丹姆必须团结一致……’那部分。可惜不能更多，可灾难事件显然正在走向高潮。是时候继续前进了。\n你必须去渡鸦海滨，与聚集在那儿的联盟议会会面。与他们一起决定应对元素危机的下一步。")
                return
            end
            evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
            return
        else
            evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
            return
        end
    else
        evt.SetMessage("你们必须结成联盟，对抗我们面临的毁灭！争取死灵法师公会、太阳神庙、残破镇牛头人、绞刑峡谷巨龙，以及绞刑峡谷查尔斯·科切特的屠龙队的支持。我知道你会发现让他们全部同意合作根本不可能，但你仍必须尽力。\n我们的贤者告诉我，若想在这预言时代活下来，我提到的势力中至少三家必须同意合作。去把这件事办成。你若珍视这个世界和你们的性命，就快去！")
        return
    end
end)

RegisterGlobalEvent(44, "干的好", function()
    evt.SetMessage("你做成了我原以为不可能的事。尽管时势飘摇，你能把贾丹姆的几大势力联合起来，已是我们存续的关键一步。好了，我能做的都做了，这片土地的防御就交给联盟议会吧。但愿我在渡鸦海滨给他们安排的住处还算体面——那边的会馆不算我们最奢华的。不过我想议会设在水晶附近最好。祝你和他们好运！")
end)

RegisterGlobalEvent(45, "火湖", function()
    evt.SetMessage("是的，火湖初次出现时我就在这儿。沙漠平原上、村子外头凭空出现了一道奇异的门。你看到的火就是从里面涌出来的。火势像泼在地上的水一样蔓延开。一道火墙扑过村沿。我的族人几乎瞬间丧尽。村子如今的模样，你都看到了。这一切发生时，我正在村外的高地上守望。我全看见了，却几乎不敢相信。")
    evt.SetNPCTopic(7, 0, 46) -- Overdune Snapfinger topic 0: Come to Alvar
end)

RegisterGlobalEvent(46, "来阿尔瓦", function()
    if IsQBitSet(QBit(62)) then -- Vilebites Ashes (item603) placed in troll tomb.
        evt.SetMessage("你帮了我家大忙。把他的骨灰安放进村墓的圣所，毒牙便能安息了。我父亲也好多了。我们谈过了，我想如今他能照顾自己，我可以随你去阿尔瓦。")
        SetQBit(QBit(63)) -- Quest 61 done.
        ClearQBit(QBit(61)) -- Put Vilebite's ashes in the Dust village tomb then return to Overdune. - Given and taken by Overdune, NPC 7, w177.
        evt.ForPlayer(Players.All)
        SetAutonote(495) -- Placed Vilebite's ashes in the Troll Tomb.
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 7500)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 20000)
        evt.SetNPCTopic(7, 0, 604) -- Overdune Snapfinger topic 0: Roster Join Event
        evt.SetNPCGreeting(47, 18) -- Farhill Snapfinger greeting: Th-thank you for giving my son Vilebite his rest.
        evt.SetNPCTopic(47, 0, 47) -- Farhill Snapfinger topic 0: Vilebite
        return
    elseif IsQBitSet(QBit(61)) then -- Put Vilebite's ashes in the Dust village tomb then return to Overdune. - Given and taken by Overdune, NPC 7, w177.
        evt.SetMessage("等我弟弟的骨灰安然入了村墓，我才会跟你走。")
    else
        evt.SetMessage("要不是为了父亲，我本会随你同行。他为我弟弟毒牙之死悲痛欲绝，连自己都照料不了。父亲相信，毒牙的遗骸不入村墓，灵魂便不得安息。不幸的是，火湖出现时，高戈斯占据了那座墓。拿着！这是我弟弟的骨灰。要是把它安放进墓里，我父亲的悲痛定会减轻。替我做这件事，我就随你去阿尔瓦。")
        SetQBit(QBit(61)) -- Put Vilebite's ashes in the Dust village tomb then return to Overdune. - Given and taken by Overdune, NPC 7, w177.
        AddValue(InventoryItem(603), 603) -- Urn of Ashes
        SetQBit(QBit(202)) -- Urn of Ashes - I lost it
    end
return
end)

RegisterGlobalEvent(47, "Vilebite", function()
    evt.SetMessage("毒牙是个好儿子。我会想念他。但至少知道他安息了，我心里好受些。感谢你这份善意而英勇的举动。")
end)

RegisterGlobalEvent(48, "Alliance", function()
    evt.SetMessage("你说要“联合贾丹姆的联盟”？要不是洛德林提议的，我早把你宰了当晚饭了。这事虽有趣，眼下我却无暇考虑。我们天天遭到查尔斯·奇克奥那该死的骑士袭击。他这道麻烦不除，我没法照洛德林说的做。也许你能帮我对付奇克奥？")
    evt.SetNPCTopic(17, 0, 49) -- Deftclaw Redreaver topic 0: Quest
end)
RegisterCanShowTopic(48, function()
    evt._BeginCanShowTopic(48)
    local visible = true
    if IsQBitSet(QBit(17)) then -- Form an alliance with the Dragons of Garrote Gorge. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when Dragon Egg (item 605) delivered to Charles Quixote or dragon leader.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(49, "Quest", function()
    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        AddValue(History(7), 0)
        return
    elseif IsQBitSet(QBit(33)) then -- Find the Dragon Egg and return it to the dragon leader, Deftclaw Redreaver. - Given and taken by DRAGON LEADER (area 5)
        evt.ForPlayer(Players.All)
        if not HasItem(605) then -- Dragon Leader's Egg
            evt.SetMessage("要我加入你们的联盟，你就得帮我对付查尔斯·奇克奥。把他从我这儿偷走的龙蛋给我夺回来！")
            return
        end
        evt.ShowMovie("\"dragonsrevenge\"", true)
        evt.SetMessage("如今我不必再担心继承人遇害。我要向奇克奥复仇。他的营地将承受烈焰与利爪的冲击。那些猎我们的家伙，如今成了我们的猎物。至于你的联盟……你帮了我大忙，我会还这个人情。等我把敌人击溃或送进坟墓，我就去渡鸦海滨参加联盟议会。")
        SetQBit(QBit(22)) -- Allied with Dragons. Return Dragon Egg to Dragons done.
        SetQBit(QBit(35)) -- Quest 33 is done.
        ClearQBit(QBit(16)) -- Form an alliance with the Dragon hunters of Garrote Gorge. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when Dragon Egg (item 605) delivered to Charles Quixote or dragon leader.
        ClearQBit(QBit(17)) -- Form an alliance with the Dragons of Garrote Gorge. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when Dragon Egg (item 605) delivered to Charles Quixote or dragon leader.
        ClearQBit(QBit(31)) -- Recover the Dragon Egg from Zog's fortress in Ravage Roaming and return it to Charles Quixote in Garrote Gorge. - Given and taken by Quixote (area 5)
        ClearQBit(QBit(33)) -- Find the Dragon Egg and return it to the dragon leader, Deftclaw Redreaver. - Given and taken by DRAGON LEADER (area 5)
        evt.SetNPCTopic(15, 0, 0) -- Sir Charles Quixote topic 0 cleared
        evt.SetNPCGreeting(17, 20) -- Deftclaw Redreaver greeting: What do you want?
        evt.SetNPCTopic(17, 0, 0) -- Deftclaw Redreaver topic 0 cleared
        evt.ForPlayer(Players.All)
        AddValue(Experience, 20000)
        evt.ForPlayer(Players.All)
        RemoveItem(605) -- Dragon Leader's Egg
        ClearQBit(QBit(204)) -- Dragon Leader's Egg - I lost it, taken event g49, g64
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 10000)
        evt.ForPlayer(Players.All)
        SetAward(Award(7)) -- Formed an alliance with the Garrote Gorge Dragons.
        AddValue(History(7), 0)
    else
        evt.SetMessage("上个月，奇克奥的一支掠夺队闯进我们的洞穴。他们杀了许多龙，还夺走了那枚孕育着我未出生继承人的龙蛋。只要蛋还在那些卑劣的屠龙者手里，我们就没法进攻他们的营地。你若把蛋夺回来还给我，我就能灭掉奇克奥。替我做这件事，我就加入你的联盟。")
        SetQBit(QBit(33)) -- Find the Dragon Egg and return it to the dragon leader, Deftclaw Redreaver. - Given and taken by DRAGON LEADER (area 5)
    end
end)

RegisterGlobalEvent(50, "布拉森·暴风枪的治疗方法", function()
    evt.SetMessage("复原宝石或许能治好骑士布雷曾·风暴之枪的病，就是你说降临在他身上的那事。\n太阳神殿与死灵法师公会向来不睦；他们的对头，无疑就是我们的朋友。\n让风暴之枪复活，他就能回到查尔斯·奇克奥身边。")
    evt.SetNPCTopic(50, 0, 743) -- Dervish Chevron topic 0: Travel with you!
    AddValue(InventoryItem(623), 623) -- Gem of Restoration
    SetQBit(QBit(73)) -- Received Cure for Blazen Stormlance
    SetQBit(QBit(217)) -- Gem of Restoration - I lost it
    ClearQBit(QBit(72)) -- Inquire about a cure for Blazen Stormlance from Dervish Chevron in Ravenshore.
end)
RegisterCanShowTopic(50, function()
    evt._BeginCanShowTopic(50)
    local visible = true
    if IsQBitSet(QBit(72)) then -- Inquire about a cure for Blazen Stormlance from Dervish Chevron in Ravenshore.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(51, "骷髅龙", function()
    evt.SetMessage("我父亲认为，阴影塔的死灵法师正试图创造一条不死龙。\n那将是一头真正可怕的怪物。他认定阻止他们是自己的天职。")
end)

RegisterGlobalEvent(52, "如何晋升到勇士", function()
    evt.SetMessage("我父亲布雷曾多年前离开这里，去阴影塔一带猎杀骷髅龙。不幸的是，他再也没回来。\n他带走了“霜蚀”——有史以来最伟大的屠龙长矛。查尔斯·奇克奥始终没原谅我父亲带走霜蚀。\n我们完全不知道我父亲出了什么事。\n由于我父亲是查尔斯的副手，又对遗失霜蚀负有责任，查尔斯便不肯提升我为骑士长——无论我本领多强。也许你们若找到霜蚀，查尔斯就会把你们队伍里的骑士和我都提升为骑士长！")
    SetQBit(QBit(70)) -- Find Blazen Stormlance and recover the spear Ebonest. Return to Leane Stormlance in Garrote Gorge and deliver Ebonest to Charles Quixote.
    evt.SetNPCTopic(49, 0, 59) -- Leane Stormlance topic 0: My Father
end)

RegisterGlobalEvent(53, "Ebonest", function()
    evt.SetMessage("我被俘于疯狂死灵法师实验室的中心。\n在那儿我受尽拷打，身上被降下许多诅咒。\n 霜蚀一定是在我倒下时被夺走的，也许还在中央大厅里。\n你们若能寻回它还给奇克奥，至少我的家族名声可以洗净，我女儿也能摆脱我这份失败的阴影，继续生活。")
end)

RegisterGlobalEvent(54, "Cure", function()
    evt.ForPlayer(Players.All)
    if not HasItem(623) then -- Gem of Restoration
        evt.SetMessage("也许太阳的牧师们有办法治好我——他们是唯一懂得如何驱散折磨我的黑暗魔法的人。我在渡鸦海滨有位朋友，名叫德维什·谢弗伦。他多年前离开太阳神殿，独自研究贾丹姆的种种奥秘。\n也许他知道疗法，甚至就带在身上。\n他若帮不了你，答应我，一定要回来杀了我，好让我终于安息！")
        SetQBit(QBit(72)) -- Inquire about a cure for Blazen Stormlance from Dervish Chevron in Ravenshore.
        return
    end
    evt.ForPlayer(Players.All)
    evt.SetMessage("牧师把复原宝石送回来了？\n我自由了！\n你们若想让我随你们旅行，就来找我！\n能加入你们的旅程，是我的荣幸！\n我会在渡鸦海滨的冒险者旅店等你们。")
    RemoveItem(623) -- Gem of Restoration
    ClearQBit(QBit(217)) -- Gem of Restoration - I lost it
    AddValue(Experience, 15000)
    SetQBit(QBit(134)) -- Gave Gem of Restoration to Blazen Stormlance
    SetQBit(QBit(435)) -- Roster Character In Party 36
    evt.ForPlayer(Players.All)
    SetQBit(QBit(1542)) -- Rescued Blazen Stormlance.
    evt.SetNPCTopic(107, 1, 0) -- Blazen Stormlance topic 1 cleared
end)

RegisterGlobalEvent(55, "疯狂的死灵法师", function()
    evt.SetMessage("赞索拉从阴影塔搬到这里，是为了继续她在死灵法师公会开始的实验。\n她想创造终极恐怖——骷髅龙。\n她的死灵法师同伴们害怕最终结果。一旦被造的龙挣脱赞索拉的控制，就再没人挡得住它们。")
end)

RegisterGlobalEvent(56, "Stormlance", function()
    evt.SetMessage("布雷曾·风暴之枪是我的副手，也是我的朋友。\n我一直不懂他的个人追求——非要去寻找那些传闻中的骷髅龙。\n他带走了我最得力的工具。\n霜蚀一到我手里，龙患就能稳稳解决。\n")
end)

RegisterGlobalEvent(57, "Ebonest", function()
    evt.SetMessage("太阳的牧师们把祝福注入这柄长矛，使它成为铸造出的最强长矛。\n据说它威力无穷，一击即可斩杀任何龙。\n若果真如此，我就能迅速、干净利落地了结这场争端。")
end)

RegisterGlobalEvent(58, "如何晋升到勇士", function()
    evt.ForPlayer(Players.All)
    if not HasItem(539) then -- Ebonest
        evt.SetMessage("你们找到布雷曾·风暴之枪了？可霜蚀在哪儿？\n带着长矛回来见我，你们就能得到晋升！")
        return
    end
    if not IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        evt.SetMessage("你们找到布雷曾·风暴之枪了？\n那我的长矛霜蚀呢？\n你们连它也找到了？好极了！\n我感谢你们，欠你们一份人情！\n我会把你们队伍里所有骑士提升为骑士长，并把我会的技能教给其余人。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 16) then
                SetValue(ClassId, 19)
                AddValue(Experience, 50000)
                SetQBit(QBit(1540)) -- Promoted to Champion.
                RemoveItem(539) -- Ebonest
            else
                AddValue(Experience, 35000)
                SetQBit(QBit(1541)) -- Returned Ebonest to Charles Quixote.
            end
        end
        ClearQBit(QBit(70)) -- Find Blazen Stormlance and recover the spear Ebonest. Return to Leane Stormlance in Garrote Gorge and deliver Ebonest to Charles Quixote.
        evt.SetNPCTopic(15, 2, 735) -- Sir Charles Quixote topic 2: Promote Knights
        evt.SetNPCTopic(52, 2, 735) -- Sir Charles Quixote topic 2: Promote Knights
        return
    end
    evt.SetMessage("这算什么？\n你们和我的死敌结盟，转头又来讨好我？\n我倒想知道龙族对此作何感想。不过算了。\n你把霜蚀还给我，我欠你一份人情。\n我会把你队伍里的骑士提升为骑士长——不过他们永远别想为我效力。\n其余人我会尽我所能传授。我不想再见到你们！")
    for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 16) then
            SetValue(ClassId, 19)
            AddValue(Experience, 50000)
            SetQBit(QBit(1540)) -- Promoted to Champion.
            RemoveItem(539) -- Ebonest
        else
            AddValue(Experience, 35000)
            SetQBit(QBit(1541)) -- Returned Ebonest to Charles Quixote.
        end
    end
    ClearQBit(QBit(70)) -- Find Blazen Stormlance and recover the spear Ebonest. Return to Leane Stormlance in Garrote Gorge and deliver Ebonest to Charles Quixote.
    evt.SetNPCTopic(15, 2, 735) -- Sir Charles Quixote topic 2: Promote Knights
    evt.SetNPCTopic(52, 2, 735) -- Sir Charles Quixote topic 2: Promote Knights
end)
RegisterCanShowTopic(58, function()
    evt._BeginCanShowTopic(58)
    local visible = true
    if IsQBitSet(QBit(73)) then -- Received Cure for Blazen Stormlance
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(59, "我的父亲", function()
    if IsQBitSet(QBit(435)) then -- Roster Character In Party 36
        if HasItem(539) then -- Ebonest
            evt.SetMessage("你们找到我父亲和霜蚀了？\n我永远报答不完你们！\n我们该把长矛带给查尔斯·奇克奥；他要是同意，就会提升我和你队伍里的骑士！")
            evt.ForPlayer(Players.All)
            AddValue(Experience, 5000)
            evt.SetNPCTopic(49, 0, 611) -- Leane Stormlance topic 0: Roster Join Event
            return
        elseif IsQBitSet(QBit(1541)) then -- Returned Ebonest to Charles Quixote.
            evt.SetMessage("你们找到我父亲和霜蚀了？\n我永远报答不完你们！\n我们该把长矛带给查尔斯·奇克奥；他要是同意，就会提升我和你队伍里的骑士！")
            evt.ForPlayer(Players.All)
            AddValue(Experience, 5000)
            evt.SetNPCTopic(49, 0, 611) -- Leane Stormlance topic 0: Roster Join Event
        else
            evt.SetMessage("你们找到霜蚀了？\n那我父亲呢？\n他在哪儿？\n我原以为你们会等找到我父亲和长矛后一起回来。")
        end
        return
    elseif HasItem(539) then -- Ebonest
        evt.SetMessage("你们找到霜蚀了？\n那我父亲呢？\n他在哪儿？\n我原以为你们会等找到我父亲和长矛后一起回来。")
    else
        evt.SetMessage("你们找到我父亲了吗？\n还有长矛霜蚀？\n我们必须把它送回查尔斯·奇克奥那里！")
    end
end)

RegisterGlobalEvent(60, "如何晋升到神龙", function()
    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        evt.SetMessage("你以为我会提升一条龙，一条侍奉那些与我的死敌查尔斯·奇克奥结盟者的龙？\n何等狂妄！\n何等放肆！\n你们必须向我证明自己！而在证明的过程中，你们将给你们的盟友一记重击！\n由此往西南，奇克奥设下了他那支微不足道的“屠龙者”营地。\n由奇克奥军队的副将杰里克·啸骨统领。\n毁掉这座营地！\n杀掉那一带所有为奇克奥效力的人，然后回来见我。\n带着屠龙者啸骨的剑回来见我。")
        SetQBit(QBit(74)) -- Kill all Dragon Slayers and return the Sword of Whistlebone the Slayer to Deftclaw Redreaver in Garrote Gorge.
        evt.SetNPCTopic(17, 1, 61) -- Deftclaw Redreaver topic 1: Dragon Slayers
        evt.SetNPCTopic(17, 1, 61) -- Deftclaw Redreaver topic 1: Dragon Slayers
        return
    elseif IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        evt.SetMessage("要达到巨龙的尊位，一条龙必须证明自己能以一敌众。\n他必须直面查尔斯·奇克奥派来对付我们的鼠辈。\n由此往西南，奇克奥设下了他那支微不足道的“屠龙者”营地。\n由奇克奥军队的副将杰里克·啸骨统领。\n毁掉这座营地！\n杀掉那一带所有为奇克奥效力的人，然后回来见我。\n带着屠龙者啸骨的剑回来见我。\n由此，你们将向我证明自己的资格。\n")
        SetQBit(QBit(74)) -- Kill all Dragon Slayers and return the Sword of Whistlebone the Slayer to Deftclaw Redreaver in Garrote Gorge.
        evt.SetNPCTopic(17, 1, 61) -- Deftclaw Redreaver topic 1: Dragon Slayers
        evt.SetNPCTopic(53, 1, 61) -- Deftclaw Redreaver topic 1: Dragon Slayers
        return
    else
        evt.SetMessage("要达到巨龙的尊位，一条龙必须证明自己能以一敌众。\n他必须直面查尔斯·奇克奥派来对付我们的鼠辈。\n由此往西南，奇克奥设下了他那支微不足道的“屠龙者”营地。\n由奇克奥军队的副将杰里克·啸骨统领。\n毁掉这座营地！\n杀掉那一带所有为奇克奥效力的人，然后回来见我。\n带着屠龙者啸骨的剑回来见我。\n由此，你们将向我证明自己的资格。\n")
        SetQBit(QBit(74)) -- Kill all Dragon Slayers and return the Sword of Whistlebone the Slayer to Deftclaw Redreaver in Garrote Gorge.
        evt.SetNPCTopic(17, 1, 61) -- Deftclaw Redreaver topic 1: Dragon Slayers
        evt.SetNPCTopic(53, 1, 61) -- Deftclaw Redreaver topic 1: Dragon Slayers
        return
    end
end)

RegisterGlobalEvent(61, "屠龙者", function()
    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        return
    end
    if not IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        evt.SetMessage("那个该诅咒的骑士查尔斯·奇克奥，正把他最精锐的屠龙者集结到由此往西南的一处营地。\n他一定在计划再次进攻龙穴！")
        return
    end
    evt.SetMessage("你们杀掉屠龙者了？\n屠龙者啸骨的剑呢？！？")
end)
RegisterCanShowTopic(61, function()
    evt._BeginCanShowTopic(61)
    local visible = true
    if IsQBitSet(QBit(75)) then -- Killed all Dragon Slayers in southwest encampment in Area 5
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(62, "杀龙人之剑", function()
    evt.ForPlayer(Players.All)
    if not HasItem(540) then -- Sword of Whistlebone
        evt.SetMessage("你们杀了屠龙者，可啸骨的剑在哪儿？\n拿到后再回来见我！")
        return
    end
    if IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        evt.SetMessage("你带着屠龙者啸骨的剑回来见我！\n你确实值得我另眼相看！\n你队伍里的龙晋升为巨龙！\n作为对他们协助的回报，我会把我会的技能教给其余人！")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 10) then
                SetValue(ClassId, 11)
                AddValue(Experience, 35000)
                SetQBit(QBit(1543)) -- Promoted to Great Wyrm.
                RemoveItem(540) -- Sword of Whistlebone
            else
                AddValue(Experience, 25000)
                SetQBit(QBit(1544)) -- Gave the Sword of Whistlebone the Slayer to the Deftclaw Redreaver.
            end
        end
        evt.ForPlayer(Players.All)
        ClearQBit(QBit(74)) -- Kill all Dragon Slayers and return the Sword of Whistlebone the Slayer to Deftclaw Redreaver in Garrote Gorge.
        evt.SetNPCTopic(17, 2, 736) -- Deftclaw Redreaver topic 2: Promote Dragons
        evt.SetNPCTopic(53, 2, 736) -- Deftclaw Redreaver topic 2: Promote Dragons
        return
    elseif IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        evt.SetMessage("你带着屠龙者啸骨的剑回来见我！\n你们的背叛还有没有尽头？你们到底效忠于谁？\n我会把与你同行的龙晋升为巨龙——不过它们永远别想在我羽翼下飞翔！\n你们这群叛徒里其余的人，将被传授那些可以教给他们的技能！\n滚吧！\n除非想被吃掉，否则别再让我在这儿见到你们！")
    else
        evt.SetMessage("你带着屠龙者啸骨的剑回来见我！\n你确实值得我另眼相看！\n你队伍里的龙晋升为巨龙！\n作为对他们协助的回报，我会把我会的技能教给其余人！")
    end
for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
    evt.ForPlayer(player)
    if IsAtLeast(ClassId, 10) then
        SetValue(ClassId, 11)
        AddValue(Experience, 35000)
        SetQBit(QBit(1543)) -- Promoted to Great Wyrm.
        RemoveItem(540) -- Sword of Whistlebone
    else
        AddValue(Experience, 25000)
        SetQBit(QBit(1544)) -- Gave the Sword of Whistlebone the Slayer to the Deftclaw Redreaver.
    end
end
evt.ForPlayer(Players.All)
ClearQBit(QBit(74)) -- Kill all Dragon Slayers and return the Sword of Whistlebone the Slayer to Deftclaw Redreaver in Garrote Gorge.
evt.SetNPCTopic(17, 2, 736) -- Deftclaw Redreaver topic 2: Promote Dragons
evt.SetNPCTopic(53, 2, 736) -- Deftclaw Redreaver topic 2: Promote Dragons
return
end)
RegisterCanShowTopic(62, function()
    evt._BeginCanShowTopic(62)
    local visible = true
    if IsQBitSet(QBit(75)) then -- Killed all Dragon Slayers in southwest encampment in Area 5
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(63, "Alliance", function()
    evt.SetMessage("嗯哼……既然商人洛德林都放下自己的生意来插手别的事，事情一定很严重……而且我得说，空气里透着一股末日的味道。若只是为了我和他买卖继续顺当，我本会考虑洛德林这个主意。不幸的是，眼下的事占尽了我所有资源。我拿不出人手支持你说的那个联盟。这样吧，也许我们能互相帮个忙？你替我办件小事，我就考虑答应你的请求。")
    evt.SetNPCTopic(15, 0, 64) -- Sir Charles Quixote topic 0: Quest
end)
RegisterCanShowTopic(63, function()
    evt._BeginCanShowTopic(63)
    local visible = true
    if IsQBitSet(QBit(16)) then -- Form an alliance with the Dragon hunters of Garrote Gorge. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when Dragon Egg (item 605) delivered to Charles Quixote or dragon leader.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(64, "Quest", function()
    if IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        AddValue(History(8), 0)
        return
    elseif IsQBitSet(QBit(31)) then -- Recover the Dragon Egg from Zog's fortress in Ravage Roaming and return it to Charles Quixote in Garrote Gorge. - Given and taken by Quixote (area 5)
        evt.ForPlayer(Players.All)
        if not HasItem(605) then -- Dragon Leader's Egg
            evt.SetMessage("你从佐格那残破镇的堡垒里夺回龙蛋了吗？哦，算了。看你这满脸惭愧的样子，就知道没有。我们说定的事不作废。把蛋给我带来，否则我跟你的联盟毫无瓜葛！")
            return
        end
        evt.ShowMovie("\"dragonhunters\"", true)
        evt.SetMessage("好了，那事办成了。我会安排亲自去渡鸦海滨，坐进你们的议会。说实话，我也该换换环境了。我会让我的副手雷金纳德·多雷留守。再说一次，干得好。")
        SetQBit(QBit(21)) -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        SetQBit(QBit(35)) -- Quest 33 is done.
        ClearQBit(QBit(16)) -- Form an alliance with the Dragon hunters of Garrote Gorge. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when Dragon Egg (item 605) delivered to Charles Quixote or dragon leader.
        ClearQBit(QBit(17)) -- Form an alliance with the Dragons of Garrote Gorge. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when Dragon Egg (item 605) delivered to Charles Quixote or dragon leader.
        ClearQBit(QBit(31)) -- Recover the Dragon Egg from Zog's fortress in Ravage Roaming and return it to Charles Quixote in Garrote Gorge. - Given and taken by Quixote (area 5)
        ClearQBit(QBit(33)) -- Find the Dragon Egg and return it to the dragon leader, Deftclaw Redreaver. - Given and taken by DRAGON LEADER (area 5)
        evt.SetNPCTopic(15, 0, 0) -- Sir Charles Quixote topic 0 cleared
        evt.SetNPCGreeting(15, 22) -- Sir Charles Quixote greeting: You just caught me. I'm almost ready to leave for Ravenshore, but how may I help you?
        evt.SetNPCTopic(17, 0, 0) -- Deftclaw Redreaver topic 0 cleared
        evt.MoveNPC(255, 0) -- Bazalath -> removed
        evt.ForPlayer(Players.All)
        AddValue(Experience, 20000)
        evt.ForPlayer(Players.All)
        RemoveItem(605) -- Dragon Leader's Egg
        ClearQBit(QBit(204)) -- Dragon Leader's Egg - I lost it, taken event g49, g64
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 10000)
        evt.ForPlayer(Players.All)
        SetAward(Award(8)) -- Formed an alliance with Charles Quixote and his Dragon Hunters.
        AddValue(History(8), 0)
    else
        evt.SetMessage("我的一个客户，一个绰号“豺狼佐格”的食人魔，严重辜负了我的信任。我交给他一件价值连城的货物，说好事后付款。这笔巨款始终没到。我派了个信使去索回那件货物——一枚潜力巨大的龙蛋。信使被杀了！不用说，这事让我非常恼火。我已经备下钱财与人手复仇。不过，你若能替我从佐格位于残破镇的堡垒里夺回龙蛋，我很乐意宣誓效力你的联盟。")
        SetQBit(QBit(31)) -- Recover the Dragon Egg from Zog's fortress in Ravage Roaming and return it to Charles Quixote in Garrote Gorge. - Given and taken by Quixote (area 5)
    end
end)

RegisterGlobalEvent(65, "Alliance", function()
    evt.SetMessage("你想让我的兽群加入联盟？我怎能拒绝？你们不仅救我们于必死之地，我们还直接遭受了这场大灾变——而联盟正是为对抗它而建！我宣誓加入。我会尽快亲自赶往渡鸦海滨，在联盟议会占一席位。")
    evt.ForPlayer(Players.All)
    SetAward(Award(9)) -- Formed an alliance with the Minotaurs of Ravage Roaming.
    AddValue(Experience, 20000)
    SetQBit(QBit(23)) -- Allied with Minotaurs. Rescue the Minotaurs done.
    ClearQBit(QBit(18)) -- Form an alliance with the Minotaurs of Ravage Roaming. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken when minotaurs rescued.
    ClearQBit(QBit(30)) -- Rescue the Minotaurs trapped in their lair in Ravage Roaming. - Given by MINOTAUR CLUE GUY (area 8). Turned off when minotaur leader is reached in Minotaur lair dungeon.
    AddValue(History(11), 0)
    evt.SetNPCTopic(13, 0, 0) -- Masul topic 0 cleared
    evt.SetNPCTopic(57, 0, 613) -- Thanys topic 0: Roster Join Event
    evt.SetNPCTopic(57, 1, 0) -- Thanys topic 1 cleared
    evt.SetNPCTopic(57, 2, 0) -- Thanys topic 2 cleared
end)

RegisterGlobalEvent(66, "Flood", function()
    evt.SetMessage("那是最可怕的景象！水涌进来时，我正在北边的主迷宫里值守。一波齐头高的大水灌进通道。我好不容易爬到这个高处的洞窟。我等其他人，却一个也没来。我怕兽群里许多人都已丧命或被困在巢穴里。")
    evt.SetNPCTopic(57, 0, 67) -- Thanys topic 0: Quest
end)

RegisterGlobalEvent(67, "Quest", function()
    if not IsQBitSet(QBit(30)) then -- Rescue the Minotaurs trapped in their lair in Ravage Roaming. - Given by MINOTAUR CLUE GUY (area 8). Turned off when minotaur leader is reached in Minotaur lair dungeon.
        evt.SetMessage("巴尔萨煞巢穴有许多层。还有别的和这里一样高的洞窟，所以也许有幸存者。我思量许久。尽管许多隧道进了水，但也许可以把门和通风口当阀门来排水。事实上，整个巢穴都能通过下层的逃生隧道排干。救救我的兽群！我们将永远感激你们。")
        SetQBit(QBit(30)) -- Rescue the Minotaurs trapped in their lair in Ravage Roaming. - Given by MINOTAUR CLUE GUY (area 8). Turned off when minotaur leader is reached in Minotaur lair dungeon.
        return
    end
    evt.SetMessage("我就是感觉得到。兽群里还有幸存者被困在巢穴里。你们若能想办法排干被淹通道里的水，也许就能找到他们。救救他们，我求你们！")
end)

RegisterGlobalEvent(68, "巴尔萨煞之斧", function()
    evt.SetMessage("巴尔萨煞，我们兽群历史上最伟大的领袖，曾率领勇士与从地底涌出、如瘟疫般蔓延的黑暗矮人鼠辈大战。那一仗我们打得并不好。尽管巴尔萨煞和一些勇士逃了出来，许多人却连同巴尔萨煞之斧一同陨落——那是他的权杖，也是一件强大的宝物。")
end)

RegisterGlobalEvent(69, "如何晋升为牛头领主", function()
    evt.SetMessage("唯有我们的兽群首领马苏尔，才能裁定谁配得上牛头人领主的称号。\n证明你资格的一个办法，就是从黑暗矮人矿坑深处寻回他父亲的斧头——巴尔萨煞之斧。\n踏上这趟寻斧之旅，你的未来将不可限量！\n但我们必须确认你找到的斧确为巴尔萨煞之斧。\n把斧带给达德洛斯，他是效力于阿尔瓦商人、驻守匕伤岛的牛头人。\n他能验明你所寻之物的真伪。")
    SetQBit(QBit(76)) -- Find the Axe of Balthazar, in the Dark Dwarf Mines. Have the Axe authenticated by Dadeross. Return the axe to Tessalar, heir to the leadership of the Minotaur Herd.
    evt.SetNPCTopic(58, 0, 71) -- Tessalar topic 0: Quest
end)

RegisterGlobalEvent(70, "黑暗矮人", function()
    evt.SetMessage("这些小耗子和土元素勾结，或为其效力。\n谁也说不清。\n它们从地底钻出来，搜寻财宝、食物和奴隶。\n这些清道夫过处，寸草不留。")
end)

RegisterGlobalEvent(71, "Quest", function()
    evt.ForPlayer(Players.All)
    if not HasItem(541) then -- Axe of Balthazar
        evt.SetMessage("巴尔萨煞之斧在哪儿？\n你在浪费我的时间！\n找到斧，找到达德洛斯，再回来见我！")
        return
    end
    if not HasItem(732) then -- Certificate of Authentication
        evt.SetMessage("你们找到巴尔萨煞之斧了！\n拿给达德洛斯看过了吗？\n没有他的鉴定，我们无法举行净化仪式！\n找到他，把斧呈给他后再回来见我们！")
        return
    end
    evt.SetMessage("你们找到巴尔萨煞之斧了！\n拿给达德洛斯看过了吗？啊，你们有达德洛斯的鉴定了！\n净化仪式即刻开始！你们证明了自己的资格，如今是我们兽群的一员了！\n与你同行的牛头人晋升为牛头人领主。\n你队伍里其余人，将学到我们所有可能对他们有用的技能。")
    evt.ForPlayer(Players.Member0)
    if IsAtLeast(ClassId, 20) then
        goto step_18
    end
    AddValue(Experience, 25000)
    SetAward(Award(29)) -- Recovered Axe of Balthazar.
    goto step_23
    ::step_18::
    SetValue(ClassId, 21)
    AddValue(Experience, 35000)
    SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
    RemoveItem(541) -- Axe of Balthazar
    RemoveItem(732) -- Certificate of Authentication
    ::step_23::
    evt.ForPlayer(Players.Member1)
    if IsAtLeast(ClassId, 20) then
        goto step_28
    end
    AddValue(Experience, 25000)
    SetAward(Award(29)) -- Recovered Axe of Balthazar.
    goto step_33
    ::step_28::
    SetValue(ClassId, 21)
    AddValue(Experience, 35000)
    SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
    RemoveItem(541) -- Axe of Balthazar
    RemoveItem(732) -- Certificate of Authentication
    ::step_33::
    evt.ForPlayer(Players.Member2)
    if IsAtLeast(ClassId, 20) then
        goto step_38
    end
    AddValue(Experience, 25000)
    SetAward(Award(29)) -- Recovered Axe of Balthazar.
    goto step_43
    ::step_38::
    SetValue(ClassId, 21)
    AddValue(Experience, 35000)
    SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
    RemoveItem(541) -- Axe of Balthazar
    RemoveItem(732) -- Certificate of Authentication
    ::step_43::
    evt.ForPlayer(Players.Member3)
    if IsAtLeast(ClassId, 20) then
        goto step_48
    end
    AddValue(Experience, 25000)
    SetAward(Award(29)) -- Recovered Axe of Balthazar.
    goto step_53
    ::step_48::
    SetValue(ClassId, 21)
    AddValue(Experience, 35000)
    SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
    RemoveItem(541) -- Axe of Balthazar
    RemoveItem(732) -- Certificate of Authentication
    ::step_53::
    evt.ForPlayer(Players.Member4)
    if IsAtLeast(ClassId, 20) then
        goto step_58
    end
    AddValue(Experience, 25000)
    SetAward(Award(29)) -- Recovered Axe of Balthazar.
    goto step_64
    ::step_58::
    SetValue(ClassId, 21)
    AddValue(Experience, 35000)
    SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
    RemoveItem(541) -- Axe of Balthazar
    RemoveItem(732) -- Certificate of Authentication
    evt.ForPlayer(Players.All)
    ::step_64::
    ClearQBit(QBit(76)) -- Find the Axe of Balthazar, in the Dark Dwarf Mines. Have the Axe authenticated by Dadeross. Return the axe to Tessalar, heir to the leadership of the Minotaur Herd.
    SetQBit(QBit(87))
    RemoveItem(541) -- Axe of Balthazar
    RemoveItem(732) -- Certificate of Authentication
    evt.SetNPCTopic(58, 0, 740) -- Tessalar topic 0: Promote Minotuars
    do return end
end)
RegisterCanShowTopic(71, function()
    evt._BeginCanShowTopic(71)
    local visible = true
    if HasItem(732) then -- Certificate of Authentication
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(72, "野蛮漫游的巴尔萨煞", function()
    if not IsQBitSet(QBit(76)) then -- Find the Axe of Balthazar, in the Dark Dwarf Mines. Have the Axe authenticated by Dadeross. Return the axe to Tessalar, heir to the leadership of the Minotaur Herd.
        evt.SetMessage("能在巴尔萨煞领主麾下效力是我的荣幸，他是我部族历史上最出色的兽群首领。不幸的是，我的誓约早已许给了阿尔瓦商人，否则我也许会参加巴尔萨煞战死那一役。也许我的本领和我的斧本可救下我的主君。如今我们永远无法知道了。")
        return
    end
    evt.SetNPCTopic(2, 3, 73) -- Dadeross topic 3: The Axe of Balthazar
end)

RegisterGlobalEvent(73, "巴尔萨煞之斧", function()
    evt.ForPlayer(Players.All)
    if not HasItem(541) then -- Axe of Balthazar
        evt.SetMessage("我当然认得巴尔萨煞之斧！\n你带在身上吗？\n你若找到它，就回来找我，好让我鉴定它确为我已故主君巴尔萨煞的斧。")
        return
    end
    evt.SetMessage("我当然认得巴尔萨煞之斧！\n你带在身上吗？这正是那柄斧！你必须把它带回泰萨拉，好对斧举行净化仪式，让它为巴尔萨煞之子马苏尔备好。带上这封信，它盖有我的私人印鉴，证明这确为巴尔萨煞之斧！")
    evt.ForPlayer(Players.Member0)
    AddValue(InventoryItem(732), 732) -- Certificate of Authentication
    evt.SetNPCTopic(2, 3, 75) -- Dadeross topic 3: Hurry!
end)
RegisterCanShowTopic(73, function()
    evt._BeginCanShowTopic(73)
    local visible = true
    if HasItem(541) then -- Axe of Balthazar
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(74, "多谢你的帮助！", function()
    evt.SetMessage("感谢你们把巴尔萨煞之斧送回我们身边！\n待我们完成净化仪式，就会把斧呈给马苏尔。它将从此名为马苏尔之斧，而马苏尔也必将成为一位睿智而公正的兽群首领。")
end)

RegisterGlobalEvent(75, "快点！", function()
    if not IsQBitSet(QBit(87)) then
        evt.SetMessage("你们找到巴尔萨煞之斧，而我已鉴定完毕！\n快回泰萨拉，好让净化仪式开始！")
        return
    end
    evt.SetMessage("啊，你们带着我的鉴定把巴尔萨煞之斧送回泰萨拉了！\n净化仪式已经开始。\n马苏尔领主很快就会挥舞起他父亲的斧！\n伟大将重返我的兽群！")
end)

RegisterGlobalEvent(76, "太阳预言", function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("在贾丹姆众多预言中，我唯独尚未研究过太阳预言。\n这座神殿是由特修斯·晨辉建立的，他多年前从埃拉西亚来到这里寻找这些预言。\n不幸的是，没有找到。\n我们希望这些预言藏着化解正在毁灭贾丹姆之事件的答案。")
end)
RegisterCanShowTopic(76, function()
    evt._BeginCanShowTopic(76)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1546)) then -- Promoted to Cleric of the Sun.
        visible = true
        return visible
    else
        if HasAward(Award(31)) then -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(77, "Clues", function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("我知道预言藏在羽蛇巢穴里。\n可我完全不知道那指什么，所以这条线索对我毫无用处。")
end)
RegisterCanShowTopic(77, function()
    evt._BeginCanShowTopic(77)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1546)) then -- Promoted to Cleric of the Sun.
        visible = false
        return visible
    else
        if HasAward(Award(31)) then -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(78, "如何晋升为太阳教牧师", function()
    evt.SetMessage("你想为与你同行的、我们信仰的牧师们谋求晋升？\n我可以提升你们，但如今天生人我并不怎么信任。\n你若替我办件事——比如找到失落的太阳预言并把它带回给我——我就同意提升你们。")
    SetQBit(QBit(78)) -- Find the Prophecies of the Sun in the Abandoned Temple and take them to Stephen.
    evt.SetNPCTopic(59, 2, 81) -- Stephen topic 2: Quest
end)

RegisterGlobalEvent(79, "羽蛇之巢", function()
    evt.SetMessage("羽蛇巢穴？\n那也许指的是剧毒的库阿托尔，但它们已有几个世纪没人见过了。")
end)

RegisterGlobalEvent(80, "太阳预言", function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("太阳预言从未被找到。\n它们也许根本不存在。预言是我们最伟大的先知写下的。\n若真找到，我们希望它们能回到我们手中！")
end)
RegisterCanShowTopic(80, function()
    evt._BeginCanShowTopic(80)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1546)) then -- Promoted to Cleric of the Sun.
        visible = false
        return visible
    else
        if HasAward(Award(31)) then -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(81, "Quest", function()
    evt.ForPlayer(Players.All)
    if not HasItem(626) then -- Prophecies of the Sun
        evt.SetMessage("你们找到那羽蛇巢穴和太阳预言了吗？\n别浪费我的时间！\n世界都要毁灭了，你们还在这儿废话！\n找到预言并把它们带到太阳神殿后，再回来见我。")
        return
    end
    evt.SetMessage("你们找到失落的太阳预言了？\n愿光明永远照耀你们，愿先知指引你们的脚步。\n有了这些，我们也许能找到降临贾丹姆之灾的答案！")
    for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 4) then
            SetValue(ClassId, 6)
            AddValue(Experience, 35000)
            SetQBit(QBit(1546)) -- Promoted to Cleric of the Sun.
            RemoveItem(626) -- Prophecies of the Sun
        else
            AddValue(Experience, 25000)
            SetAward(Award(31)) -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
        end
    end
    ClearQBit(QBit(78)) -- Find the Prophecies of the Sun in the Abandoned Temple and take them to Stephen.
    evt.SetNPCTopic(59, 2, 737) -- Stephen topic 2: Promote Clerics
end)
RegisterCanShowTopic(81, function()
    evt._BeginCanShowTopic(81)
    local visible = true
    if HasItem(626) then -- Prophecies of the Sun
        visible = true
        evt.ForPlayer(Players.All)
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(82, "Korbu", function()
    evt.SetMessage("科尔布是吸血鬼一族中最强者。\n一百多年前，他渴求我们同类无法接受之物。\n救赎。\n不知怎的，科尔布开始为必须吸血而内疚。\n又或许是为吸血这件事本身。\n他再也忍受不了为求生而杀戮的念头。\n我们许多长老都劝过他。\n他决定找个地方思索自己的存在。\n于是科尔布墓穴在残破镇地区由奴隶劳工建造起来。\n科尔布离开后，便再无音讯。\n")
end)

RegisterGlobalEvent(83, "Quest", function()
    evt.SetMessage("在这混乱之世，我们需要所有长老的智慧。\n把科尔布带回来——若他已亡故，就带回他的遗骸。\n若他真的死了，你必须连他的石棺一起带回。\n我们会设法让他复活，好请教他的智慧。")
    SetQBit(QBit(80)) -- Find the Sarcophagus of Korbu and Korbu's Remains and return them to Lathean in Shadowspire.
    evt.SetNPCTopic(62, 1, 90) -- Lathean topic 1: Return of Korbu
end)

RegisterGlobalEvent(84, "Korbu", function()
    evt.SetMessage("科尔布？\n他是我们同类中最伟大的，却总显得心事重重。\n我们有些人还记得他离开前的日子。在我看来，他一直烦扰不安。")
end)

RegisterGlobalEvent(85, "Korbu", function()
    evt.SetMessage("科尔布是在与阴影塔这里的死灵法师达成“协议”后离开我们的。\n我们协助他们进行任何研究，并帮他们守卫公会。\n作为回报，我们可以不受阻拦地捕食当地居民。")
end)

RegisterGlobalEvent(86, "Lich", function()
    evt.SetMessage("啊，你想追求黑暗技艺的极致。\n你们当中的死灵法师想把自己变成巫妖——死灵法师中最强者。\n很好，我可以为你们完成这个转变，但你们必须替我办件事……也为自己取些东西。\n我需要《凯尔失落之书》。\n它藏着自凯尔之塔沉入海底以来便失落的死灵法术奥秘。\n当大海把凯尔和他的知识从我们身边夺走时，匕伤的蜥蜴人曾额手称庆。\n如今那一带火山涌动，我相信凯尔之塔可以找到了。\n从书库里取回那本书带给我！\n至于你们自己，每个想变成巫妖的死灵法师都需要一只巫妖瓶。\n疯狂死灵法师赞索拉囤了一大批这种瓶子，也许她会卖你一个！\n不肯的话，你就从她手里夺过来！")
    SetQBit(QBit(82)) -- Find the Lost Book of Khel and return it to Vertrinus in Shadowspire.
    evt.SetNPCTopic(61, 0, 89) -- Vetrinus Taleshire topic 0: Promotion to Lich
end)

RegisterGlobalEvent(87, "巫妖之瓶", function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("死灵法师公会极不情愿脱手巫妖瓶。\n你不如去找赞索拉，从她那里弄一个。")
end)
RegisterCanShowTopic(87, function()
    evt._BeginCanShowTopic(87)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1548)) then -- Promoted to Lich.
        visible = true
        return visible
    else
        if HasAward(Award(35)) then -- Found the Lost Book of Khel.
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(88, "失落的凯尔之书", function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("传闻《凯尔失落之书》藏着死灵黑暗技艺终极力量的奥秘。\n没人知道它在哪儿，也许反而是件好事！")
end)
RegisterCanShowTopic(88, function()
    evt._BeginCanShowTopic(88)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1548)) then -- Promoted to Lich.
        visible = true
        return visible
    else
        if HasAward(Award(35)) then -- Found the Lost Book of Khel.
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(89, "晋升为巫妖", function()
    evt.ForPlayer(Players.All)
    if not HasItem(611) then -- Lost Book of Kehl
        evt.SetMessage("你没带《凯尔失落之书》！\n你不帮我，我就帮不了你！\n把书带来，并为你队伍里每个想变成巫妖的死灵法师备一只巫妖瓶，再回来！")
        return
    end
    for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 44) then
            if not HasItem(628) then -- Lich Jar
                evt.SetMessage("你有《凯尔失落之书》，却缺完成转变所需的巫妖瓶！\n等你为队伍里每个死灵法师备齐一只，再回来！")
                return
            end
        end
    end
    evt.SetMessage("你带来了完成转变所需的一切！\n那就开始吧！\n你队伍里所有死灵法师都将被转化为巫妖！\n愿黑暗能量永远流淌在他们身上！\n作为对他们协助的回报，你们其余人将学到我所能教的知识！\n开始吧！完成之后，好朋友拉特安会负责你队伍日后的一切晋升。")
    for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 44) then
            SetValue(ClassId, 45)
            AddValue(Experience, 35000)
            SetQBit(QBit(1548)) -- Promoted to Lich.
            RemoveItem(628) -- Lich Jar
        else
            AddValue(Experience, 25000)
            SetAward(Award(35)) -- Found the Lost Book of Khel.
        end
    end
    evt.ForPlayer(Players.All)
    RemoveItem(611) -- Lost Book of Kehl
    ClearQBit(QBit(82)) -- Find the Lost Book of Khel and return it to Vertrinus in Shadowspire.
    evt.SetNPCTopic(61, 0, 742) -- Vetrinus Taleshire topic 0: Travel with you!
end)

RegisterGlobalEvent(90, "可布的再临", function()
    evt.ForPlayer(Players.All)
    if HasItem(627) then -- Remains of Korbu
        if not HasItem(612) then -- Sarcophagus of Korbu
            evt.SetMessage("你们带着科尔布的遗骸回来了，可他的石棺呢？没有它，我们无法完成复活之术！\n把遗骸和石棺都带来，再回来见我们！")
            return
        end
        evt.SetMessage("你给我们带来了科尔布的石棺和他神圣的遗骸。\n我们将设法复活科尔布，在这纷乱之世求教他的智慧！\n你们当中的吸血鬼将转化为诺斯费拉图，其余人则将学到我们所能教的技能，以酬你们的效力。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 40) then
                SetValue(ClassId, 41)
                AddValue(Experience, 35000)
                SetQBit(QBit(1547)) -- Promoted to Nosferatu.
                RemoveItem(627) -- Remains of Korbu
                RemoveItem(612) -- Sarcophagus of Korbu
            else
                AddValue(Experience, 25000)
                SetAward(Award(33)) -- Found the Sarcophagus and Remains of Korbu.
            end
        end
        ClearQBit(QBit(80)) -- Find the Sarcophagus of Korbu and Korbu's Remains and return them to Lathean in Shadowspire.
        evt.ForPlayer(Players.All)
        RemoveItem(627) -- Remains of Korbu
        RemoveItem(612) -- Sarcophagus of Korbu
        evt.SetNPCTopic(62, 1, 739) -- Lathean topic 1: Promote Vampires
        return
    elseif HasItem(612) then -- Sarcophagus of Korbu
        evt.SetMessage("你们带着科尔布的石棺回来了，可他的遗骸呢？没有它，我们无法完成复活之术！\n把石棺和遗骸都带来，再回来见我们！")
    else
        evt.SetMessage("我们必须请教科尔布！\n你们已经答应把他的遗骸和石棺带来！\n东西没备齐之前，别来烦我们！")
    end
end)
RegisterCanShowTopic(90, function()
    evt._BeginCanShowTopic(90)
    local visible = true
    if IsQBitSet(QBit(80)) then -- Find the Sarcophagus of Korbu and Korbu's Remains and return them to Lathean in Shadowspire.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(91, "多谢你的帮助！", function()
    evt.SetMessage("感谢你们找到太阳预言。\n愿太阳永远照亮你们的道路，护佑你们！")
end)

RegisterGlobalEvent(92, "多谢你的帮助！", function()
    evt.SetMessage("你们把科尔布送回了我们身边，我们将永远欠你们一份人情！\n现在离开我吧，我好去请教长老们！")
end)

RegisterGlobalEvent(93, "多谢你的帮助！", function()
    evt.SetMessage("我们必须请教科尔布！\n你们已经答应把他的遗骸和石棺带来！\n东西没备齐之前，别来烦我们！")
end)

RegisterGlobalEvent(94, "Alliance", function()
    evt.SetMessage("巴斯沈·卢德林一直是公会的挚友。可悲的是，此刻我必须拒绝他的请求。就在我们说话这会儿，我的公会正为生存而战。你瞧，太阳神殿已对我们宣战。我们大多数成员都在野外——要么率领军队，要么在召唤僵尸入伍。我多希望能说些别的，可那该诅咒的神殿占了上风。要是平衡能倒向我们这边就好了。")
    evt.SetNPCTopic(9, 0, 95) -- Sandro topic 0: Quest
end)
RegisterCanShowTopic(94, function()
    evt._BeginCanShowTopic(94)
    local visible = true
    if IsQBitSet(QBit(14)) then -- Form an alliance with the Necromancers' Guild in Shadowspire. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken by Sandro (area 6) or when quest 15 is done.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(95, "Quest", function()
    if not IsQBitSet(QBit(28)) then -- Bring the Nightshade Brazier to the Necromancers' Guild leader, Sandro. The Brazier is in the Temple of the Sun. - Given and taken by Sandro (area 6). Taken when Qbit 27 set.
        evt.SetMessage("若能把夜影火盆夺回我们手中，阴影塔的防御便不成问题。我们就能把这场战争烧到太阳神殿门口。将他们彻底歼灭！既然知道它的重要性，牧师们便把火盆安在神殿深处的密室里。戴森·利兰相信他能进入那间密室。带他去神殿，夺回火盆送回给我。你想让我加入你的联盟？好，替我办成这件事，我就欠你一份人情。关于夜影火盆有任何疑问，去问坦特。那东西是他造的。")
        SetQBit(QBit(28)) -- Bring the Nightshade Brazier to the Necromancers' Guild leader, Sandro. The Brazier is in the Temple of the Sun. - Given and taken by Sandro (area 6). Taken when Qbit 27 set.
        if IsQBitSet(QBit(89)) or IsQBitSet(QBit(90)) then -- Dyson Leland talks to you about the Necromancers. For global event 97-100.
            evt.SetNPCTopic(11, 3, 634) -- Dyson Leland topic 3: Roster Join Event
        end
        return
    end
    evt.SetMessage("在公会安全无虞之前，我不会加入你们。去低语森林的太阳神殿，把夜影火盆给我夺来。事成之后，我们再谈联盟。")
end)

RegisterGlobalEvent(96, "戴森·李蓝", function()
    evt.SetMessage("冲突之初，太阳神殿就想派间谍潜入我们行列。真愚蠢——以为能如此轻易骗过一群黑暗法师！揭穿他们的眼线易如反掌——一个叫“戴森·利兰”的人。从那以后我们就把他反过来对付他的旧主——至少表面如此。坦白说，我并不全信他的忠诚。不过他确实有用。只要还有用，我们就留他一命。")
end)
RegisterCanShowTopic(96, function()
    evt._BeginCanShowTopic(96)
    local visible = true
    if HasPlayer(34) then -- Dyson Leyland
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(97, "Necromancers", function()
    evt.SetMessage("对力量的追逐，怎能把人引上黑暗之路的恐怖？可这儿就有整整一屋子这种人！哦，他们会自称“知识的求索者”，可这些死亡法师实在可憎！令人作呕的腐败化身！唯有出于我自身的恐惧，那卑劣的死灵法师公会才配自称“我的主人”。")
    SetQBit(QBit(89)) -- Dyson Leland talks to you about the Necromancers. For global event 97-100.
    if not IsQBitSet(QBit(90)) then return end -- Dyson Leland talks to you about the Temple of the Sun. For Global event 97-100.
    if IsQBitSet(QBit(28)) then -- Bring the Nightshade Brazier to the Necromancers' Guild leader, Sandro. The Brazier is in the Temple of the Sun. - Given and taken by Sandro (area 6). Taken when Qbit 27 set.
        evt.SetNPCTopic(11, 3, 634) -- Dyson Leland topic 3: Roster Join Event
        return
    elseif IsQBitSet(QBit(26)) then -- Find the skeleton transformer in the Shadowspire Necromancers' Guild. Destroy it and return to Oskar Tyre. - Given and taken by Oskar Tyre (area 7). Taken when Qbit 29 set.
        evt.SetNPCTopic(11, 3, 634) -- Dyson Leland topic 3: Roster Join Event
    else
        evt.SetNPCTopic(11, 3, 100) -- Dyson Leland topic 3: Join
    end
end)

RegisterGlobalEvent(98, "太阳神庙", function()
    evt.SetMessage("我年轻时，一心只想加入光明修会——做一名无私的善之仆役。一到年纪，我便怀着纯净之心的火焰走进太阳神殿。我真是个傻瓜。若世间真有善，我也从未见过。太阳神殿的殿堂里当然更没有！他们披着神圣正义的外衣，干着贪婪与纵欲的最坏勾当。要不是太可怖，简直称得上讽刺。")
    SetQBit(QBit(90)) -- Dyson Leland talks to you about the Temple of the Sun. For Global event 97-100.
    if not IsQBitSet(QBit(89)) then return end -- Dyson Leland talks to you about the Necromancers. For global event 97-100.
    if IsQBitSet(QBit(28)) then -- Bring the Nightshade Brazier to the Necromancers' Guild leader, Sandro. The Brazier is in the Temple of the Sun. - Given and taken by Sandro (area 6). Taken when Qbit 27 set.
        evt.SetNPCTopic(11, 3, 634) -- Dyson Leland topic 3: Roster Join Event
        return
    elseif IsQBitSet(QBit(26)) then -- Find the skeleton transformer in the Shadowspire Necromancers' Guild. Destroy it and return to Oskar Tyre. - Given and taken by Oskar Tyre (area 7). Taken when Qbit 29 set.
        evt.SetNPCTopic(11, 3, 634) -- Dyson Leland topic 3: Roster Join Event
    else
        evt.SetNPCTopic(11, 3, 100) -- Dyson Leland topic 3: Join
    end
end)

RegisterGlobalEvent(99, "Yourself", function()
    evt.SetMessage("几个月前，我被召去私下觐见太阳神殿的大祭司奥斯卡·泰尔。他派我执行渗透死灵法师公会的任务。“变得和他们一样，”他说，“取得他们的信任。在你伺机给予致命一击之前，把他们的情报喂给我们。”计划太简单，统帅也太简单！我依言而行，把自己浸泡在邪恶之中，好显得邪恶。可公会仿佛能看穿我的心。我被识破是间谍。在死亡威胁下，我如今服从他们的命令。")
end)

RegisterGlobalEvent(100, "Join", function()
    evt.SetMessage("加入你们？有意思的主意。可你能给我什么？历经这一切，我满心复仇之渴。我本可以随你同行，却不愿白白耗费力气。给我一个伤害敌人的机会——那该诅咒的太阳神殿，或可憎的死灵法师公会——我便乐意随你走。")
end)

RegisterGlobalEvent(101, "Thant", function()
    evt.SetMessage("如今夜影火盆以它加固的黑暗笼罩阴影塔。坦特动身去统领他的爪牙了。")
end)

RegisterGlobalEvent(102, "Alliance", function()
    evt.SetMessage("元素动荡自然令我们极为关切。你看，从我们神殿往北走不多远，就能看到一场异乎寻常、经久不散的狂暴风暴。但可悲的是，我们另有更紧迫之事。死灵法师公会这团病态恐怖，必须从这片土地上彻底铲除！我们正对阴影塔的邪恶发动圣战。我们全部精神与力量都投入对抗山德罗及其爪牙的战役。此事未成之前，我们无暇考虑加入你们的联盟。")
    evt.SetNPCTopic(33, 0, 103) -- Oskar Tyre topic 0: Quest
end)
RegisterCanShowTopic(102, function()
    evt._BeginCanShowTopic(102)
    local visible = true
    if IsQBitSet(QBit(15)) then -- Form an alliance with the Temple of the Sun in Murmurwoods. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken by Oskar Tyre (area 7), or when quest 27 is done.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(103, "Quest", function()
    if IsQBitSet(QBit(27)) then -- Skeleton Transformer Destroyed.
        evt.SetMessage("干得漂亮！随着骨架转化器被毁，我深信正义之光将涤清阴影塔的邪恶。死灵法师公会已名存实亡。按约，你们如今可将太阳神殿视为对抗元素大灾变的盟友。我会亲自前往渡鸦海滨，坐进你们的联盟议会。我这就尽快安排启程。")
        ClearQBit(QBit(26)) -- Find the skeleton transformer in the Shadowspire Necromancers' Guild. Destroy it and return to Oskar Tyre. - Given and taken by Oskar Tyre (area 7). Taken when Qbit 29 set.
        ClearQBit(QBit(14)) -- Form an alliance with the Necromancers' Guild in Shadowspire. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken by Sandro (area 6) or when quest 15 is done.
        ClearQBit(QBit(15)) -- Form an alliance with the Temple of the Sun in Murmurwoods. - Given by Bastian Lourdrin (area 3). Activates Merchanthouse in Alvar. Taken by Oskar Tyre (area 7), or when quest 27 is done.
        ClearQBit(QBit(28)) -- Bring the Nightshade Brazier to the Necromancers' Guild leader, Sandro. The Brazier is in the Temple of the Sun. - Given and taken by Sandro (area 6). Taken when Qbit 27 set.
        SetQBit(QBit(20)) -- Allied with Temple of the Sun. Destroy the Skeleton Transformer done.
        evt.SetNPCTopic(33, 0, 0) -- Oskar Tyre topic 0 cleared
        AddValue(History(9), 0)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 50000)
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 10000)
        evt.ForPlayer(Players.All)
        SetAward(Award(11)) -- Formed and alliance with the Temple of the Sun.
        return
    elseif IsQBitSet(QBit(26)) then -- Find the skeleton transformer in the Shadowspire Necromancers' Guild. Destroy it and return to Oskar Tyre. - Given and taken by Oskar Tyre (area 7). Taken when Qbit 29 set.
        evt.SetMessage("你又来这儿谈联盟？我早告诉过你该做什么。去阴影塔的死灵法师公会，找到戴森·利兰，帮他毁掉他们的骨架转化器！")
    else
        evt.SetMessage("话又说回来，若战局倒向我们这边，我们也能给你的联盟分出些资源。也许你可以做我们的幸运使者？死灵法师公会里有一件叫“骨架转化器”的装置。它把活物转化成骷髅——黑暗法师的主力增援全靠它。一旦它被毁，我们很快就能占上风。我们在他们公会里安插了一名眼线，戴森·利兰。找到他，帮他砸烂他们造骷髅的装置。办成这件事，我就更乐意考虑你的请求。")
        SetQBit(QBit(26)) -- Find the skeleton transformer in the Shadowspire Necromancers' Guild. Destroy it and return to Oskar Tyre. - Given and taken by Oskar Tyre (area 7). Taken when Qbit 29 set.
    end
end)

RegisterGlobalEvent(104, "Alliance", function()
    evt.SetMessage("你竟如此轻看预言，想逃避它指派给你的角色？这是危急之世，要求人人采取非常之举。走遍这片土地，铸就联盟所象征的团结。去吧，除非你甘愿承受威胁我们的毁灭！")
end)

RegisterGlobalEvent(105, "诡异的通道", function()
    evt.SetMessage("我们用艾瑞安·韩特的船设法收集了些情报。我派一艘去残破镇，另一艘去匕伤群岛。据报两地都出现了奇异的传送门。岛上那道门立在主岛东南海面升起的大火山坡上。残破镇的传送门在大湖中央。据说形成那湖的水就是从门里涌出来的。")
end)

RegisterGlobalEvent(106, "Ironfists", function()
    evt.SetMessage("我们初次见面后不过几小时，一桩极巧的事发生了。一位伟大贤者——来自铁拳城堡恩洛斯朝廷的赞索——与我们取得了联系！他以强大法术把形象投影进这间屋子。大灾变发生时，他正与罗兰和凯瑟琳·铁拳在我们海岸外的海上。他们在随之而来的风暴中幸存，如今想在渡鸦海滨登陆，援助联盟。不幸的是，他们被雷格那海盗舰队拦住。我们必须帮他们登陆。赞索声称对这里发生之事深知内情。我们需要他的谋略！")
    evt.SetNPCTopic(40, 0, 107) -- Elgar Fellmoon topic 0: Quest
end)

RegisterGlobalEvent(107, "Quest", function()
    if IsQBitSet(QBit(37)) then -- Regnan Pirate Fleet is sunk.
        evt.SetMessage("你击沉雷格那舰队的出色之举已见成效。就在昨天早上，凯瑟琳与罗兰·铁拳偕他们的贤者赞索抵达。有他们加入联盟，我们实力大增——不可计量地大增。我得承认，这场危机中有我最黑暗的时刻。多亏你们的努力，我相信最糟的阶段已经过去。我满怀希望，我们定能熬过这一劫。")
        ClearQBit(QBit(36)) -- Sink the Regnan Fleet. Return to the Ravenshore council chamber. - Given and taken at Ravenshore council chamber.
        SetQBit(QBit(38)) -- Quest 36 is done.
        evt.SetNPCTopic(40, 0, 109) -- Elgar Fellmoon topic 0: Xanthor
        evt.ForPlayer(Players.All)
        AddValue(Experience, 100000)
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 10000)
        evt.ForPlayer(Players.All)
        SetAward(Award(12)) -- Sunk the Regnan fleet allowing Roland and Catherine Ironfist to join the alliance.
        return
    elseif IsQBitSet(QBit(36)) then -- Sink the Regnan Fleet. Return to the Ravenshore council chamber. - Given and taken at Ravenshore council chamber.
        evt.SetMessage("你必须击沉那支雷格那舰队！务必让铁拳一行安全登陆。他们的贤者赞索掌握着我们不可或缺的危机知识。")
    else
        evt.SetMessage("我们的线人认为雷格那主力舰队泊在雷格那岛上某处隐蔽港口。你若能趁舰队在港时将其击沉，便能大大削弱他们在我们海岸外巡逻的能力。不幸的是，我们没有一支强大到能在雷格那登陆的舰队。布拉克许·单牙传信给我们，说雷格那人在匕首主岛外的环礁上建了前哨。他相信这前哨以神秘方式补给。他的斥候从不见有船靠岸，可那里始终物资充足。也许你该去那里解开这个谜。也许答案会把你送到雷格那？无论用什么手段，要让铁拳一行在渡鸦海滨登陆，雷格那舰队必须被击沉。")
        SetQBit(QBit(36)) -- Sink the Regnan Fleet. Return to the Ravenshore council chamber. - Given and taken at Ravenshore council chamber.
        AddValue(History(12), 0)
    end
end)

RegisterGlobalEvent(108, "Pirates", function()
    evt.SetMessage("尽管雷格那人满嘴帝国、满口文明，他们却是贾丹姆最卑劣的渣滓。难怪他们会趁这场危机扩张海盗勾当，我丝毫不意外。最令我担忧的是他们在匕伤的新前哨。我确信他们想把它当作进犯本土的基地。它甚至让渡鸦海滨进入了他们的打击范围！")
end)

RegisterGlobalEvent(109, "Xanthor", function()
    evt.SetMessage("我只与他短暂会过，但我确信赞索对元素位面的运作极为通晓。显然，他从铁拳一行的元素盟友那里学了不少——那是他们近期征伐埃拉西亚恶魔时的事。此刻他正在研究镇广场上那块奇异水晶。你可以在那儿找到他，或在我们为他安排的附近住所。")
    evt.SetNPCTopic(40, 0, 110) -- Elgar Fellmoon topic 0: Quest
end)

RegisterGlobalEvent(110, "Quest", function()
    if not IsQBitSet(QBit(91)) then -- Consult the Ironfists' court sage, Xanthor about the Ravenshore crystal. - Given by NPC 53 (Fellmoon), taken by XANTHOR.
        evt.SetMessage("我们议会都十分信任这位赞索。他告诉我，他正在拟定应对元素危机的计划。若说有谁能为我们的难题找到答案，那就是他。你若愿进一步帮助我们，就为这位伟大贤者效劳。向他请教水晶之事，看看你能为他做些什么。")
        SetQBit(QBit(91)) -- Consult the Ironfists' court sage, Xanthor about the Ravenshore crystal. - Given by NPC 53 (Fellmoon), taken by XANTHOR.
        evt.MoveNPC(19, 899) -- Xanthor -> Hostel
        evt.MoveNPC(64, 0) -- Derrin Delver -> removed
        return
    end
    evt.SetMessage("我们指望赞索来定下一步行动。去找他，看你能如何帮忙。")
end)

RegisterGlobalEvent(111, "艾恩法斯特的到来", function()
    evt.SetMessage("恩洛斯王室朝廷的加入对我们只有好处。我原担心他们会染上许多君主那种爱慕排场的毛病。我高兴地报告，这位国王和王后并非如此。他们一登陆就直接着手解决我们的问题。作为联盟的核心成员，你们会发现求见他们很方便。我们已把他们安顿在渡鸦海滨的宅子里。")
end)

RegisterGlobalEvent(112, "火元素界", function()
    evt.SetMessage("从赞索所说来看，我确信所有元素位面都很危险。不过我仍奉劝你们探索火元素位面时格外小心。据铁沙漠的报告，那里的居民正格外好战。")
end)

RegisterGlobalEvent(113, "界间之地", function()
    evt.SetMessage("关于“位面之间”，我所知皆来自阿尔瓦的博学者。尽管如此，若毁灭者的基地在那里，务必极度谨慎！据说这个位面由混沌之物构成——所有其他位面都像黏土一样由它塑成。混沌虽有形，却是流动的。你在那里所见，都非表面那样。那里的一切也可能瞬息万变。")
end)

RegisterGlobalEvent(114, "元素之王的监狱", function()
    evt.SetMessage("阿尔瓦博学者对“位面之间”的描述，在此同样适用。我确信诸元素领主的监狱名副其实，也同样确信它们不会以人预想的模样出现。")
end)

RegisterGlobalEvent(115, "商人之家", function()
    evt.SetMessage("阿尔瓦商人公会欠你一份大人情。作为微薄报答，我们决定让这座商馆永远归你们使用。请收下这份礼物，作为我们对你们英勇事迹的深深感激之证。")
end)

RegisterGlobalEvent(116, "猎龙", function()
    evt.SetMessage("我知道身为联盟一员是要紧差事。可我实在想念狩猎！我总想象我的手下在痛快行猎，而我却在这儿埋首公文。赶紧把联盟这摊子事了结！我想利落收拾这团乱麻！没有狩猎的刺激，我的人生便失了往日的火花。")
end)

RegisterGlobalEvent(117, "黑井·古伯", function()
    evt.SetMessage("从雷格那海盗的战术判断，我怀疑有布莱克威尔·库珀插手。库珀是我的一位老……可以说“老相识”。嘿，我要是个赌徒，愿拿金子打赌，指挥匕伤雷格那远征军的就是他。")
end)

RegisterGlobalEvent(118, "Xanthor", function()
    evt.SetMessage("我知道在这事上我持议会里的少数意见，可我真不明白，为什么非得把某个江湖骗子法师 扯进来！这场危机当然能像多数事一样解决——痛快地用上一段百炼精钢即可。")
end)

RegisterGlobalEvent(119, "组织部队", function()
    evt.SetMessage("哼！要我说，赞索这主意简直是蛮干！我说，若面对元素大军来犯，我们就该征召一支军队迎敌。坦白说，这些预言说辞让我不安。这个议会太受铁拳那名宠物巫师摆布了。我说我们该主动打进行动元素位面，让入侵者尝尝我们刀刃的锋利！")
end)

RegisterGlobalEvent(120, "界间之地", function()
    evt.SetMessage("我告诉你，这个赞索是在引你们空忙一场。还“位面之间”呢！一派胡言！最糟的是，万一这疯狂计划失败——我料它必败——我们连备战都没做。这种盲从预言的做法，完全违背了良好的军事常识！")
end)

RegisterGlobalEvent(121, "Xanthor", function()
    evt.SetMessage("我对这位赞索也疑心过不少，可一个人勇于认错，才见品格。如今我清楚，他给出的建议一直良善而有效。他叫你们去营救元素领主，那你们就必须去。去吧！祝好运！")
end)

RegisterGlobalEvent(122, "猎龙", function()
    evt.SetMessage("再见到你们真好，贾丹姆的英雄们。干得漂亮，拯救世界什么的。你们当之无愧，我相信，也是许多人的恩人。我想此刻你们有的是别的机会，不过要是想找份猎龙的活，就来找我。对你们这种人大概算不上挑战，但这个提议一直作数！")
end)

RegisterGlobalEvent(123, "Accommodations", function()
    evt.SetMessage("小不点们，赶紧把联盟的准备弄完！我对这片没有洞穴、没有猎物的土地，耐心已薄得危险。我不仅得睡谷仓，这些人连牛都不养。我只能吃鱼！哼！你们若珍惜我的好脾气，就麻利点！")
end)

RegisterGlobalEvent(124, "雷格那岛", function()
    evt.SetMessage("抵达雷格那岛绝非易事。我的一名斥候向我报告，雷格那船只在海面密布。他还说看到雷格那人有能在水下行走的船。据说他们用这种船补给匕伤前哨。也许你能乘它抵达雷格那。海盗要么会没察觉你们通过，要么把你们当成自己人。")
end)

RegisterGlobalEvent(125, "吉科德的宝藏", function()
    evt.SetMessage("我知道现在不是想复仇的时候，但我愿把我了解到的仇敌查尔斯·奇克奥的事告诉你们。牛头人国王马苏尔提过，奇克奥在他的城堡里随身带着一柄威力强大的剑。它叫“毒蛇”。也许你们夺得它，会有助于联盟大业？")
end)

RegisterGlobalEvent(126, "Gateways", function()
    evt.SetMessage("我的龙族巡逻队已定位两道元素之门。一道在最大匕伤群岛东南的大火山坡上。另一道在残破镇大湖中央。我不知道它们通向何处，但无论去哪边，你们都要渡过大片水域。")
end)

RegisterGlobalEvent(127, "水晶龙", function()
    evt.SetMessage("你们到我洞穴前不久，有一条埃拉西亚龙来过。它报告说，在埃拉西亚见到了一种新型龙——似乎由水晶岩石构成。我也不知道为什么要告诉你们。也许镇广场上那块巨大水晶让我想起了这个故事。")
end)

RegisterGlobalEvent(128, "毁灭者", function()
    evt.SetMessage("有意思，毁灭者竟亲自派你们去消解他的杰作。我想我并不意外。大能者的作为，本就莫测。")
end)

RegisterGlobalEvent(129, "大事", function()
    evt.SetMessage("你为这片土地和龙族立了大功。为此我们欠你。记住，我们容忍你们在我们洞穴中出入，而且不再把你们当猎物猎杀。")
end)

RegisterGlobalEvent(130, "光明", function()
    evt.SetMessage("你可知道，我们在低语森林的神殿是贾丹姆这片土地上的第一座？把光明带到世界每个角落——包括这里——是我们的使命。我们惊讶地发现，我们的敌人死灵法师公会竟先一步在此建起了他们自己的殿堂。不过没关系，他们很快就会被处理掉。我说，你不觉得这座商馆正适合做太阳神殿吗？危机结束后我要跟费尔姆恩提提。")
end)

RegisterGlobalEvent(131, "烈阳钉锤", function()
    evt.SetMessage("你们若去雷格那，不妨找找太阳钉锤。我和兄弟们从埃拉西亚渡海时，遭到雷格那舰队袭击。我们的船只有一艘逃脱。可悲的是，失踪的正是载着任务领队豪弟兄的那艘。武器就在他手上。我亲眼见豪弟兄被海盗所杀，但那柄钉锤也许还在他们手里。")
end)

RegisterGlobalEvent(132, "Ironfists", function()
    evt.SetMessage("我对这些铁拳一行及其贤者赞索很满意。尽管我们从未直接合作，他们在恩洛斯t与埃拉西亚对抗死灵法师公会和恶魔的作为，已清楚表明他们是光明的仆人。我完全相信他们拯救我们于危机的计划。")
end)

RegisterGlobalEvent(133, "风元素界", function()
    evt.SetMessage("太阳神殿花了大量时间研究低语森林出现的那道门。我确信它通向气元素位面。我的兄弟们好几次看到气精在门周围出没。胆子大些的曾凑过去张望，回报说看到一片旋转云国。")
end)

RegisterGlobalEvent(134, "危机之来源", function()
    evt.SetMessage("作为光明的牧师，我对危机之源自有看法。我确信，不是月亮神殿就是死灵法师公会，在其中牵扯。伟大的光明啊！他们要是勾结起来了呢？多可怕的念头。")
end)

RegisterGlobalEvent(135, "Devils", function()
    evt.SetMessage("我不敢担保你能信这个所谓“毁灭者”的话。他当然不是经文里那位毁灭者。什么克里根人、人住在许多世界……这全违背了我们神殿自太初以来守护的真理！")
end)

RegisterGlobalEvent(136, "光之仆人", function()
    evt.SetMessage("有你们同行真好，贾丹姆的英雄们。记住，太阳神殿也视你们为光明的仆人。在我们这里永远受欢迎。")
end)

RegisterGlobalEvent(137, "图书馆", function()
    evt.SetMessage("真希望我初次造访渡鸦海滨是在更好的情形下。这小镇有许多可取之处，我真希望有时间多探探。往好处想，这座商馆有座很棒的图书馆。你们见过吗？")
end)

RegisterGlobalEvent(138, "海盗侵略", function()
    evt.SetMessage("雷格那人已在匕伤群岛之一上建了前哨。我们担心他们会进攻渡鸦海滨。一旦如此，我们将撤离全城。等驻军把海盗逐出渡鸦海滨，我们再回来。")
end)
RegisterCanShowTopic(138, function()
    evt._BeginCanShowTopic(138)
    local visible = true
    if IsQBitSet(QBit(57)) then -- The Pirates invaded Ravenshore
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(139, "凯瑟琳·艾恩法斯特", function()
    evt.SetMessage("我当上兽群首领时，从没想过统治生涯会如此丰富多采。我当然更没想过会遇上凯瑟琳女王这样的人！你可知道，在她让位埃拉西亚之前，她同时统治着埃拉西亚和恩洛斯t？")
end)

RegisterGlobalEvent(140, "水元素界", function()
    evt.SetMessage("如你所知，通向水元素位面的门出现在残破镇的巴尔萨煞巢穴附近。它就立在那场自门中涌出的大洪水所汇成的湖中央。")
end)

RegisterGlobalEvent(141, "干粮", function()
    if not IsQBitSet(QBit(99)) then -- Masul gave party food.
        evt.SetMessage("在水晶彼端的土地上，你们或许难以补给。我离开巴尔萨煞巢穴时，带了一批军队出征时吃的铁干粮。拿着，都给你们。轻便又顶饱。但愿你们用得上。")
        AddValue(Food, 20)
        SetQBit(QBit(99)) -- Masul gave party food.
        return
    end
    evt.SetMessage("我没有更多干粮可给了。你们要更多，就得自己另找食物。")
end)

RegisterGlobalEvent(142, "Salvation", function()
    evt.SetMessage("既然囚禁元素领主是这场危机的起因，那么释放他们当然就是终结危机的办法！他们是力量几乎难以想象的存在。一旦摆脱毁灭者的控制，他们就能让一切重归正轨。这一定就是预言所说的！")
end)

RegisterGlobalEvent(143, "通往城市之钥匙", function()
    evt.SetMessage("说多少遍也不为过。我的兽群，乃至贾丹姆一切生灵，都永远欠你们的情。多亏你们在这里和诸位面的出色之举，巴尔萨煞巢穴将重归伟大。你们和同伴何时想来都受欢迎。祝福你们大家！")
end)

RegisterGlobalEvent(144, "太阳神殿", function()
    evt.SetMessage("我总觉得自己在别处能干更出彩的活。我不在时，坦特想必能照管公会事务，可如今我们正与太阳神殿交战，我却坐在这儿无所事事，实在磨人耐心。你们真该把差事办得麻利些！")
end)

RegisterGlobalEvent(145, "海盗法师", function()
    evt.SetMessage("一想到雷格那人，人们通常不会联想到“魔法大师”这个词。但我提醒你们，雷格那海盗盘踞此岛已有许多世纪。他们有的是时间获取并钻研奥术知识。有些强大的法师就住在那里。你们若要与他们交战，就得做好应付一切的准备。")
end)

RegisterGlobalEvent(146, "Wizards", function()
    evt.SetMessage("并非我们死灵法师公会不尊重别派法师。他们选择通向较弱力量的道路，是他们自己的事。这个赞索，作为不走黑暗之路的巫师，已算强劲。在可能范围内，我觉得他的建议尚可一观。")
end)

RegisterGlobalEvent(147, "次元之戒", function()
    evt.SetMessage("我得知，阿尔瓦的黑暗矮人持有一件我觊觎已久的物品，而你们穿梭于元素位面时也许特别用得上。位面戒指能给佩戴者强大护佑，抵御土、水、气、火的伤害法术。")
end)
RegisterCanShowTopic(147, function()
    evt._BeginCanShowTopic(147)
    local visible = true
    if HasItem(519) then -- Ring of Planes
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(148, "Nightmares", function()
    evt.SetMessage("在研究中，我对位面之间略知一二。记载上说，那里的居民并非以通常方式诞生。我听说那里能找到一些生物，它们具象化着人类梦魇之梦的能量。我所知不多，但可以想见，这种生物必既强大又邪恶。")
end)

RegisterGlobalEvent(149, "元素之战", function()
    evt.SetMessage("魔法的一个基本事实是：火克水，气克土。在这种配对中，某一元素对其对立元素存有弱点。我料想毁灭者在建造监狱时利用的正是这一原理。")
end)

RegisterGlobalEvent(150, "Safety", function()
    evt.SetMessage("我谨代表公会说，我们欠你一份感激之情。我以准许你和你的同伴在我们掌控的所有土地上自由通行来偿还这份人情。公会成员不会为奥术实验绑架你，也不会把你当作仆役的食粮——无论死活。这项公会敕令自今日起有效期一年。当然，还有我个人的感谢。")
end)

RegisterGlobalEvent(151, "Xanthor", function()
    evt.SetMessage("主人此刻不在。他去议事厅找埃尔加·费尔姆恩了。也许你们能在那儿找到他。")
end)

RegisterGlobalEvent(152, "水晶", function()
    evt.SetMessage("毁灭者安放在镇广场上的水晶有两个作用。其一，若我们无所作为，它将毁灭世界。其二，它充当通向另一存在领域——位面之间——的门，而毁灭者的基地无疑就在那里。水晶将元素力量召唤到我们的世界，并引向自身。当这些力量在水晶处交汇，世界便将在大灾变中毁灭。若要阻止此事，就得有人以水晶为门去找毁灭者，要么说服他停止攻击，要么除掉他。")
    ClearQBit(QBit(91)) -- Consult the Ironfists' court sage, Xanthor about the Ravenshore crystal. - Given by NPC 53 (Fellmoon), taken by XANTHOR.
    SetQBit(QBit(92)) -- Quest 91 done.
    evt.SetNPCTopic(19, 0, 153) -- Xanthor topic 0: Quest
    evt.SetNPCTopic(19, 1, 154) -- Xanthor topic 1: Gateway
end)

RegisterGlobalEvent(153, "Quest", function()
    if not IsQBitSet(QBit(41)) then -- Bring the Heart of Water from the Plane of Water to Xanthor. - Given by XANTHOR. Taken when 41-44 done simultaneously.
        evt.SetMessage("由于水晶与元素力量相谐，它只会放行那些自身与之相谐的人。我相信可以打造一把钥匙，为你们这样一小群人模拟这种相谐。我能造钥匙，但需要纯粹元素之力的成分。据我所知，这种成分只有一种形态。在四个元素位面，你们都能找到名为“元素之心”的宝石。把它们带给我，我就能打造开启水晶之门的钥匙。")
        SetQBit(QBit(41)) -- Bring the Heart of Water from the Plane of Water to Xanthor. - Given by XANTHOR. Taken when 41-44 done simultaneously.
        SetQBit(QBit(42)) -- Bring the Heart of Air from the Plane of Air to Xanthor. - Given by XANTHOR. Taken when 41-44 done simultaneously.
        SetQBit(QBit(43)) -- Bring the Heart of Earth from the Plane of Earth to Xanthor. - Given by XANTHOR. Taken when 41-44 done simultaneously.
        SetQBit(QBit(44)) -- Bring the Heart of Fire from the Plane of Fire to Xanthor. - Given by XANTHOR. Taken when 41-44 done simultaneously.
        AddValue(History(14), 0)
        evt.SetNPCTopic(40, 0, 0) -- Elgar Fellmoon topic 0 cleared
        evt.SetNPCTopic(40, 1, 112) -- Elgar Fellmoon topic 1: Plane of Fire
        evt.SetNPCTopic(52, 0, 119) -- Sir Charles Quixote topic 0: Raising an Army
        evt.SetNPCTopic(53, 0, 126) -- Deftclaw Redreaver topic 0: Gateways
        evt.SetNPCTopic(54, 0, 133) -- Oskar Tyre topic 0: Plane of Air
        evt.SetNPCTopic(55, 0, 140) -- Masul topic 0: Plane of Water
        evt.SetNPCTopic(56, 0, 147) -- Sandro topic 0: Ring of Planes
        return
    end
    evt.ForPlayer(Players.All)
    if HasItem(606) then -- Heart of Fire
        evt.SetMessage("我很高兴你们在寻回元素之心上小有进展，但你们手上的还不够。我需要四个元素位面各一颗，才能打造水晶之门的钥匙。把其余的心带给我们，好继续。")
        return
    elseif HasItem(607) then -- Heart of Water
        evt.SetMessage("我很高兴你们在寻回元素之心上小有进展，但你们手上的还不够。我需要四个元素位面各一颗，才能打造水晶之门的钥匙。把其余的心带给我们，好继续。")
        return
    elseif HasItem(608) then -- Heart of Air
        evt.SetMessage("我很高兴你们在寻回元素之心上小有进展，但你们手上的还不够。我需要四个元素位面各一颗，才能打造水晶之门的钥匙。把其余的心带给我们，好继续。")
        return
    elseif HasItem(609) then -- Heart of Earth
        evt.SetMessage("我很高兴你们在寻回元素之心上小有进展，但你们手上的还不够。我需要四个元素位面各一颗，才能打造水晶之门的钥匙。把其余的心带给我们，好继续。")
    else
        evt.SetMessage("要穿过水晶之门面对毁灭者，你们需要我打造的钥匙！要打造这把钥匙，我需要来自四个元素位面的元素之心宝石！去替我取来！")
    end
end)

RegisterGlobalEvent(154, "Gateway", function()
    evt.SetMessage("这块水晶似乎在对元素位面的居民施加某种强迫。否则他们为何要向我们的位面开战？我听过你们和其他人的亲历报告。这些元素生物仿佛被疯狂驱使。确实是疯狂！因为毁灭恩洛斯将造成巨大的位面失衡，必然殃及他们自己的位面。他们甚至可能在大灾变中自我毁灭。至少，他们在冒改变自身位面本质的风险。我看不出这种改变怎么可能更好！")
end)

RegisterGlobalEvent(155, "元素领主", function()
    evt.SetMessage("元素领主被囚禁在位面之间，这解释了很多。我一直奇怪，土、气、水、火诸位面的居民为何变得如此好战。通常，他们安于自己在秩序中的位置。想必毁灭者必须把各位主从他们的家园带走。没有领主镇抚，他便能更轻易地像如今这样胁迫元素生物。你们务必解放元素领主。他们能恢复各自位面的秩序，阻止大灾变！")
end)

RegisterGlobalEvent(156, "毁灭者", function()
    evt.SetMessage("是的，我听过这个名字，“埃斯卡顿”。他在许多文化的传说中有各种称呼。我不知其本性，但他的目的就是毁灭世界。没错，我说的是“诸世界”。越来越多证据指向一个结论：恩洛斯并非这宇宙中唯一有生命之地。寂静降临之前的传说，讲过许多人住在群星之间。没错，说人能住在天上的一颗光里似乎不可思议，但想想这些恒星也许和我们的太阳一样。若果真如此，那这些太阳为何不能照耀恩洛斯之外的其他地方？倘若如此，就可能存在一位“诸世界毁灭者”。我相信，我们面对的就是他。")
end)

RegisterGlobalEvent(157, "Leaving", function()
    evt.SetMessage("不，我想我不会随铁拳一行返回恩洛斯。也许几年后我会加入他们，但此刻我为这片土地着迷。尽管它已被毁坏，我仍想研究水晶之门的残骸。据我所知，世间从未有过力量相当的宝物。也许我能从水晶碎片里找到些用途。不管怎样，铁拳一行动身时，我不会同行。")
end)

RegisterGlobalEvent(158, "夜影火盆", function()
    evt.SetMessage("毫不谦虚地说，夜影火盆是我黑暗技艺最伟大的创造。当它的火焰得到恰当照料，那该诅咒的太阳便无法照进它的影响范围。夜晚抚慰人的阴影在广阔区域常驻。在这片疆域内，吸血鬼和其他夜之生物获得了平时没有的自由。我们不必再担心白昼毁灭之光，可以自在走出墓穴！可如今太阳神殿夺走了我的宝物。必须把它夺回来！")
end)

RegisterGlobalEvent(159, "你是谁？", function()
    evt.SetMessage("我是毁灭者埃斯卡顿，又称“恶魔末日”“网门之蛛”与“荒芜”。有些地方把我当神崇拜。但在我自己心中，我只把自己看作我伟大主人们的仆人。你们也该知道，是我把大灾变带到你们世界，而它必须被毁灭。这是你们咎由自取——你们没能从自己的疆域里清除恶魔克里根人。")
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 163) -- Escaton topic 3: Save the World
    evt.SetNPCTopic(19, 0, 155) -- Xanthor topic 0: Elemental Lords
    evt.SetNPCTopic(19, 1, 156) -- Xanthor topic 1: The Destroyer
    evt.SetNPCGreeting(19, 112) -- Xanthor greeting: You are back? Have you need of advice? Or are you finding the task at hand too difficult?
    SetQBit(QBit(235)) -- Have talked to Escaton
    SetValue(MapVar(31), 4)
    SetValue(MapVar(32), 4)
    SetValue(MapVar(33), 4)
end)

RegisterGlobalEvent(160, "Masters", function()
    if IsAtLeast(MapVar(31), 4) then
        evt.SetMessage("我的主人们创造了我。他们赋予我形态与功能。我因此而不可摧毁。我毁灭那些滋生克里根人的世界。")
        SetValue(MapVar(31), 3)
        return
    elseif IsAtLeast(MapVar(31), 3) then
        evt.SetMessage("在你们的世界，人们谈一场延续千年之久的“寂静”。我比那更古老，而我的主人们在我看来已是远古。")
        SetValue(MapVar(31), 2)
        return
    elseif IsAtLeast(MapVar(31), 2) then
        evt.SetMessage("世界不止你们这一个——千千万万。这些世界曾被一张巨网维系，网线可以像跨河的桥一样通行。你们所谓的寂静，正是以我主人们所织之网的崩断为标志。")
        SetValue(MapVar(31), 1)
        return
    elseif IsAtLeast(MapVar(31), 1) then
        evt.SetMessage("曾几何时，我远古的主人们看管的世界多过一蒲式耳苹果。在克里根人之前——在寂静之前——那些世界充满奇迹。我的主人们是一个黄金文明的国王与女王。我被造出来，并非因为需要，而是因为可以被造——一个本不需保护之物的守护者……一个强盛民族的力量象征。可如今，千年以来，克里根之灾啃噬着诸世界的辉煌。我的主人们也已陨落。他们成了军阀与将军，而我是他们最伟大的士兵。")
        SetValue(MapVar(31), 4)
    else
        evt.SetMessage("我的主人们创造了我。他们赋予我形态与功能。我因此而不可摧毁。我毁灭那些滋生克里根人的世界。")
        SetValue(MapVar(31), 3)
    end
end)

RegisterGlobalEvent(161, "Cataclysm", function()
    if IsAtLeast(MapVar(32), 4) then
        evt.SetMessage("你们的世界将被创造它的元素力量毁灭。贾丹姆中心城市里的水晶，迫使元素位面的居民把他们的世界向你们敞开。当他们的世界在水晶处交汇，反应将在陆地、天空与海洋释放无法遏制的毁灭。一切生灵将不复存在。")
        SetValue(MapVar(32), 3)
        return
    elseif IsAtLeast(MapVar(32), 3) then
        evt.SetMessage("大灾变是我举行“灾变大典”仪式时诞生的，水晶由此而生。它是我主人们为抵御克里根人而造的最后手段武器。我确有其他武器。但当我察觉你们世界滋生克里根人时，便认为必须动用终极力量。你们的世界沉沦已久——看起来你们无疑无法抵御我的敌人。尽管我低估了你们的能力，而克里根人最终被消灭，我仍觉得谨慎为上没有错。")
        SetValue(MapVar(32), 2)
        return
    elseif IsAtLeast(MapVar(32), 2) then
        evt.SetMessage("我的主人们怕克里根人学会腐蚀我的办法，便使我不可腐蚀。灾变大典一旦举行，我便无法撤销。他们的这道命令是我存在的一部分。我除了服从别无他法。")
        SetValue(MapVar(32), 1)
        return
    elseif IsAtLeast(MapVar(32), 1) then
        evt.SetMessage("灾变大典虽强，本身却无法毁灭一个世界。每个元素位面都由一位领主统治。这些领主能对抗施加在他们低等臣民身上的强迫。正因如此，我把各位主从他们的领域里带走。他们暂且是我的“客人”。大灾变结束后，我会把他们送回，让他们重建你们的国度和他们自己的国度。")
        SetValue(MapVar(32), 4)
    else
        evt.SetMessage("你们的世界将被创造它的元素力量毁灭。贾丹姆中心城市里的水晶，迫使元素位面的居民把他们的世界向你们敞开。当他们的世界在水晶处交汇，反应将在陆地、天空与海洋释放无法遏制的毁灭。一切生灵将不复存在。")
        SetValue(MapVar(32), 3)
    end
end)

RegisterGlobalEvent(162, "克里根人", function()
    if IsAtLeast(MapVar(33), 4) then
        evt.SetMessage("自寂静以来，你们的世界已遗忘了克里根人的起源。他们与神话中的恶魔相像，这对你们就足够了——确实，多数人就叫他们“恶魔”。真相是他们来自彼岸。在他们攻击我们之前，我的主人们对他们一无所知。克里根人滋生在我们的世界上，并尽一切可能蔓延。在一个无边的宇宙里，他们本可以朝我们之外的方向扩张。但他们没有作此选择，所以我们必须自卫。")
        SetValue(MapVar(33), 3)
        return
    elseif IsAtLeast(MapVar(33), 3) then
        evt.SetMessage("我知道恩洛斯的国王与王后已为你们世界清除了克里根人。尽管如此，你们的世界仍要被毁灭。我一经召唤，就必须举行大典。大典一旦开始，就必须继续。我被召唤时，克里根人还活在你们世界上。等我抵达时他们已成尘埃，这已无关紧要。")
        SetValue(MapVar(33), 2)
        return
    elseif IsAtLeast(MapVar(33), 2) then
        evt.SetMessage("若不是克里根人及其强加的战争状态，我的主人们本可重建世界之网，揭开你们所谓的“寂静”。我的主人们多次试图重建巨网，却总被克里根人毁掉。如今他们断定，必须彻底消灭克里根人，否则黄金文明永无复兴之日。我被造出来，正是为了完成这一目的。")
        SetValue(MapVar(33), 1)
        return
    elseif IsAtLeast(MapVar(33), 1) then
        evt.SetMessage("就我所能感受的程度而言，我很惊讶你们的世界竟能清除克里根之灾。他们可比你们……先进得多。恩洛斯的国王与王后必是最高明的战略家。只可惜他们没能早点完成任务。若我会遗憾，我会遗憾不得不无谓地毁灭你们的世界。")
        SetValue(MapVar(33), 4)
    else
        evt.SetMessage("自寂静以来，你们的世界已遗忘了克里根人的起源。他们与神话中的恶魔相像，这对你们就足够了——确实，多数人就叫他们“恶魔”。真相是他们来自彼岸。在他们攻击我们之前，我的主人们对他们一无所知。克里根人滋生在我们的世界上，并尽一切可能蔓延。在一个无边的宇宙里，他们本可以朝我们之外的方向扩张。但他们没有作此选择，所以我们必须自卫。")
        SetValue(MapVar(33), 3)
    end
end)

RegisterGlobalEvent(163, "拯救世界", function()
    evt.SetMessage("是的，你们的世界确实需要拯救！这场大灾变若不被阻止，将把它彻底毁灭。你们面临一个两难：我，作为大灾变的带来者，知道如何终结它。而且我承认，既然你们世界上已没有克里根人，它便不必被毁灭。可是，作为我主人们的仆人，我被迫让大灾变继续——不向你们透露我的知识。尽管如此，我会问你们几个问题。也许答案里有什么对你们有用的东西？")
    SetQBit(QBit(98)) -- Escaton, heard the first message in global event 163
    evt.SetNPCTopic(22, 0, 164) -- Escaton topic 0: Riddle One
    evt.SetNPCTopic(22, 1, 165) -- Escaton topic 1: Riddle Two
    evt.SetNPCTopic(22, 2, 166) -- Escaton topic 2: Riddle Three
    evt.SetNPCTopic(22, 3, 0) -- Escaton topic 3 cleared
end)

RegisterGlobalEvent(164, "谜题一", function(continueStep)
    if continueStep == 2 then
        evt.SetMessage("听起来完全不对。")
        evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
        evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
        evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
        evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
        return
    end
    if continueStep == 4 then
        if IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
            if not IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
                evt.SetMessage("是的。你的答案似乎很合这则谜语。也许那就是正确答案。")
                SetQBit(QBit(94)) -- Escaton, riddle one answered correctly.
                if IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
                    SetAutonote(2) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: ? Prison + Inside + ?
                    ClearAutonote(5) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: ? ? + Inside + ?
                    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
                    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
                    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
                    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
                    return
                elseif IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
                    SetAutonote(3) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: "Egg." Prison + ? + Egg
                    ClearAutonote(7) -- Destroyer's Riddles. Riddle One: ? Riddle Two: ? Riddle Three: "Egg." ? + ? + Egg
                else
                    SetAutonote(1) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: ? Prison + ? + ?
                end
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
            end
            evt.SetMessage("我判断你们已正确答出了谜语。我想，考你们这些问题，也算以某种方式帮了你们。就我和我的本性而言，这已足够。作为对你们表现的奖赏，收下这件小玩意儿吧。我有不止一件，因此多出了不需要的。瞧？我能把它给你，是因为我并不知道你懂得如何使用它。")
            SetQBit(QBit(97)) -- Escaton, all riddles answered correctly.
            SetQBit(QBit(48)) -- Rescue Pyrannaste, Lord of Fire. - Given by Eschaton. Taken by rescue of Pyrannaste.
            SetQBit(QBit(50)) -- Rescue Gralkor the Cruel, Lord of Earth. - Given by Eschaton. Taken by rescue of Gralkor.
            SetQBit(QBit(52)) -- Rescue Acwalander, Lord of Water. - Given by Eschaton. Taken by rescue of Acwalander.
            SetQBit(QBit(54)) -- Rescue Shalwend, Lord of Air. - Given by Eschaton. Taken by rescue of Shalwend.
            ClearQBit(QBit(46)) -- Find the cause of the cataclysm through the Crystal Gateway. - Given by XANTHOR. Taken by Eschaton.
            SetQBit(QBit(47)) -- Quest 46 done. Used to allow entrance to elemental lord prisons. Now player needs item 629.
            AddValue(InventoryItem(629), 629) -- Ring of Keys
            SetQBit(QBit(220)) -- Ring of Keys - I lost it
            AddValue(History(16), 0)
            ClearAutonote(6) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: "Egg." ? + Inside + Egg
            SetAutonote(4) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: "Egg." Prison + Inside + Egg
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
        end
        evt.SetMessage("是的。你的答案似乎很合这则谜语。也许那就是正确答案。")
        SetQBit(QBit(94)) -- Escaton, riddle one answered correctly.
        if IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
            SetAutonote(2) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: ? Prison + Inside + ?
            ClearAutonote(5) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: ? ? + Inside + ?
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
        elseif IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
            SetAutonote(3) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: "Egg." Prison + ? + Egg
            ClearAutonote(7) -- Destroyer's Riddles. Riddle One: ? Riddle Two: ? Riddle Three: "Egg." ? + ? + Egg
        else
            SetAutonote(1) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: ? Prison + ? + ?
        end
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
    return
    end
    if continueStep ~= nil then return end
    if not IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
        evt.AskQuestion(164, 2, 595, 4, 100, 101, "何处服役以偿债，\n不得自由离开，\n离开之时却是自由身？", {"prison", "jail"})
        return nil
    end
    evt.SetMessage("监狱、牢房与囚室有种种形态。我们听过所谓“心灵的牢笼”。可我怀疑。这则谜语说的似乎是一座有形的监狱。你怎么看？")
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
    return
end)

RegisterGlobalEvent(165, "谜题二", function(continueStep)
    if continueStep == 2 then
        evt.SetMessage("我想那也许行得通……不，再一想，似乎完全错了。")
        evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
        evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
        evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
        evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
        return
    end
    if continueStep == 4 then
        if IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
            if not IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
                evt.SetMessage("语言变幻莫测。尽管如此，你的答案似乎很贴合这个问题。")
                SetQBit(QBit(95)) -- Escaton, riddle two answered correctly.
                if IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
                    SetAutonote(2) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: ? Prison + Inside + ?
                    ClearAutonote(1) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: ? Prison + ? + ?
                    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
                    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
                    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
                    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
                    return
                elseif IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
                    SetAutonote(6) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: "Egg." ? + Inside + Egg
                    ClearAutonote(7) -- Destroyer's Riddles. Riddle One: ? Riddle Two: ? Riddle Three: "Egg." ? + ? + Egg
                else
                    SetAutonote(5) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: ? ? + Inside + ?
                end
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
            end
            evt.SetMessage("我判断你们已正确答出了谜语。我想，考你们这些问题，也算以某种方式帮了你们。就我和我的本性而言，这已足够。作为对你们表现的奖赏，收下这件小玩意儿吧。我有不止一件，因此多出了不需要的。瞧？我能把它给你，是因为我并不知道你懂得如何使用它。")
            SetQBit(QBit(97)) -- Escaton, all riddles answered correctly.
            SetQBit(QBit(48)) -- Rescue Pyrannaste, Lord of Fire. - Given by Eschaton. Taken by rescue of Pyrannaste.
            SetQBit(QBit(50)) -- Rescue Gralkor the Cruel, Lord of Earth. - Given by Eschaton. Taken by rescue of Gralkor.
            SetQBit(QBit(52)) -- Rescue Acwalander, Lord of Water. - Given by Eschaton. Taken by rescue of Acwalander.
            SetQBit(QBit(54)) -- Rescue Shalwend, Lord of Air. - Given by Eschaton. Taken by rescue of Shalwend.
            ClearQBit(QBit(46)) -- Find the cause of the cataclysm through the Crystal Gateway. - Given by XANTHOR. Taken by Eschaton.
            SetQBit(QBit(47)) -- Quest 46 done. Used to allow entrance to elemental lord prisons. Now player needs item 629.
            AddValue(InventoryItem(629), 629) -- Ring of Keys
            SetQBit(QBit(220)) -- Ring of Keys - I lost it
            AddValue(History(16), 0)
            ClearAutonote(3) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: "Egg." Prison + ? + Egg
            SetAutonote(4) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: "Egg." Prison + Inside + Egg
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
        end
        evt.SetMessage("语言变幻莫测。尽管如此，你的答案似乎很贴合这个问题。")
        SetQBit(QBit(95)) -- Escaton, riddle two answered correctly.
        if IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
            SetAutonote(2) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: ? Prison + Inside + ?
            ClearAutonote(1) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: ? Prison + ? + ?
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
        elseif IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
            SetAutonote(6) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: "Egg." ? + Inside + Egg
            ClearAutonote(7) -- Destroyer's Riddles. Riddle One: ? Riddle Two: ? Riddle Three: "Egg." ? + ? + Egg
        else
            SetAutonote(5) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: ? ? + Inside + ?
        end
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
    return
    end
    if continueStep ~= nil then return end
    if not IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
        evt.AskQuestion(165, 2, 599, 4, 102, 103, "你走进房间时，\n那里便有它，\n它却无法留在室外，\n纵然你把门敞开？", {"in", "inside"})
        return nil
    end
    evt.SetMessage("里面。什么的里面？又是什么在里面？既然问了……为什么？")
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
    return
end)

RegisterGlobalEvent(166, "谜题三", function(continueStep)
    if continueStep == 2 then
        evt.SetMessage("我看不出那怎么会是答案。真的，我看不出。")
        evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
        evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
        evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
        evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
        return
    end
    if continueStep == 4 then
        if IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
            if not IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
                evt.SetMessage("答案还能是什么呢？我确信，只要肯动动脑筋，谁都能想出些什么。不过在这种事上，最好相信自己最清晰的念头。我想你的答案也许是对的。")
                SetQBit(QBit(96)) -- Escaton, riddle three answered correctly.
                if IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
                    SetAutonote(3) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: "Egg." Prison + ? + Egg
                    ClearAutonote(1) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: ? Prison + ? + ?
                    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
                    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
                    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
                    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
                    return
                elseif IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
                    SetAutonote(6) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: "Egg." ? + Inside + Egg
                    ClearAutonote(5) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: ? ? + Inside + ?
                else
                    SetAutonote(7) -- Destroyer's Riddles. Riddle One: ? Riddle Two: ? Riddle Three: "Egg." ? + ? + Egg
                end
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
            end
            evt.SetMessage("我判断你们已正确答出了谜语。我想，考你们这些问题，也算以某种方式帮了你们。就我和我的本性而言，这已足够。作为对你们表现的奖赏，收下这件小玩意儿吧。我有不止一件，因此多出了不需要的。瞧？我能把它给你，是因为我并不知道你懂得如何使用它。")
            SetQBit(QBit(97)) -- Escaton, all riddles answered correctly.
            SetQBit(QBit(48)) -- Rescue Pyrannaste, Lord of Fire. - Given by Eschaton. Taken by rescue of Pyrannaste.
            SetQBit(QBit(50)) -- Rescue Gralkor the Cruel, Lord of Earth. - Given by Eschaton. Taken by rescue of Gralkor.
            SetQBit(QBit(52)) -- Rescue Acwalander, Lord of Water. - Given by Eschaton. Taken by rescue of Acwalander.
            SetQBit(QBit(54)) -- Rescue Shalwend, Lord of Air. - Given by Eschaton. Taken by rescue of Shalwend.
            ClearQBit(QBit(46)) -- Find the cause of the cataclysm through the Crystal Gateway. - Given by XANTHOR. Taken by Eschaton.
            SetQBit(QBit(47)) -- Quest 46 done. Used to allow entrance to elemental lord prisons. Now player needs item 629.
            AddValue(InventoryItem(629), 629) -- Ring of Keys
            SetQBit(QBit(220)) -- Ring of Keys - I lost it
            AddValue(History(16), 0)
            ClearAutonote(2) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: ? Prison + Inside + ?
            SetAutonote(4) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: "Inside." Riddle Three: "Egg." Prison + Inside + Egg
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
        end
        evt.SetMessage("答案还能是什么呢？我确信，只要肯动动脑筋，谁都能想出些什么。不过在这种事上，最好相信自己最清晰的念头。我想你的答案也许是对的。")
        SetQBit(QBit(96)) -- Escaton, riddle three answered correctly.
        if IsQBitSet(QBit(94)) then -- Escaton, riddle one answered correctly.
            SetAutonote(3) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: "Egg." Prison + ? + Egg
            ClearAutonote(1) -- Destroyer's Riddles. Riddle One: "Prison." Riddle Two: ? Riddle Three: ? Prison + ? + ?
            evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
            evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
            evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
            evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
            return
        elseif IsQBitSet(QBit(95)) then -- Escaton, riddle two answered correctly.
            SetAutonote(6) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: "Egg." ? + Inside + Egg
            ClearAutonote(5) -- Destroyer's Riddles. Riddle One: ? Riddle Two: "Inside." Riddle Three: ? ? + Inside + ?
        else
            SetAutonote(7) -- Destroyer's Riddles. Riddle One: ? Riddle Two: ? Riddle Three: "Egg." ? + ? + Egg
        end
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
    return
    end
    if continueStep ~= nil then return end
    if not IsQBitSet(QBit(96)) then -- Escaton, riddle three answered correctly.
        evt.AskQuestion(166, 2, 603, 4, 104, 105, "一只月白色的盒子，\n只能从里面打开，\n守护着日金色的\n生命之宝。\n那是什么？", {"egg", "an egg"})
        return nil
    end
    evt.SetMessage("“蛋”，对。又或者，“蛋们”。蛋是生命之源，某种种子。它们形状也不寻常，别处少见。也许把答案放进上下文，会给出线索或方向。")
    evt.SetNPCTopic(22, 0, 160) -- Escaton topic 0: Masters
    evt.SetNPCTopic(22, 1, 161) -- Escaton topic 1: Cataclysm
    evt.SetNPCTopic(22, 2, 162) -- Escaton topic 2: Kreegans
    evt.SetNPCTopic(22, 3, 171) -- Escaton topic 3: Riddles
    return
end)

RegisterGlobalEvent(167, "释放沙尔文德", function()
    if IsQBitSet(QBit(51)) and IsQBitSet(QBit(53)) and IsQBitSet(QBit(49)) then -- Quest 50 done.
        evt.SetMessage("感谢你释放我。记住，气之君主沙尔文德对你心怀好感。我这就去恢复我国度的秩序，并与其他领主一道，尽我所能帮助你们的国度。警告你们！我们的行动将动摇水晶之门。立刻动身回家，否则你们将永远困在这里。把这里发生的事告诉赞索。再会。")
        SetQBit(QBit(56)) -- All Lords from quests 48, 50, 52, 54 rescued.
        AddValue(History(17), 0)
    else
        evt.SetMessage("感谢你释放我。我这就去恢复我国度的秩序，尽我所能帮助你们的国度。记住，气之君主沙尔文德对你心怀好感。再会。")
    end
    evt.SetNPCTopic(26, 0, 0) -- Shalwend topic 0 cleared
    evt.MoveNPC(26, 0) -- Shalwend -> removed
    evt.ForPlayer(Players.All)
    AddValue(Experience, 100000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 10000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(54)) -- Rescue Shalwend, Lord of Air. - Given by Eschaton. Taken by rescue of Shalwend.
    SetQBit(QBit(55)) -- Quest 54 done.
    SetAward(Award(14)) -- Rescued Shalwend, Lord of Air.
end)

RegisterGlobalEvent(168, "释放阿夸兰德尔", function()
    if IsQBitSet(QBit(51)) and IsQBitSet(QBit(55)) and IsQBitSet(QBit(49)) then -- Quest 50 done.
        evt.SetMessage("“毁灭者”这个称号，对一个如此囚禁我的人再合适不过。要不是你们，我——水之君主阿克瓦兰德——不久便会消亡。我的逝去会在所有位面造成失衡。谢谢你们。我这就去与其他领主会合。我们将共同让一切重归正轨。警告你们！我们的行动将动摇水晶之门。立刻动身回家，否则你们将永远困在这里。把这里发生的事告诉赞索。再会。")
        SetQBit(QBit(56)) -- All Lords from quests 48, 50, 52, 54 rescued.
        AddValue(History(17), 0)
    else
        evt.SetMessage("“毁灭者”这个称号，对一个如此囚禁我的人再合适不过。要不是你们，我——水之君主阿克瓦兰德——不久便会消亡。我的逝去会在所有位面造成失衡。谢谢你们。我这就去让一切重归正轨。")
    end
    evt.SetNPCTopic(24, 0, 0) -- Acwalander topic 0 cleared
    evt.MoveNPC(24, 0) -- Acwalander -> removed
    evt.ForPlayer(Players.All)
    AddValue(Experience, 100000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 10000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(52)) -- Rescue Acwalander, Lord of Water. - Given by Eschaton. Taken by rescue of Acwalander.
    SetQBit(QBit(53)) -- Quest 52 done.
    SetAward(Award(15)) -- Rescued Acwalander, Lord of Water.
end)

RegisterGlobalEvent(169, "释放格拉尔科尔", function()
    if IsQBitSet(QBit(55)) and IsQBitSet(QBit(53)) and IsQBitSet(QBit(49)) then -- Quest 54 done.
        evt.SetMessage("我自由了！现在，那个愚蠢到把我关起来的人——这个毁灭者——将尝尝我的愤怒。我，土之君主，被称为“残酷者格拉尔柯”，绝非浪得虚名。我所受的苦，将加倍奉还给他！我这就去与其他领主会合。我们将共同让一切重归正轨。警告你们！我们的行动将动摇水晶之门。立刻动身回家，否则你们将永远困在这里。把这里发生的事告诉赞索。再会。")
        SetQBit(QBit(56)) -- All Lords from quests 48, 50, 52, 54 rescued.
        AddValue(History(17), 0)
    else
        evt.SetMessage("我自由了！现在，那个愚蠢到把我关起来的人——这个毁灭者——将尝尝我的愤怒。我，土之君主，被称为“残酷者格拉尔柯”，绝非浪得虚名。我所受的苦，将加倍奉还给他！")
    end
    evt.SetNPCTopic(25, 0, 0) -- Gralkor the Cruel topic 0 cleared
    evt.MoveNPC(25, 0) -- Gralkor the Cruel -> removed
    evt.ForPlayer(Players.All)
    AddValue(Experience, 100000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 10000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(50)) -- Rescue Gralkor the Cruel, Lord of Earth. - Given by Eschaton. Taken by rescue of Gralkor.
    SetQBit(QBit(51)) -- Quest 50 done.
    SetAward(Award(16)) -- Rescued Gralkor the Cruel, Lord of Earth.
end)

RegisterGlobalEvent(170, "释放皮拉纳斯泰", function()
    if IsQBitSet(QBit(51)) and IsQBitSet(QBit(53)) and IsQBitSet(QBit(55)) then -- Quest 50 done.
        evt.SetMessage("终于自由了。我的折磨结束了，可我的臣民呢？我知道毁灭者迫使他们从事一桩可怕的差事。我的出现会抚慰他们。我必须去恢复我国度与你们国度的秩序。在回火元素位面之前，我会先与其他领主会合。我们将共同让一切重归正轨。警告你们！我们的行动将动摇水晶之门。立刻动身回家，否则你们将永远困在这里。\n把这里发生的事告诉赞索。再会。")
        SetQBit(QBit(56)) -- All Lords from quests 48, 50, 52, 54 rescued.
        AddValue(History(17), 0)
    else
        evt.SetMessage("终于自由了。我的折磨结束了，可我的臣民呢？我知道毁灭者迫使他们从事一桩可怕的差事。我的出现会抚慰他们。我必须走了。我必须……再会……")
    end
    evt.SetNPCTopic(23, 0, 0) -- Pyrannaste topic 0 cleared
    evt.MoveNPC(23, 0) -- Pyrannaste -> removed
    evt.ForPlayer(Players.All)
    AddValue(Experience, 100000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 10000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(48)) -- Rescue Pyrannaste, Lord of Fire. - Given by Eschaton. Taken by rescue of Pyrannaste.
    SetQBit(QBit(49)) -- Quest 48 done.
    SetAward(Award(17)) -- Rescued Pyrannaste, Lord of Fire.
end)

RegisterGlobalEvent(171, "谜题", function()
    if not IsQBitSet(QBit(97)) then -- Escaton, all riddles answered correctly.
        evt.SetMessage("尽管我必须毁灭你们的世界，我该做的却已经做完。在大灾变抵达高潮之前，不妨碍我陪你们谈谈。这不会永远持续。没有什么会永远持续。有时问题生出更多问题。有时问题给出答案。我倒想知道，我的问题会给你们带来什么？")
        evt.SetNPCTopic(22, 0, 164) -- Escaton topic 0: Riddle One
        evt.SetNPCTopic(22, 1, 165) -- Escaton topic 1: Riddle Two
        evt.SetNPCTopic(22, 2, 166) -- Escaton topic 2: Riddle Three
        evt.SetNPCTopic(22, 3, 0) -- Escaton topic 3 cleared
        return
    end
    evt.SetMessage("我的主人们把我造就为知识的持有者，而非赠予者。不过，也许你们已通过我的问题，把知识给了自己。我该问的都问完了，你们必须看看自己手头有什么。也许你们该反问这些答案。“监狱”暗示有囚犯。谁？“里面？”什么里面？还有“蛋”。什么样的蛋？鸟蛋？也许是某种像蛋的东西？")
end)

RegisterGlobalEvent(172, "Raiders", function()
    evt.SetMessage("有许多掠食者会趁巢穴虚弱之机来占便宜。我已经赶走了劫掠者……还有更糟的。洪水过后不久，佐格的一支巡逻队就来过。我打退了他们，但有几个逃脱了。我肯定他们会卷土重来，而且人数更多。")
    evt.SetNPCTopic(57, 2, 173) -- Thanys topic 2: Join
end)

RegisterGlobalEvent(173, "Join", function()
    evt.SetMessage("不！必须有人留在这里守卫巢穴，抵御那些蛮族劫掠者。等你帮完我的兽群再回来。那时我也许会考虑加入你们。")
end)

RegisterGlobalEvent(174, "Quest", function()
    evt.SetMessage("黄热病是一种让人虚弱的重病，每隔几年就会暴发一次。\n通常我们从大陆上备药，可如今桥都毁了，没人能到船坞！")
    evt.SetNPCTopic(65, 0, 175) -- Aislen topic 0: Quest
end)

RegisterGlobalEvent(175, "Quest", function()
    evt.SetMessage("拿着，这些治疗疾病的卷轴。\n也许我们至少能阻止一场瘟疫！\n外岛上的六座小屋都被感染了。\n若各岛间的传送器修好，你们就能把这些卷轴送到那些小屋。\n不幸的是，你们途中还得另外找三卷卷轴。")
    SetQBit(QBit(101)) -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
    evt.SetNPCTopic(65, 0, 176) -- Aislen topic 0: Have you stopped the epidemic?
    AddValue(InventoryItem(373), 373) -- Cure Disease
    AddValue(InventoryItem(373), 373) -- Cure Disease
    AddValue(InventoryItem(373), 373) -- Cure Disease
end)
RegisterCanShowTopic(175, function()
    evt._BeginCanShowTopic(175)
    local visible = true
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(176, "你阻止了传染病吗？", function()
    evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
    ClearQBit(QBit(101)) -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    SetAward(Award(18)) -- Stopped the Yellow Fever Epidemic on Dagger Wound Island
    evt.SetNPCTopic(65, 0, 661) -- Aislen topic 0: Pirate Raids
end)
RegisterCanShowTopic(176, function()
    evt._BeginCanShowTopic(176)
    local visible = true
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(177, "Quest", function()
    evt.SetMessage("我听说黄热病又在人群中蔓延。\n通常，主岛上的水源是疾病的主要来源。\n从前一发病，我们就从大陆取圣草药水。\n可如今到不了船坞，我们就拿不到这必需的药。\n你们若能找到去大陆的路，也许渡鸦海滨的走私者有解药。\n你们若能弄到圣药水，带回来给我！")
    SetQBit(QBit(109)) -- Find and return an Anointed Potion to Languid in the Dagger Wound Islands.
    evt.SetNPCTopic(66, 0, 178) -- Languid topic 0: Do you have the antidote?
end)
RegisterCanShowTopic(177, function()
    evt._BeginCanShowTopic(177)
    local visible = true
    if IsQBitSet(QBit(110)) then -- Poison removed from water supply!
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(178, "你有解毒剂吗？", function()
    evt.ForPlayer(Players.All)
    if not HasItem(616) then -- Anointed Herb Potion
        evt.SetMessage("没有圣草药水，我们就无法清除水源里的毒！")
        return
    end
    evt.SetMessage("谢谢！\n我这就去把它投进水源！")
    RemoveItem(616) -- Anointed Herb Potion
    evt.ForPlayer(Players.All)
    AddValue(Experience, 7500)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 2000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(109)) -- Find and return an Anointed Potion to Languid in the Dagger Wound Islands.
    ClearQBit(QBit(245)) -- Annointed Herb Potion - I lost it!
    SetQBit(QBit(110)) -- Poison removed from water supply!
    SetQBit(QBit(1552)) -- Brought the Annointed Herb Potion to Languid on the Dagger Wound Islands.
    evt.SetNPCTopic(66, 0, 0) -- Languid topic 0 cleared
end)

RegisterGlobalEvent(179, "纯粹速度药剂", function()
    evt.SetMessage("也许你能替我带来配制极速药水所需的基本材料？\n有了它们，我就能配制这剂不可思议的药水，完成我的炼金术研究！\n我会好好酬谢你的帮助！")
    SetQBit(QBit(113)) -- Bring Thistle on the Dagger Wound Islands the basic ingredients for a potion of Pure Speed.
    evt.SetNPCTopic(68, 0, 0) -- Thistle topic 0 cleared
end)
RegisterCanShowTopic(179, function()
    evt._BeginCanShowTopic(179)
    local visible = true
    if IsQBitSet(QBit(113)) then -- Bring Thistle on the Dagger Wound Islands the basic ingredients for a potion of Pure Speed.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(180, "Ingredients", function()
    evt.SetMessage("黑色药水是由三种基本炼金试剂的多种复杂调和而成。红色试剂包括寡妇扫浆果、狼眼和高戈之血小瓶。\n一些蓝色试剂是凤凰羽、菲玛根、流星碎片和鬼火之心。\n一些黄色试剂是曼陀罗、龙龟牙、罂粟荚和荆皮。")
end)

RegisterGlobalEvent(181, "你取得配方了吗？", function()
    if not evt.CheckItemsCount(200, 204, 4) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(205, 209, 2) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(210, 214, 1) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    evt.SetMessage("材料！\n谢谢！\n收下这个作为奖赏！")
    evt.RemoveItems(200, 204, 4)
    evt.RemoveItems(205, 209, 2)
    evt.RemoveItems(210, 214, 1)
    ClearQBit(QBit(113)) -- Bring Thistle on the Dagger Wound Islands the basic ingredients for a potion of Pure Speed.
    SetQBit(QBit(114)) -- returned ingredients for a potion of Pure Speed
    AddValue(InventoryItem(265), 265) -- Pure Speed
    evt.ForPlayer(Players.All)
    AddValue(Experience, 1000)
    evt.SetNPCTopic(68, 2, 0) -- Thistle topic 2 cleared
end)
RegisterCanShowTopic(181, function()
    evt._BeginCanShowTopic(181)
    local visible = true
    if IsQBitSet(QBit(113)) then -- Bring Thistle on the Dagger Wound Islands the basic ingredients for a potion of Pure Speed.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(182, "Quest", function()
    evt.SetMessage("我想我也许知道如何遏止火山这股毁灭之力！\n我找到了一道古老法术，应能赋予我把火山送回大海的力量！为完成这道法术，我需要一件名叫蛇之偶像的古物。\n有了这件力量之物，我应能完成法术。")
    SetQBit(QBit(111)) -- Bring Hiss on the Dagger Wound Islands the Idol of the Snake from the Abandoned Temple.
    evt.SetNPCTopic(69, 0, 183) -- Hiss topic 0: Do you have the Idol?
end)
RegisterCanShowTopic(182, function()
    evt._BeginCanShowTopic(182)
    local visible = true
    if IsQBitSet(QBit(112)) then -- Found Idol of the Snake
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(183, "你取得圣像了吗？", function()
    evt.ForPlayer(Players.All)
    if not HasItem(630) then -- Idol of the Snake
        evt.SetMessage("偶像在哪儿？\n除非带着它，否则别浪费我的时间！")
        return
    end
    evt.SetMessage("感谢你带着偶像回来。\n进一步研究后，我发现整套法术毫无用处。\n不过这不是你的错，你为我把它带回，理应得到些酬谢！")
    evt.ForPlayer(Players.All)
    RemoveItem(630) -- Idol of the Snake
    AddValue(Experience, 7500)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 2000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(111)) -- Bring Hiss on the Dagger Wound Islands the Idol of the Snake from the Abandoned Temple.
    SetQBit(QBit(112)) -- Found Idol of the Snake
    SetQBit(QBit(1549)) -- Recovered Idol of the Snake for Hiss of Blood Drop village.
    evt.SetNPCTopic(69, 0, 0) -- Hiss topic 0 cleared
end)

RegisterGlobalEvent(184, "Quest", function()
    evt.SetMessage("在这一带出没的恐狼群，威胁着旅人与商贸。\n阿尔瓦的商人吩咐我雇些能干的人猎杀这些狼，用他们的话说，是“削减狼群数量”。\n你们看上去就是老练的冒险者！\n你们若能灭掉整群狼和它们巢穴里的东西，我会重谢你们。")
    SetQBit(QBit(139)) -- Kill all Dire Wolves in Ravenshore. Return to Maddigan in Ravenshore.
    evt.SetNPCTopic(71, 0, 186) -- Maddigan the Tracker topic 0: Finally!
end)

RegisterGlobalEvent(185, "猛狼皮", function()
    evt.SetMessage("每带回一张完整的恐狼皮，我付 250 金币。")
    evt.ForPlayer(Players.All)
    if HasItem(633) then -- Dire Wolf Pelt
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 250)
        evt.ForPlayer(Players.All)
        RemoveItem(633) -- Dire Wolf Pelt
        return
    end
    evt.SetMessage("你没有更多狼皮，有了再回来！")
end)

RegisterGlobalEvent(186, "终于！", function()
    evt.SetMessage("你消灭了这一带所有的恐狼！\n旅人们又安全了。不过，我现在得另找一门新生意了！")
    AddValue(Gold, 2500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 7500)
    ClearQBit(QBit(139)) -- Kill all Dire Wolves in Ravenshore. Return to Maddigan in Ravenshore.
    SetQBit(QBit(1553)) -- Killed all of the Dire Wolves in the Ravenshore area.
    evt.SetNPCTopic(71, 0, 0) -- Maddigan the Tracker topic 0 cleared
end)
RegisterCanShowTopic(186, function()
    evt._BeginCanShowTopic(186)
    local visible = true
    if IsQBitSet(QBit(140)) then -- Killed all Dire Wolves in Ravenshore
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(187, "Quest", function()
    if not IsQBitSet(QBit(120)) then -- Rescued Smuggler Leader's Familly
        evt.SetMessage("阿尔瓦商人把我的家人安置在他们所谓的“保护性监护”中，以此要挟我为他们效力。可是，载着我家人的商队返回阿尔瓦途中，遭到食人魔和强盗袭击。\n食人魔佐格把我的家人掳走了！\n他把他们带到他在阿尔瓦地区的堡垒里。\n如今我得替他监视阿尔瓦商人。\n我照做，家人就活着。\n我一停手，他们就死。\n你能替我救出他们吗？")
        SetQBit(QBit(119)) -- Rescue Arion Hunter's daughter from Ogre Fortress in Alvar.
        return
    end
    evt.SetMessage("我的家人回来了，告诉我你是怎么救他们的。\n转告阿尔瓦商人，他们不必再依赖我们的“交易”了。\n我会信守对他们和对你的承诺，我的船永远听你们调遣！")
    ClearQBit(QBit(120)) -- Rescued Smuggler Leader's Familly
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    SetQBit(QBit(1551)) -- Rescued Irabelle Hunter from the Ogre Fortress in Alvar.
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 10000)
    evt.SetNPCTopic(4, 2, 0) -- Arion Hunter topic 2 cleared
end)

RegisterGlobalEvent(188, "Quest", function()
    evt.SetMessage("我定期把阿尔瓦商人的活动报告送给在雷格那岛“海盗安息”酒馆里的恐怖海盗斯坦利。如今商人已“买下”我的协助，我们必须递上一份假报告，免得斯坦利起疑。\n把这份报告送到雷格那岛哈雷克斯堡给他！")
    SetQBit(QBit(117)) -- Deliver fake report to the Dread Pirate Stanley in the Pirate's Rest Tavern on the Island of Regna.
    SetQBit(QBit(282)) -- False Report - I lost it!
    AddValue(InventoryItem(602), 602) -- False Report
    evt.SetNPCTopic(4, 1, 189) -- Arion Hunter topic 1: Report has been delivered?
end)
RegisterCanShowTopic(188, function()
    evt._BeginCanShowTopic(188)
    local visible = true
    if IsQBitSet(QBit(118)) then -- Delivered false report to Stanley
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(189, "报告送到了吗？", function()
    evt.SetMessage("你把报告交给斯坦利了？\n这至少能为我们争取些时间，免得他对渡鸦海滨这里的活动和阿尔瓦商人起疑。")
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    evt.SetNPCTopic(4, 1, 299) -- Arion Hunter topic 1: Fate of Jadame
end)
RegisterCanShowTopic(189, function()
    evt._BeginCanShowTopic(189)
    local visible = true
    if IsQBitSet(QBit(118)) then -- Delivered false report to Stanley
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(190, "神选药剂", function()
    evt.SetMessage("我听说你在找圣草药水来净化水源。\n贾丹姆的走私者经手各种稀奇货物。\n要说谁知道、或谁有这种圣草药水，那一定是他们！")
end)
RegisterCanShowTopic(190, function()
    evt._BeginCanShowTopic(190)
    local visible = true
    if IsQBitSet(QBit(109)) then -- Find and return an Anointed Potion to Languid in the Dagger Wound Islands.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(191, "半蛇人皮", function()
    evt.SetMessage("阿尔瓦的黑暗精灵肯出高价买娜迦皮制的皮革。娜迦皮一经处理鞣制，几乎比黑暗精灵的一生还耐久！")
end)

RegisterGlobalEvent(192, "500个金币！", function()
    evt.SetMessage("你每带来一张娜迦皮，我付 500 金币。")
    evt.ForPlayer(Players.All)
    if HasItem(632) then -- Naga Hide
        RemoveItem(632) -- Naga Hide
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 500)
        return
    end
    evt.SetMessage("你一张娜迦皮都没有！\n你在浪费我的时间！")
end)

RegisterGlobalEvent(193, "Quest", function()
    evt.SetMessage("许多十年前，传奇的太阳牧师卡米恩·斯莱斯率领一支十字军，征讨阴影塔的死灵法师公会。\n公会在同样栖身阴影塔地区的吸血鬼协助下击败了斯莱斯的军队。\n卡米恩·斯莱斯上战场时随身带着那件名叫“日食”的牧师宝物。\n在最后一战中，斯莱斯被一名诺斯费拉图击倒，那面盾牌也失落了。")
    SetQBit(QBit(127)) -- Recover the shield, Eclipse, for Lathius in Ravenshore.
    evt.SetNPCTopic(73, 0, 194) -- Lathius topic 0: Eclipse
end)
RegisterCanShowTopic(193, function()
    evt._BeginCanShowTopic(193)
    local visible = true
    if IsQBitSet(QBit(128)) then -- Recovered the the Shield, Eclipse for Lathius
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(194, "Eclipse", function()
    evt.ForPlayer(Players.All)
    if not HasItem(516) then -- Eclipse
        evt.SetMessage("日食在哪儿？\n找到那面盾牌再回来见我！")
        return
    end
    evt.SetMessage("你寻回了日食之盾？\n神殿感谢你寻回这件强大宝物。\n请继续带着这面盾牌，它蒙着我们的祝福。")
    evt.ForPlayer(Players.All)
    AddValue(Experience, 25000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 2000)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(127)) -- Recover the shield, Eclipse, for Lathius in Ravenshore.
    ClearQBit(QBit(283)) -- Eclipse - I lost it!
    SetQBit(QBit(128)) -- Recovered the the Shield, Eclipse for Lathius
    SetQBit(QBit(1550)) -- Found the shield Eclipse.
    evt.SetNPCTopic(73, 0, 703) -- Lathius topic 0: Use Eclipse well!
end)

RegisterGlobalEvent(195, "Delicacy", function()
    evt.SetMessage("皇家黄蜂冻是珍馐！\n上等商人几乎每餐都要享用这道美味！")
end)

RegisterGlobalEvent(196, "1000个金币", function()
    evt.SetMessage("我出 1000 金币收购皇家黄蜂冻！")
end)

RegisterGlobalEvent(197, "黄蜂蜂王胶", function()
    -- Missing legacy show message text 0
    evt.ForPlayer(Players.All)
    if HasItem(635) then -- Royal Wasp Jelly
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 1000)
        evt.ForPlayer(Players.All)
        RemoveItem(635) -- Royal Wasp Jelly
        return
    end
    evt.SetMessage("带着黄蜂冻再回来，我就付钱给你！")
end)

RegisterGlobalEvent(198, "Quest", function()
    if IsQBitSet(QBit(130)) then -- Killed all Ogres in Alvar canyon area and in Ogre Fortress
        evt.SetMessage("太好了！\n既然食人魔已被清出道路、不再占据堡垒，通往渡鸦海滨、铁沙和低语森林的路又安全了！\n请收下这 5000 金币作为奖赏！")
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 5000)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 10000)
        SetAutonote(500) -- Killed all of the Ogres in the Alvar region.
        ClearQBit(QBit(129)) -- Kill all Ogres in the Alvar canyon area and in Ogre Fortress and return to Keldon in Alvar.
        evt.SetNPCTopic(76, 0, 200) -- Keldon topic 0: It's safe to travel again!
        return
    elseif IsQBitSet(QBit(129)) then -- Kill all Ogres in the Alvar canyon area and in Ogre Fortress and return to Keldon in Alvar.
        evt.SetMessage("你还没有消灭所有食人魔！\n不把它们灭掉，道路就不会安全！")
    else
        evt.SetMessage("就在那道亮光划过夜空前后，食人魔法师佐格的部众搬进了这一带。\n他们骚扰甚至杀害想前往阿尔瓦城的旅人。你们若能消灭所有骚扰通往阿尔瓦道路的食人魔，以及阿尔瓦城附近堡垒里的食人魔，就是为阿尔瓦立了大功。\n把这一带的食人魔杀光后再回来，我会酬谢你们。")
        SetQBit(QBit(129)) -- Kill all Ogres in the Alvar canyon area and in Ogre Fortress and return to Keldon in Alvar.
    end
end)

RegisterGlobalEvent(199, "食人妖耳朵的悬赏", function()
    evt.SetMessage("一枚食人魔耳朵，我付 500 金币。\n阿尔瓦商人公会支持我向任何能杀死食人魔的人支付这笔悬赏。")
    evt.ForPlayer(Players.All)
    if HasItem(653) then -- Ogre Ear
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 500)
        evt.ForPlayer(Players.All)
        RemoveItem(653) -- Ogre Ear
        return
    end
    evt.SetMessage("想领赏，就带着食人魔耳朵回来见我！")
end)

RegisterGlobalEvent(200, "又可以安全的旅行了！", function()
    evt.SetMessage("太好了！\n既然食人魔已被清出道路、不再占据堡垒，通往渡鸦海滨、铁沙和低语森林的路又安全了！\n")
end)

RegisterGlobalEvent(201, "纯粹运气药剂", function()
    evt.SetMessage("一瓶纯运药水对任何商人都大有帮助。\n运气到顶的人，随便都能撞上大把好买卖！\n把配制纯运药水的基本材料带给我，我会重谢你们！")
    SetQBit(QBit(115)) -- Bring Rihansi in Alvar the basic ingredients for a potion of Pure Luck.
    evt.SetNPCTopic(74, 0, 0) -- Rihansi topic 0 cleared
end)
RegisterCanShowTopic(201, function()
    evt._BeginCanShowTopic(201)
    local visible = true
    if IsQBitSet(QBit(115)) then -- Bring Rihansi in Alvar the basic ingredients for a potion of Pure Luck.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(202, "Ingredients", function()
    evt.SetMessage("黑色药水是由三种基本炼金试剂的多种复杂调和而成。红色试剂包括寡妇扫浆果、狼眼和高戈之血小瓶。\n一些蓝色试剂是凤凰羽、菲玛根、流星碎片和鬼火之心。\n一些黄色试剂是曼陀罗、龙龟牙、罂粟荚和荆皮。")
end)

RegisterGlobalEvent(203, "你取得配方了吗？", function()
    if not evt.CheckItemsCount(200, 204, 2) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(205, 209, 3) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(210, 214, 3) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    evt.SetMessage("太好了！\n有了它，我就能再酿一瓶纯运药水。\n把这瓶药水当作你的奖赏！")
    evt.RemoveItems(200, 204, 2)
    evt.RemoveItems(205, 209, 3)
    evt.RemoveItems(210, 214, 3)
    ClearQBit(QBit(115)) -- Bring Rihansi in Alvar the basic ingredients for a potion of Pure Luck.
    SetQBit(QBit(116)) -- returned ingredients for a potion of Pure Luck
    AddValue(InventoryItem(264), 264) -- Pure Luck
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    evt.SetNPCTopic(74, 2, 0) -- Rihansi topic 2 cleared
end)
RegisterCanShowTopic(203, function()
    evt._BeginCanShowTopic(203)
    local visible = true
    if IsQBitSet(QBit(115)) then -- Bring Rihansi in Alvar the basic ingredients for a potion of Pure Luck.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(204, "黄蜂刺", function()
    evt.SetMessage("黄蜂尾刺！\n从感冒药到花草茶，一点点磨碎的黄蜂尾刺用处可大了！\n别信那些卖劣质磨碎双角龙角的家伙！\n要最好的，就得用黄蜂尾刺！\n你每带来一根尾刺，我都付钱！")
end)

RegisterGlobalEvent(205, "500个金币！", function()
    evt.SetMessage("你每带来一根黄蜂尾刺，我付 500 金币！")
    evt.ForPlayer(Players.All)
    if HasItem(654) then -- Wasp Stingers
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 500)
        evt.ForPlayer(Players.All)
        RemoveItem(654) -- Wasp Stingers
        return
    end
    evt.SetMessage("我只收黄蜂尾刺！\n不多不少！")
end)

RegisterGlobalEvent(206, "生存！", function()
    evt.SetMessage("巨魔天生怕火！\n火门打开、火湖涌出时，我们许多人都丧了命！没有合适的防护，我们什么也做不了。")
end)

RegisterGlobalEvent(207, "Quest", function()
    evt.SetMessage("这一带的幸存者需要火抗药水！\n有了它们，我们就能撑到找到迁居之地！\n拿上这些药水！\n可惜我只有这些了！\n把它们送到铁锈镇村幸存的、最南边的六座房子！")
    SetQBit(QBit(142)) -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
    AddValue(InventoryItem(256), 256) -- Fire Resistance
    AddValue(InventoryItem(256), 256) -- Fire Resistance
    AddValue(InventoryItem(256), 256) -- Fire Resistance
    evt.SetNPCTopic(84, 1, 208) -- Pole topic 1: Not enough potions?
end)
RegisterCanShowTopic(207, function()
    evt._BeginCanShowTopic(207)
    local visible = true
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(208, "没有足够的药剂吗？", function()
    if not IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你还没有把火抗药水送到所有房子！\n火湖一旦扩大，所有人都得死！")
        return
    end
    evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    SetAutonote(499) -- Brought Potions of Fire Resistance to the southern houses of Rust.
    ClearQBit(QBit(142)) -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
    evt.SetNPCTopic(84, 1, 209) -- Pole topic 1: The village can hold its own.
end)

RegisterGlobalEvent(209, "村子靠自己也能守住。", function()
    evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
end)

RegisterGlobalEvent(210, "纯粹耐力药剂", function()
    evt.SetMessage("耐力。\n让战士站稳脚跟，或在他滑入昏迷时温柔托住他的能力。\n一瓶纯耐药水能把一个人承受伤害的能力提升到传奇境界！\n把纯耐药水的基本材料带给我，我会重谢你们。")
    SetQBit(QBit(121)) -- Bring Talion in the Ironsand Desert the basic ingredients for a potion of Pure Endurance.
    evt.SetNPCTopic(78, 0, 212) -- Talion topic 0: Do you have the Ingredients?
end)
RegisterCanShowTopic(210, function()
    evt._BeginCanShowTopic(210)
    local visible = true
    if IsQBitSet(QBit(121)) then -- Bring Talion in the Ironsand Desert the basic ingredients for a potion of Pure Endurance.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(211, "Ingredients", function()
    evt.SetMessage("黑色药水是由三种基本炼金试剂的多种复杂调和而成。红色试剂包括寡妇扫浆果、狼眼和高戈之血小瓶。\n一些蓝色试剂是凤凰羽、菲玛根、流星碎片和鬼火之心。\n一些黄色试剂是曼陀罗、龙龟牙、罂粟荚和荆皮。")
end)

RegisterGlobalEvent(212, "你取得配方了吗？", function()
    if not evt.CheckItemsCount(200, 204, 2) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(205, 209, 4) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(210, 214, 1) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    evt.SetMessage("太好了！\n有了它，我就能再酿一瓶纯运药水。\n把这瓶药水当作你的奖赏！")
    evt.RemoveItems(200, 204, 2)
    evt.RemoveItems(205, 209, 4)
    evt.RemoveItems(210, 214, 1)
    ClearQBit(QBit(121)) -- Bring Talion in the Ironsand Desert the basic ingredients for a potion of Pure Endurance.
    SetQBit(QBit(122)) -- returned ingredients for a potion of Pure Endurance
    AddValue(InventoryItem(267), 267) -- Pure Endurance
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    evt.SetNPCTopic(78, 2, 0) -- Talion topic 2 cleared
end)
RegisterCanShowTopic(212, function()
    evt._BeginCanShowTopic(212)
    local visible = true
    if IsQBitSet(QBit(121)) then -- Bring Talion in the Ironsand Desert the basic ingredients for a potion of Pure Endurance.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(213, "Quest", function()
    evt.SetMessage("屠龙花有许多药用之处。\n也有一些不那么药用的用途。\n从这种花里，我们能蒸馏出一种对龙致命的毒药。\n有了它，我们就能迅速收拾掉这一带滋生的龙患。\n找到这种花，带回来给我。\n我的酬谢不会让你失望。")
    SetQBit(QBit(150)) -- Find a Dragonbane Flower for Calindril in Garrote Gorge.
    evt.SetNPCTopic(87, 0, 214) -- Calindril topic 0: Poison!
end)
RegisterCanShowTopic(213, function()
    evt._BeginCanShowTopic(213)
    local visible = true
    if IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(214, "有毒！", function()
    evt.ForPlayer(Players.All)
    if not HasItem(636) then -- Dragonbane Flower
        evt.SetMessage("我要的是屠龙花，你却空手而归。\n何必浪费我的时间？")
        return
    end
    SetQBit(QBit(151)) -- Found Dragonbane for Dragon Hunters
    ClearQBit(QBit(150)) -- Find a Dragonbane Flower for Calindril in Garrote Gorge.
    RemoveItem(636) -- Dragonbane Flower
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    SetAutonote(501) -- Found the Dragonbane flower for Calindril in the Garrote Gorge Dragon Hunter's Fort.
    evt.SetMessage("绞刑峡谷的龙，对一种可从稀有的屠龙花中蒸馏出的毒药没有抵抗力。\n这种花也是龙毒唯一的解药来源。")
    evt.SetNPCTopic(87, 0, 215) -- Calindril topic 0: Thanks for your help!
end)

RegisterGlobalEvent(215, "多谢你的帮助！", function()
    evt.SetMessage("是的，这确是屠龙花。\n一旦我们蒸馏出毒药，就会把龙族彻底铲除！")
end)

RegisterGlobalEvent(216, "Quest", function()
    evt.SetMessage("屠龙花有许多药用之处。\n也有一些不那么药用的用途。\n从这种花里可以制成对龙致命的毒药，而花瓣里也藏着这毒的解药。找到这种花，带回来给我。\n我的酬谢不会让你失望。")
    SetQBit(QBit(152)) -- Find a Dragonbane Flower for the Balion Tearwing in the Garrote Gorge Dragon Caves.
    evt.SetNPCTopic(89, 0, 217) -- Balion Tearwing topic 0: Poison!
end)
RegisterCanShowTopic(216, function()
    evt._BeginCanShowTopic(216)
    local visible = true
    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(217, "有毒！", function()
    evt.ForPlayer(Players.All)
    if not HasItem(636) then -- Dragonbane Flower
        evt.SetMessage("我要的是屠龙花，你却空手而归。\n何必浪费我的时间？")
        return
    end
    SetQBit(QBit(153)) -- Found Dragonbane for Dragons
    ClearQBit(QBit(152)) -- Find a Dragonbane Flower for the Balion Tearwing in the Garrote Gorge Dragon Caves.
    RemoveItem(636) -- Dragonbane Flower
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    SetAutonote(502) -- Found the Dragonbane flower for Balion Tearwing in Garrote Gorge.
    evt.SetMessage("绞刑峡谷的龙，对一种可从稀有的屠龙花中蒸馏出的毒药没有抵抗力。\n这种花也是龙毒唯一的解药来源。")
    evt.SetNPCTopic(89, 0, 218) -- Balion Tearwing topic 0: Thanks for your help!
end)

RegisterGlobalEvent(218, "多谢你的帮助！", function()
    evt.SetMessage("是的，这确是屠龙花。\n一旦服食花瓣，我们就能抵御屠龙者用来对付我们的毒药。\n")
end)

RegisterGlobalEvent(219, "Quest", function()
    if IsQBitSet(QBit(155)) then -- Killed all Dragons in Garrote Gorge Area
        ClearQBit(QBit(154)) -- Kill all the Dragons in the Garrote Gorge wilderness area. Return to Avalon in Garrote Gorge.
        evt.SetMessage("荒野上所有的龙都被击败后，我们就能攻打龙穴，一劳永逸地除掉龙患！\n再次感谢你们帮我们击败它们。")
        AddValue(Gold, 2500)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 20000)
        SetAutonote(503) -- Killed all of the Dragons in the Garrote Gorge area for Avalon in the Garrote Gorge Dragon Hunter's Fort.
        evt.SetNPCTopic(90, 0, 220) -- Avalon topic 0: At last!
        return
    elseif IsQBitSet(QBit(154)) then -- Kill all the Dragons in the Garrote Gorge wilderness area. Return to Avalon in Garrote Gorge.
        evt.SetMessage("你还没有杀光所有鼠辈。\n我这里有报告说，这一带仍有龙出没。\n把它们全杀光再回来！")
    else
        evt.SetMessage("你想博取查尔斯·奇克奥的好感？\n帮我们征讨绞刑峡谷的龙。若这一带和龙穴里的龙全被杀光，查尔斯·奇克奥定会听到你的名字！等它们全死了再回来见我！\n我会重谢你们。")
        SetQBit(QBit(154)) -- Kill all the Dragons in the Garrote Gorge wilderness area. Return to Avalon in Garrote Gorge.
    end
end)
RegisterCanShowTopic(219, function()
    evt._BeginCanShowTopic(219)
    local visible = true
    if IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(220, "终于！", function()
    evt.SetMessage("你杀光了那些鼠辈！\n这是我答应的奖赏！\n我还会亲自向查尔斯·奇克奥提及你的协助！")
end)

RegisterGlobalEvent(221, "Quest", function()
    if IsQBitSet(QBit(158)) then -- Killed all Dragon Hunters in Garrote Gorge wilderness area
        evt.SetMessage("荒野上所有的屠龙者都被击败后，我们就能攻打他们的营地，一劳永逸地除掉他们！\n再次感谢你们帮我们击败他们。")
        AddValue(Gold, 2500)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 20000)
        SetAutonote(504) -- Killed all of the Dragon Hunters in the Garrote Gorge are for Jerin Flame-eye in the Dragon Cave of Garrote Gorge.
        ClearQBit(QBit(157)) -- Kill all the Dragon Hunter's in the Garrote Gorge wilderness area. Return to Jerin Flame-eye in the Garrote Gorge Dragon Caves.
        evt.SetNPCTopic(91, 0, 222) -- Jerin Flame-eye topic 0: Land is ours yet again!
        return
    elseif IsQBitSet(QBit(157)) then -- Kill all the Dragon Hunter's in the Garrote Gorge wilderness area. Return to Jerin Flame-eye in the Garrote Gorge Dragon Caves.
        evt.SetMessage("你还没有杀光所有屠龙者。\n一小队刚回来，报告说在平原上看到了他们。\n把他们全杀光再回来！")
    else
        evt.SetMessage("你想博取巧爪·掠夺者的好感？\n谁不想呢？\n你若杀光绞刑峡谷荒野上的所有屠龙者，我一定向他提及你。\n我还能给你一份丰厚的酬谢！")
        SetQBit(QBit(157)) -- Kill all the Dragon Hunter's in the Garrote Gorge wilderness area. Return to Jerin Flame-eye in the Garrote Gorge Dragon Caves.
    end
end)
RegisterCanShowTopic(221, function()
    evt._BeginCanShowTopic(221)
    local visible = true
    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(222, "现在一切又都回复原状了！", function()
    evt.SetMessage("查尔斯·奇克奥那帮地狱屠龙者都死了？好极了！\n我们又能安心享受绞刑峡谷的太平了。\n这是答应你的奖赏！\n我这就去向巧爪·掠夺者禀报你的英勇！")
end)

RegisterGlobalEvent(223, "Quest", function()
    evt.SetMessage("要想最终灭掉这一带的龙，就必须夺回胜利之鼓。\n你若把鼓夺回来，我会重谢你！")
    SetQBit(QBit(160)) -- Find the Legendary Drum of Victory. Return it to Zelim in Garrote Gorge.
    evt.SetNPCTopic(92, 0, 225) -- Zelim topic 0: Where is the drum?
end)

RegisterGlobalEvent(224, "胜利之鼓的历史", function()
    evt.SetMessage("胜利之鼓是查尔斯·奇克奥带来的。\n它震耳欲聋的声响，能让任何听见的龙心生恐惧。\n不幸的是，在奇克奥试图于绞刑峡谷建立城堡时，它在与娜迦的一场战斗中失落了。")
end)

RegisterGlobalEvent(225, "鼓在哪里？", function()
    evt.ForPlayer(Players.All)
    if not HasItem(615) then -- Drum of Victory
        evt.SetMessage("带着胜利之鼓再回来。\n否则你我都是在浪费时间！")
        return
    end
    evt.SetMessage("你带着胜利之鼓回来了！\n查尔斯会感激它的归来！\n这是答应你的奖赏。")
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(160)) -- Find the Legendary Drum of Victory. Return it to Zelim in Garrote Gorge.
    ClearQBit(QBit(246)) -- Drum of Victory - I lost it!
    RemoveItem(615) -- Drum of Victory
    AddValue(Experience, 20000)
    evt.SetNPCTopic(92, 0, 0) -- Zelim topic 0 cleared
end)

RegisterGlobalEvent(226, "Quest", function()
    evt.SetMessage("死灵法师公会寻找末日之骨已有多年。\n这件强大宝物一旦寻回，对他们大有用处。\n你若找到它带给我，得到的酬谢将超出你最狂野的梦想。")
    SetQBit(QBit(166)) -- Find the Bone of Doom for Tantilion of Shadowspire.
    evt.SetNPCTopic(93, 0, 228) -- Tantilion topic 0: Great!
end)

RegisterGlobalEvent(227, "骨头的历史", function()
    evt.SetMessage("在几乎被遗忘的时代，一位名叫撒迦利亚的强大死灵法师几乎统治了整个贾丹姆。\n他对死灵黑暗技艺与元素魔法的精通，结合着对黑暗能量非自然的强大亲和力。他的不死军团帮他奴役了所有民族，包括阿尔瓦的黑暗精灵。\n太阳神殿制定了击败撒迦利亚的计划。\n他们集合神殿全体牧师之力，铸造了那把名叫索尔克里斯的剑。\n神殿暗精尊者率领太阳军团对抗撒迦利亚的部众。\n战事迁延多年，太阳神殿的军队最终打到可怕的阴影塔脚下。\n在那儿，暗精尊者与撒迦利亚一对一决战。战斗结束时，暗精尊者与撒迦利亚双双倒地身亡。\n暗精尊者斩下了撒迦利亚的左臂，而死灵法师最后一道法术也停了暗精尊者的心脏。\n索尔克里斯剑的力量瞬间斩杀了死灵法师。\n战后的混乱中，索尔克里斯与撒迦利亚的手臂一同永远消失了。\n这只手臂上的骨头浸透了黑暗魔法，因而被称为末日之骨。")
end)

RegisterGlobalEvent(228, "太好了！", function()
    evt.ForPlayer(Players.All)
    if not HasItem(637) then -- Bone of Doom
        evt.SetMessage("我要的是骨头，你却空着手回来。走开！")
        return
    end
    evt.SetMessage("啊，末日之骨！\n撒迦利亚的传说将继续下去！\n这是你的奖赏！")
    AddValue(Gold, 1500)
    ClearQBit(QBit(166)) -- Find the Bone of Doom for Tantilion of Shadowspire.
    ClearQBit(QBit(247)) -- Bone of Doom - I lost it!
    evt.ForPlayer(Players.All)
    RemoveItem(637) -- Bone of Doom
    AddValue(Experience, 7500)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 7500)
    evt.SetNPCTopic(93, 0, 0) -- Tantilion topic 0 cleared
end)

RegisterGlobalEvent(229, "Quest", function()
    evt.SetMessage("有人说伊瑟迪尔的魔盒受了诅咒，使用它会让主人慢慢发疯。\n这不可能是真的！\n我所有的研究都足以证明，这盒子是贾丹姆的终极游戏——而不是那荒唐的卡牌游戏“阿卡牌”。\n最后一位有记载的伊瑟迪尔魔盒主人是赞索拉，也就是人称阴影塔疯狂死灵法师的那位。")
    SetQBit(QBit(162)) -- Find Iseldir's Puzzle Box for Benefice of Shadowspire.
    evt.SetNPCTopic(94, 0, 231) -- Benefice topic 0: Hours of Enjoyment!
end)

RegisterGlobalEvent(230, "解谜的历史", function()
    evt.SetMessage("我请你寻回魔盒，你却空着手回来。\n那你的酬谢就是零。\n带着盒子回来！")
end)

RegisterGlobalEvent(231, "可以玩上好久了！", function()
    evt.ForPlayer(Players.All)
    if not HasItem(613) then -- Puzzle Box
        evt.SetMessage("不带着魔盒，我不想再见到你！")
        return
    end
    evt.SetMessage("魔盒归我了！\n指尖就是无尽的消遣时光！\n拿着，这是你的奖赏——和这盒子相比，它算不了什么！")
    AddValue(Gold, 1500)
    ClearQBit(QBit(162)) -- Find Iseldir's Puzzle Box for Benefice of Shadowspire.
    ClearQBit(QBit(249)) -- Puzzle Box - I lost it!
    evt.ForPlayer(Players.All)
    RemoveItem(613) -- Puzzle Box
    AddValue(Experience, 15000)
    evt.SetNPCTopic(94, 0, 0) -- Benefice topic 0 cleared
end)

RegisterGlobalEvent(232, "纯粹智力药剂", function()
    evt.SetMessage("死灵法师最强大的能力是他的智力！\n智力不足，死灵法师在最需要法术点时会发现自己法术耗尽！你若带给我纯智药水的基本材料，我就以我亲手调制的药水酬谢你！")
    SetQBit(QBit(123)) -- Bring Kelvin in Shadowspire the basic ingredients for a potion of Pure Intellect.
    evt.SetNPCTopic(83, 0, 0) -- Kelvin topic 0 cleared
end)
RegisterCanShowTopic(232, function()
    evt._BeginCanShowTopic(232)
    local visible = true
    if IsQBitSet(QBit(123)) then -- Bring Kelvin in Shadowspire the basic ingredients for a potion of Pure Intellect.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(233, "在公会和神庙之间的战争", function()
    evt.SetMessage("几个世纪前，死灵法师公会与太阳神殿之间规模空前的一场大战，就发生在这地方！\n释放的魔法能量如此之巨，连大地都被灼烧，至今一片漆黑！")
end)

RegisterGlobalEvent(234, "你取得配方了吗？", function()
    if not evt.CheckItemsCount(200, 204, 1) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(205, 209, 2) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(210, 214, 4) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    evt.SetMessage("你带着材料回来了，信守了交易。\n这是你的纯智药水。")
    evt.RemoveItems(200, 204, 1)
    evt.RemoveItems(205, 209, 2)
    evt.RemoveItems(210, 214, 4)
    ClearQBit(QBit(123)) -- Bring Kelvin in Shadowspire the basic ingredients for a potion of Pure Intellect.
    SetQBit(QBit(124)) -- returned ingredients for a potion of Pure Intellect
    AddValue(InventoryItem(266), 266) -- Pure Intellect
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    evt.SetNPCTopic(83, 2, 0) -- Kelvin topic 2 cleared
end)
RegisterCanShowTopic(234, function()
    evt._BeginCanShowTopic(234)
    local visible = true
    if IsQBitSet(QBit(123)) then -- Bring Kelvin in Shadowspire the basic ingredients for a potion of Pure Intellect.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(235, "Quest", function()
    evt.SetMessage("我们想让那个名叫科尔布的诺斯费拉图的灵魂安息。\n我们听到传闻，阴影塔的吸血鬼正设法复活这个远古邪恶。\n阴影塔地区的吸血鬼墓穴里藏着一瓶墓土，它是让科尔布复活的关键之物。\n替我们找到这瓶墓土，带回来给我们。\n我们将永远感激你，并重重酬谢你。")
    SetQBit(QBit(164)) -- Find a Vial of Grave Dirt. Return it to Halien in Shadowspire.
    evt.SetNPCTopic(95, 0, 237) -- Hallien topic 0: Do you have the vial?
end)

RegisterGlobalEvent(236, "墓土之瓶", function()
    evt.SetMessage("科尔布把他原墓的土分装成小瓶散落各处，以自保。\n这样他随时能取用墓土，必要时迁移墓穴。")
end)

RegisterGlobalEvent(237, "你拿到装土的瓶子了吗？", function()
    evt.ForPlayer(Players.All)
    if not HasItem(614) then -- Vial of Grave Earth
        evt.SetMessage("墓土小瓶在哪儿？\n没拿到之前别来烦我！")
        return
    end
    evt.SetMessage("啊，一旦我们对这土举行净化仪式，科尔布将永远安息。\n我们欠你的人情，这就是答应你的奖赏！")
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    RemoveItem(614) -- Vial of Grave Earth
    ClearQBit(QBit(164)) -- Find a Vial of Grave Dirt. Return it to Halien in Shadowspire.
    ClearQBit(QBit(248)) -- Vial of Grave Dirt - I lost it!
    AddValue(Experience, 22000)
    evt.SetNPCTopic(95, 0, 0) -- Hallien topic 0 cleared
end)

RegisterGlobalEvent(238, "纯粹个性药剂", function()
    evt.SetMessage("个性——牧师最真实的力量。\n你若带给我纯个药水的基本材料，我会非常乐意为你酿一瓶！\n把材料带给我！")
    SetQBit(QBit(125)) -- Bring Castigeir in Murmurwoods the basic ingredients for a potion of Pure Personality.
    evt.SetNPCTopic(88, 0, 0) -- Castigeir topic 0 cleared
end)
RegisterCanShowTopic(238, function()
    evt._BeginCanShowTopic(238)
    local visible = true
    if IsQBitSet(QBit(125)) then -- Bring Castigeir in Murmurwoods the basic ingredients for a potion of Pure Personality.
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(239, "Ingredients", function()
    evt.SetMessage("黑色药水是由三种基本炼金试剂的多种复杂调和而成。红色试剂包括寡妇扫浆果、狼眼和高戈之血小瓶。\n一些蓝色试剂是凤凰羽、菲玛根、流星碎片和鬼火之心。\n一些黄色试剂是曼陀罗、龙龟牙、罂粟荚和荆皮。")
end)

RegisterGlobalEvent(240, "多谢你的配方", function()
    if not evt.CheckItemsCount(200, 204, 1) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(205, 209, 4) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(210, 214, 2) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    evt.SetMessage("啊，你是学会了配方，还是运气好！\n这是你的药水！")
    evt.RemoveItems(200, 204, 1)
    evt.RemoveItems(205, 209, 4)
    evt.RemoveItems(210, 214, 2)
    ClearQBit(QBit(125)) -- Bring Castigeir in Murmurwoods the basic ingredients for a potion of Pure Personality.
    SetQBit(QBit(126)) -- returned ingredients for a potion of Pure Personallity
    AddValue(InventoryItem(268), 268) -- Pure Personality
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    evt.SetNPCTopic(88, 2, 0) -- Castigeir topic 2 cleared
end)
RegisterCanShowTopic(240, function()
    evt._BeginCanShowTopic(240)
    local visible = true
    if IsQBitSet(QBit(125)) then -- Bring Castigeir in Murmurwoods the basic ingredients for a potion of Pure Personality.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(241, "远古双角龙", function()
    evt.SetMessage("双角龙是贾丹姆大陆上最凶悍的生物之一。\n远古双角龙甚至能一击斩杀最强的冒险者。\n远古双角龙的角据说有许多药用与魔法功效。\n有许多人肯出高价收购磨碎的双角龙角。")
end)

RegisterGlobalEvent(242, "双角龙之角的赏金", function()
    evt.SetMessage("我以每支 1500 金币收购你的双角龙角！\n我把这些角磨碎，销往贾丹姆各地。\n但愿有朝一日能把它们渡海运到恩洛斯和埃拉西亚。\n当然，这要看雷格那海盗是否还是航运的麻烦！")
    evt.SetNPCTopic(85, 1, 243) -- Xevius topic 1: 1500 gold!
end)

RegisterGlobalEvent(243, "1500个金币！", function()
    evt.SetMessage("1500 金币！")
    evt.ForPlayer(Players.All)
    if HasItem(640) then -- Wyvern Horn
        evt.ForPlayer(Players.Member0)
        AddValue(Gold, 500)
        evt.ForPlayer(Players.All)
        RemoveItem(640) -- Wyvern Horn
        return
    end
    evt.SetMessage("带着更多双角龙角回来，我就付你更多钱！")
end)

RegisterGlobalEvent(244, "纯粹精确药剂", function()
    evt.SetMessage("在战斗中，精准决定谁生谁死。\n打不中对手，就必死无疑！\n你若带给我纯准药水的材料，我就为你酿这瓶药水。")
    SetQBit(QBit(133)) -- returned ingredients for a potion of Pure Accuracy
    evt.SetNPCTopic(77, 0, 0) -- Galvinus topic 0 cleared
end)
RegisterCanShowTopic(244, function()
    evt._BeginCanShowTopic(244)
    local visible = true
    if IsQBitSet(QBit(133)) then -- returned ingredients for a potion of Pure Accuracy
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(245, "Ingredients", function()
    evt.SetMessage("黑色药水是由三种基本炼金试剂的多种复杂调和而成。红色试剂包括寡妇扫浆果、狼眼和高戈之血小瓶。\n一些蓝色试剂是凤凰羽、菲玛根、流星碎片和鬼火之心。\n一些黄色试剂是曼陀罗、龙龟牙、罂粟荚和荆皮。")
end)

RegisterGlobalEvent(246, "你取得配方了吗？", function()
    if not evt.CheckItemsCount(200, 204, 2) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(205, 209, 1) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    if not evt.CheckItemsCount(210, 214, 4) then
        evt.SetMessage("你缺了全部或部分所需材料。\n备齐了再回来。")
        return
    end
    evt.SetMessage("啊，对的材料总是管用！这是你的药水。")
    evt.RemoveItems(200, 204, 2)
    evt.RemoveItems(205, 209, 1)
    evt.RemoveItems(210, 214, 4)
    ClearQBit(QBit(133)) -- returned ingredients for a potion of Pure Accuracy
    SetQBit(QBit(134)) -- Gave Gem of Restoration to Blazen Stormlance
    AddValue(InventoryItem(269), 269) -- Pure Accuracy
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    evt.SetNPCTopic(77, 2, 0) -- Galvinus topic 2 cleared
end)
RegisterCanShowTopic(246, function()
    evt._BeginCanShowTopic(246)
    local visible = true
    if IsQBitSet(QBit(133)) then -- returned ingredients for a potion of Pure Accuracy
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(247, "恐怖海盗史坦力的宝藏", function()
    evt.SetMessage("传闻传奇海盗斯坦利从阿尔瓦商人那里偷走了成千上万金币。\n从没人找到他把财宝藏在哪儿。\n有人说，宝藏甚至不在雷格那岛上。")
end)

RegisterGlobalEvent(248, "Riches", function()
    evt.SetMessage("多年以前，我记得听说斯坦利远赴残破镇，找食人魔法师佐格，商谈一桩降临到他身上的诅咒。\n显然他的记忆在衰退，而且他确信是某个邪恶法师搞的鬼。")
end)

RegisterGlobalEvent(249, "Quest", function()
    if not IsQBitSet(QBit(168)) then -- Found the treasure of the Dread Pirate Stanley!
        evt.SetMessage("你还没找到恐怖海盗斯坦利的宝藏！\n")
        SetQBit(QBit(236)) -- Find the treasure of the Dread Pirate Stanley.
        return
    end
    AddValue(Experience, 15500)
    evt.SetMessage("谁找到恐怖海盗斯坦利的宝藏，谁就发大财！\n那个人会是你吗？")
    ClearQBit(QBit(236)) -- Find the treasure of the Dread Pirate Stanley.
    evt.SetNPCTopic(96, 0, 0) -- One-Eye topic 0 cleared
end)

RegisterGlobalEvent(250, "用200个金币购买托伯斯克果", function()
    evt.SetMessage("托伯斯克果只产自匕伤岛一带。\n这里温和的冬天与湿润的夏天，为托伯斯克果达到恰到好处的糖度与汁水提供了完美条件。\n渡鸦海滨的果泥师傅肯出好价钱收购托伯斯克果。")
    ClearQBit(QBit(251)) -- Bought Item pulp
    if IsAtLeast(Gold, 200) then
        if not IsAtLeast(Gold, 200) then
            return
        end
        SubtractValue(Gold, 200)
        AddValue(InventoryItem(643), 643) -- Tobersk Fruit
        SetQBit(QBit(250)) -- Bought Item fruit
        SetQBit(QBit(259)) -- Can't keep buying fruit
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(250, function()
    evt._BeginCanShowTopic(250)
    local visible = true
    if IsQBitSet(QBit(252)) then -- Bought Item brandy
        visible = true
        return visible
    else
        if IsQBitSet(QBit(259)) then -- Can't keep buying fruit
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(251, "卖掉托伯斯克白兰地", function()
    evt.ForPlayer(Players.All)
    if not HasItem(645) then return end -- Tobersk Brandy
    evt.SetMessage("托伯斯克白兰地是匕伤岛蜥蜴人的最爱饮品。\n有人说它口味独特、需要适应。\n无论怎么看，它都是纯利！")
    RemoveItem(645) -- Tobersk Brandy
    ClearQBit(QBit(261)) -- Can't keep buying brandy
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 557)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 589)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 511)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 577)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 513)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 544)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 511)
        return
    else
        return
    end
end)

RegisterGlobalEvent(252, "购买托伯斯克果汁", function()
    evt.SetMessage("托伯斯克果在渡鸦海滨被加工成托伯斯克果泥。\n阿尔瓦的酿酒大师正是用这种果泥蒸馏出托伯斯克白兰地。")
    ClearQBit(QBit(250)) -- Bought Item fruit
    if IsAtLeast(Gold, 300) then
        if not IsAtLeast(Gold, 300) then
            return
        end
        SubtractValue(Gold, 300)
        AddValue(InventoryItem(644), 644) -- Tobersk Pulp
        SetQBit(QBit(251)) -- Bought Item pulp
        SetQBit(QBit(260)) -- Can't keep buying pulp
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(252, function()
    evt._BeginCanShowTopic(252)
    local visible = true
    if IsQBitSet(QBit(250)) then -- Bought Item fruit
        visible = true
        return visible
    else
        if IsQBitSet(QBit(260)) then -- Can't keep buying pulp
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(253, "卖掉托伯斯克果", function()
    evt.ForPlayer(Players.All)
    if not HasItem(643) then return end -- Tobersk Fruit
    evt.SetMessage("这里温和的冬天与湿润的夏天，为托伯斯克果达到恰到好处的糖度与汁水提供了完美条件。\n你可以在这里收购托伯斯克果，好让我们的果泥师傅辛苦劳作，把它加工成托伯斯克果泥。")
    RemoveItem(643) -- Tobersk Fruit
    ClearQBit(QBit(259)) -- Can't keep buying fruit
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 261)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 286)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 237)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 255)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 294)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 273)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 244)
        return
    else
        return
    end
end)

RegisterGlobalEvent(254, "以500个金币购买托伯斯克白兰地", function()
    evt.SetMessage("托伯斯克白兰地是匕伤岛蜥蜴人最爱喝的饮品。\n有人说它口味独特、需要适应。\n无论怎么看，它都是纯利！\n回岛路上，对瓶子轻拿轻放。")
    ClearQBit(QBit(251)) -- Bought Item pulp
    if IsAtLeast(Gold, 500) then
        if not IsAtLeast(Gold, 500) then
            return
        end
        SubtractValue(Gold, 500)
        AddValue(InventoryItem(645), 645) -- Tobersk Brandy
        SetQBit(QBit(252)) -- Bought Item brandy
        SetQBit(QBit(261)) -- Can't keep buying brandy
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(254, function()
    evt._BeginCanShowTopic(254)
    local visible = true
    if IsQBitSet(QBit(251)) then -- Bought Item pulp
        visible = true
        return visible
    else
        if IsQBitSet(QBit(261)) then -- Can't keep buying brandy
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(255, "卖掉托伯斯克果汁", function()
    evt.ForPlayer(Players.All)
    if not HasItem(644) then return end -- Tobersk Pulp
    evt.SetMessage("托伯斯克果泥与阿尔瓦河水调和，经时光蒸馏，直到酿酒大师宣布可以饮用。")
    RemoveItem(644) -- Tobersk Pulp
    ClearQBit(QBit(260)) -- Can't keep buying pulp
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 394)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 341)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 351)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 337)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 373)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 355)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 386)
        return
    else
        return
    end
end)

RegisterGlobalEvent(256, "花1000个金币购买贾丹姆大陆的心之木", function()
    evt.SetMessage("贾丹姆之心木，被阴影塔地区的吸血鬼用来打造棺材。\n心木的耐久，让棺材主人在白昼安息多年。")
    ClearQBit(QBit(255)) -- Bought Sunfish
    if IsAtLeast(Gold, 1000) then
        if not IsAtLeast(Gold, 1000) then
            return
        end
        SubtractValue(Gold, 1000)
        AddValue(InventoryItem(646), 646) -- Heartwood of Jadame
        SetQBit(QBit(253)) -- Bought heartwood
        SetQBit(QBit(262)) -- Can't keep buying heartwood
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(256, function()
    evt._BeginCanShowTopic(256)
    local visible = true
    if IsQBitSet(QBit(255)) then -- Bought Sunfish
        visible = true
        return visible
    else
        if IsQBitSet(QBit(262)) then -- Can't keep buying heartwood
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(257, "卖掉风干翻车鱼", function()
    evt.ForPlayer(Players.All)
    if not HasItem(648) then return end -- Dried Sunfish
    evt.SetMessage("晒干太阳鱼是太阳神殿高阶牧师享用的珍馐。\n这种片状、略带咸味的鱼，他们肯出好价钱收购。")
    RemoveItem(648) -- Dried Sunfish
    ClearQBit(QBit(264)) -- Can't keep buying sinfish
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 2234)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 2267)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 2250)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 2291)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 2244)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 2285)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 2273)
        return
    else
        return
    end
end)

RegisterGlobalEvent(258, "花1500个金币购买海盗护身符", function()
    evt.SetMessage("雷格那海盗喜欢浮夸的珠宝！\n那些承受不住阴影塔死灵法师附魔的护身符，正好满足这一需求。\n海盗们肯花“血汗钱”买这些护身符。")
    ClearQBit(QBit(253)) -- Bought heartwood
    if IsAtLeast(Gold, 1500) then
        if not IsAtLeast(Gold, 1500) then
            return
        end
        SubtractValue(Gold, 1500)
        AddValue(InventoryItem(647), 647) -- Flawed Amulets
        SetQBit(QBit(254)) -- Bought amulets
        SetQBit(QBit(263)) -- Can't keep buying amulets
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(258, function()
    evt._BeginCanShowTopic(258)
    local visible = true
    if IsQBitSet(QBit(253)) then -- Bought heartwood
        visible = true
        return visible
    else
        if IsQBitSet(QBit(263)) then -- Can't keep buying amulets
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(259, "卖掉贾丹姆大陆的心之木", function()
    evt.ForPlayer(Players.All)
    if not HasItem(646) then return end -- Heartwood of Jadame
    evt.SetMessage("贾丹姆之心木，被阴影塔地区的吸血鬼用来打造棺材。\n心木的耐久，让棺材主人在白昼安息多年。")
    RemoveItem(646) -- Heartwood of Jadame
    ClearQBit(QBit(262)) -- Can't keep buying heartwood
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 1761)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 1786)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 1637)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 1655)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 1794)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 1773)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 1744)
        return
    else
        return
    end
end)

RegisterGlobalEvent(260, "花2000个金币购买风干翻车鱼", function()
    evt.SetMessage("晒干太阳鱼是太阳神殿高阶牧师享用的珍馐。\n这种片状、略带咸味的鱼，他们肯出好价钱收购。")
    ClearQBit(QBit(254)) -- Bought amulets
    if IsAtLeast(Gold, 2000) then
        if not IsAtLeast(Gold, 2000) then
            return
        end
        SubtractValue(Gold, 2000)
        AddValue(InventoryItem(648), 648) -- Dried Sunfish
        SetQBit(QBit(255)) -- Bought Sunfish
        SetQBit(QBit(264)) -- Can't keep buying sinfish
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(260, function()
    evt._BeginCanShowTopic(260)
    local visible = true
    if IsQBitSet(QBit(254)) then -- Bought amulets
        visible = true
        return visible
    else
        if IsQBitSet(QBit(264)) then -- Can't keep buying sinfish
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(261, "卖掉海盗护身符", function()
    evt.ForPlayer(Players.All)
    if not HasItem(647) then return end -- Flawed Amulets
    evt.SetMessage("雷格那海盗喜欢浮夸的珠宝！\n那些承受不住阴影塔死灵法师附魔的护身符，正好满足这一需求。\n海盗们肯花“血汗钱”买这些护身符。")
    RemoveItem(647) -- Flawed Amulets
    ClearQBit(QBit(263)) -- Can't keep buying amulets
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 1994)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 2041)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 2051)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 2037)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 1973)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 1955)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 2086)
        return
    else
        return
    end
end)

RegisterGlobalEvent(262, "以5000个金币购买海之银尘", function()
    evt.SetMessage("收购阴影塔死灵法师炼制的海银粉。渡鸦海滨的走私者用它隐藏船只。\n它为船只提供有限的隐形。")
    ClearQBit(QBit(267)) -- Can't keep buying Ground Wyvern horn
    if IsAtLeast(Gold, 5000) then
        if not IsAtLeast(Gold, 5000) then
            return
        end
        SubtractValue(Gold, 5000)
        AddValue(InventoryItem(649), 649) -- Silver Dust of the Sea
        SetQBit(QBit(253)) -- Bought heartwood
        SetQBit(QBit(262)) -- Can't keep buying heartwood
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(262, function()
    evt._BeginCanShowTopic(262)
    local visible = true
    if IsQBitSet(QBit(258)) then -- Bought Item Ground Wyvern Horn
        visible = true
        return visible
    else
        if IsQBitSet(QBit(265)) then -- Can't keep buying Silver Dust of the Sea
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(263, "卖掉地面双角龙之角", function()
    evt.ForPlayer(Players.All)
    if not HasItem(651) then return end -- Ground Wyvern Horn
    evt.SetMessage("据报，磨碎的双角龙角是阴影塔死灵法师所用最强效的试剂之一。\n与炼金巫师用的试剂不同，这种试剂只有死灵法师公会最高阶的成员才使用。")
    RemoveItem(651) -- Ground Wyvern Horn
    ClearQBit(QBit(267)) -- Can't keep buying Ground Wyvern horn
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 8234)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 8267)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 8250)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 8291)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 8244)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 8285)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 8273)
        return
    else
        return
    end
end)

RegisterGlobalEvent(264, "以6500个金币购买伪造凭证", function()
    evt.SetMessage("这些伪造信用券，被食人魔法师佐格的密用来从阿尔瓦商人那里套取黄金。")
    ClearQBit(QBit(265)) -- Can't keep buying Silver Dust of the Sea
    if IsAtLeast(Gold, 6500) then
        if not IsAtLeast(Gold, 6500) then
            return
        end
        SubtractValue(Gold, 6500)
        AddValue(InventoryItem(650), 650) -- Forged Vouchers
        SetQBit(QBit(257)) -- Bought Item Forged Credit Vouchers
        SetQBit(QBit(266)) -- Can't keep buying Forged Credit Vouchers
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(264, function()
    evt._BeginCanShowTopic(264)
    local visible = true
    if IsQBitSet(QBit(256)) then -- Bought Item Silver Dust of the Sea
        visible = true
        return visible
    else
        if IsQBitSet(QBit(266)) then -- Can't keep buying Forged Credit Vouchers
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(265, "卖掉海之银尘", function()
    evt.ForPlayer(Players.All)
    if not HasItem(649) then return end -- Silver Dust of the Sea
    evt.SetMessage("收购阴影塔死灵法师炼制的海银粉。渡鸦海滨的走私者用它隐藏船只。\n它为船只提供有限的隐形。")
    RemoveItem(649) -- Silver Dust of the Sea
    ClearQBit(QBit(265)) -- Can't keep buying Silver Dust of the Sea
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 6261)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 6286)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 6237)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 6255)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 6294)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 6273)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 6244)
        return
    else
        return
    end
end)

RegisterGlobalEvent(266, "以7500个金币购买地面双角龙之角", function()
    evt.SetMessage("据报，磨碎的双角龙角是阴影塔死灵法师所用最强效的试剂之一。\n与炼金巫师用的试剂不同，这种试剂只有死灵法师公会最高阶的成员才使用。")
    ClearQBit(QBit(266)) -- Can't keep buying Forged Credit Vouchers
    if IsAtLeast(Gold, 7500) then
        if not IsAtLeast(Gold, 7500) then
            return
        end
        SubtractValue(Gold, 7500)
        AddValue(InventoryItem(651), 651) -- Ground Wyvern Horn
        SetQBit(QBit(258)) -- Bought Item Ground Wyvern Horn
        SetQBit(QBit(267)) -- Can't keep buying Ground Wyvern horn
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(266, function()
    evt._BeginCanShowTopic(266)
    local visible = true
    if IsQBitSet(QBit(257)) then -- Bought Item Forged Credit Vouchers
        visible = true
        return visible
    else
        if IsQBitSet(QBit(267)) then -- Can't keep buying Ground Wyvern horn
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(267, "卖掉伪造凭证", function()
    evt.ForPlayer(Players.All)
    if not HasItem(650) then return end -- Forged Vouchers
    evt.SetMessage("这些伪造信用券，被食人魔法师佐格的密用来从阿尔瓦商人那里套取黄金。")
    RemoveItem(650) -- Forged Vouchers
    ClearQBit(QBit(266)) -- Can't keep buying Forged Credit Vouchers
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 7294)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 7241)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 7251)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 7237)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 7273)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 7255)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 7286)
        return
    else
        return
    end
end)

RegisterGlobalEvent(268, "空酒桶", function()
    evt.StatusText("空酒桶")
end)

RegisterGlobalEvent(269, "红酒桶", function()
    evt.StatusText("力量 +2（永久）")
    AddValue(BaseMight, 2)
    SetAutonote(17) -- Red liquid grants Might.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(270, "黄酒桶", function()
    evt.StatusText("精准 +2（永久）")
    AddValue(BaseAccuracy, 2)
    SetAutonote(21) -- Yellow liquid grants Accuracy.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(271, "蓝酒桶", function()
    evt.StatusText("个性 +2（永久）")
    AddValue(BasePersonality, 2)
    SetAutonote(19) -- Blue liquid grants Personality.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(272, "橙酒桶", function()
    evt.StatusText("智力 +2（永久）")
    AddValue(BaseIntellect, 2)
    SetAutonote(18) -- Orange liquid grants Intellect.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(273, "绿酒桶", function()
    evt.StatusText("耐力 +2（永久）")
    AddValue(BaseEndurance, 2)
    SetAutonote(20) -- Green liquid grants Endurance.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(274, "紫酒桶", function()
    evt.StatusText("速度 +2（永久）")
    AddValue(BaseSpeed, 2)
    SetAutonote(22) -- Purple liquid grants Speed.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(275, "白酒桶", function()
    evt.StatusText("幸运 +2（永久）")
    AddValue(BaseLuck, 2)
    SetAutonote(23) -- White liquid grants Luck.
    evt.ChangeEvent(268)
end)

RegisterGlobalEvent(276, "空锅", function()
    evt.StatusText("空锅")
end)

RegisterGlobalEvent(277, "热气腾腾的锅", function()
    evt.StatusText("火系抗性 +2（永久）")
    AddValue(FireResistance, 2)
    SetAutonote(24) -- Steaming liquid grants Fire Resistance.
    evt.ChangeEvent(276)
end)

RegisterGlobalEvent(278, "冰锅", function()
    evt.StatusText("水系抗性 +2（永久）")
    AddValue(WaterResistance, 2)
    SetAutonote(25) -- Frosty liquid grants Water Resistance.
    evt.ChangeEvent(276)
end)

RegisterGlobalEvent(279, "电光大锅", function()
    evt.StatusText("气系抗性 +2（永久）")
    AddValue(AirResistance, 2)
    SetAutonote(26) -- Shocking liquid grants Air Resistance.
    evt.ChangeEvent(276)
end)

RegisterGlobalEvent(280, "脏锅", function()
    evt.StatusText("土系抗性 +2（永久）")
    AddValue(EarthResistance, 2)
    SetAutonote(27) -- Dirty liquid grants Earth Resistance.
    evt.ChangeEvent(276)
end)

RegisterGlobalEvent(281, "垃圾堆", function()
    local randomStep = PickRandomOption(281, 1, {1, 6, 11})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(1, ItemType.Armor_)
    elseif randomStep == 6 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("这里什么也没有")
        end
        evt.GiveItem(2, ItemType.Armor_)
    elseif randomStep == 11 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
            evt.StatusText("中毒！")
        end
        evt.GiveItem(3, ItemType.Armor_)
    end
    evt.ChangeEvent(284)
end)

RegisterGlobalEvent(282, "垃圾堆", function()
    local randomStep = PickRandomOption(282, 1, {1, 6, 11})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(1, ItemType.Weapon_)
    elseif randomStep == 6 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("这里什么也没有")
        end
        evt.GiveItem(2, ItemType.Weapon_)
    elseif randomStep == 11 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
            evt.StatusText("中毒！")
        end
        evt.GiveItem(3, ItemType.Weapon_)
    end
    evt.ChangeEvent(284)
end)

RegisterGlobalEvent(283, "垃圾堆", function()
    local randomStep = PickRandomOption(283, 1, {1, 6, 11})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(1, ItemType.Misc)
    elseif randomStep == 6 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("这里什么也没有")
        end
        evt.GiveItem(2, ItemType.Misc)
    elseif randomStep == 11 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
            evt.StatusText("中毒！")
        end
        evt.GiveItem(3, ItemType.Misc)
    end
    evt.ChangeEvent(284)
end)

RegisterGlobalEvent(284, "垃圾堆", function()
    local randomStep = PickRandomOption(284, 1, {1, 5})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
            return
        end
        evt.StatusText("这里什么也没有")
    elseif randomStep == 5 then
        evt.StatusText("这里什么也没有")
    end
end)

RegisterGlobalEvent(285, "营火", function()
    local randomStep = PickRandomOption(285, 1, {1, 4, 7})
    if randomStep == 1 then
        AddValue(Food, 3)
        evt.ChangeEvent(0)
        return
    elseif randomStep == 4 then
        AddValue(Food, 2)
        evt.ChangeEvent(0)
        return
    elseif randomStep == 7 then
        AddValue(Food, 1)
        evt.ChangeEvent(0)
        return
    end
end)

RegisterGlobalEvent(286, "营火", function()
    local randomStep = PickRandomOption(286, 1, {1, 4, 7})
    if randomStep == 1 then
        AddValue(Food, 4)
        evt.ChangeEvent(0)
        return
    elseif randomStep == 4 then
        AddValue(Food, 3)
        evt.ChangeEvent(0)
        return
    elseif randomStep == 7 then
        AddValue(Food, 2)
        evt.ChangeEvent(0)
        return
    end
end)

RegisterGlobalEvent(287, "食盆", function()
    AddValue(InventoryItem(655), 655) -- Green Apple
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(288, "空木桶", function()
    evt.StatusText("空木桶")
end)

RegisterGlobalEvent(289, "木桶", function()
    local randomStep = PickRandomOption(289, 1, {1, 1, 1, 8, 8, 8})
    if randomStep == 1 then
        local randomStep = PickRandomOption(289, 2, {2, 2, 2, 5, 5, 5})
        if randomStep == 2 then
            SetValue(PoisonedYellow, 0)
            evt.StatusText("中毒！")
        elseif randomStep == 5 then
            SetValue(PoisonedGreen, 0)
            evt.StatusText("喝醉了！")
        end
    elseif randomStep == 8 then
        local randomStep = PickRandomOption(289, 9, {9, 9, 11, 11, 13, 15})
        if randomStep == 9 then
            AddValue(InventoryItem(202), 202) -- Phial of Gog Blood
        elseif randomStep == 11 then
            AddValue(InventoryItem(210), 210) -- Poppy Pod
        elseif randomStep == 13 then
            AddValue(InventoryItem(212), 212) -- Sulfur
        elseif randomStep == 15 then
            AddValue(InventoryItem(218), 218) -- Mercury
        end
    end
    evt.ChangeEvent(288)
end)

RegisterGlobalEvent(290, "黄热病", function()
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
        return
    elseif IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
        evt.SetMessage("感谢治疗！记得把卷轴送给那些仍在黄热病中受苦的人。")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(373) then -- Cure Disease
            evt.SetMessage("我病得很重，没有治疗疾病卷轴，我必死于此黄热病！")
            return
        end
        RemoveItem(373) -- Cure Disease
        SetQBit(QBit(102)) -- Delivered cure to hut 1
        evt.ForPlayer(Players.All)
        AddValue(Experience, 250)
        if IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
            if IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
                if IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
                    if IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
                        if IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
                            if IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
                                evt.ForPlayer(Players.All)
                                AddValue(Experience, 1500)
                                evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
                                SetQBit(QBit(108)) -- Yellow Fever epidemic cured!
                                return
                            end
                        end
                    end
                end
            end
        end
        evt.SetMessage("感谢治疗，可这一带还有别人在生病！\n记得把药也送给他们！")
    end
end)
RegisterCanShowTopic(290, function()
    evt._BeginCanShowTopic(290)
    local visible = true
    if IsQBitSet(QBit(101)) then -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(291, "黄热病", function()
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
        return
    elseif IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
        evt.SetMessage("感谢治疗！记得把卷轴送给那些仍在黄热病中受苦的人。")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(373) then -- Cure Disease
            evt.SetMessage("我病得很重，没有治疗疾病卷轴，我必死于此黄热病！")
            return
        end
        RemoveItem(373) -- Cure Disease
        SetQBit(QBit(103)) -- Delivered cure to hut 2
        evt.ForPlayer(Players.All)
        AddValue(Experience, 250)
        if IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
            if IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
                if IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
                    if IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
                        if IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
                            if IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
                                evt.ForPlayer(Players.All)
                                AddValue(Experience, 1500)
                                evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
                                SetQBit(QBit(108)) -- Yellow Fever epidemic cured!
                                return
                            end
                        end
                    end
                end
            end
        end
        evt.SetMessage("感谢治疗，可这一带还有别人在生病！\n记得把药也送给他们！")
    end
end)
RegisterCanShowTopic(291, function()
    evt._BeginCanShowTopic(291)
    local visible = true
    if IsQBitSet(QBit(101)) then -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(292, "黄热病", function()
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
        return
    elseif IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
        evt.SetMessage("感谢治疗！记得把卷轴送给那些仍在黄热病中受苦的人。")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(373) then -- Cure Disease
            evt.SetMessage("我病得很重，没有治疗疾病卷轴，我必死于此黄热病！")
            return
        end
        RemoveItem(373) -- Cure Disease
        SetQBit(QBit(104)) -- Delivered cure to hut 3
        evt.ForPlayer(Players.All)
        AddValue(Experience, 250)
        if IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
            if IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
                if IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
                    if IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
                        if IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
                            if IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
                                evt.ForPlayer(Players.All)
                                AddValue(Experience, 1500)
                                evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
                                SetQBit(QBit(108)) -- Yellow Fever epidemic cured!
                                return
                            end
                        end
                    end
                end
            end
        end
        evt.SetMessage("感谢治疗，可这一带还有别人在生病！\n记得把药也送给他们！")
    end
end)
RegisterCanShowTopic(292, function()
    evt._BeginCanShowTopic(292)
    local visible = true
    if IsQBitSet(QBit(101)) then -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(293, "黄热病", function()
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
        return
    elseif IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
        evt.SetMessage("感谢治疗！记得把卷轴送给那些仍在黄热病中受苦的人。")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(373) then -- Cure Disease
            evt.SetMessage("我病得很重，没有治疗疾病卷轴，我必死于此黄热病！")
            return
        end
        RemoveItem(373) -- Cure Disease
        SetQBit(QBit(105)) -- Delivered cure to hut 4
        evt.ForPlayer(Players.All)
        AddValue(Experience, 250)
        if IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
            if IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
                if IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
                    if IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
                        if IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
                            if IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
                                evt.ForPlayer(Players.All)
                                AddValue(Experience, 1500)
                                evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
                                SetQBit(QBit(108)) -- Yellow Fever epidemic cured!
                                return
                            end
                        end
                    end
                end
            end
        end
        evt.SetMessage("感谢治疗，可这一带还有别人在生病！\n记得把药也送给他们！")
    end
end)
RegisterCanShowTopic(293, function()
    evt._BeginCanShowTopic(293)
    local visible = true
    if IsQBitSet(QBit(101)) then -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(294, "黄热病", function()
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
        return
    elseif IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
        evt.SetMessage("感谢治疗！记得把卷轴送给那些仍在黄热病中受苦的人。")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(373) then -- Cure Disease
            evt.SetMessage("我病得很重，没有治疗疾病卷轴，我必死于此黄热病！")
            return
        end
        RemoveItem(373) -- Cure Disease
        SetQBit(QBit(106)) -- Delivered cure to hut 5
        evt.ForPlayer(Players.All)
        AddValue(Experience, 250)
        if IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
            if IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
                if IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
                    if IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
                        if IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
                            if IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
                                evt.ForPlayer(Players.All)
                                AddValue(Experience, 1500)
                                evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
                                SetQBit(QBit(108)) -- Yellow Fever epidemic cured!
                                return
                            end
                        end
                    end
                end
            end
        end
        evt.SetMessage("感谢治疗，可这一带还有别人在生病！\n记得把药也送给他们！")
    end
end)
RegisterCanShowTopic(294, function()
    evt._BeginCanShowTopic(294)
    local visible = true
    if IsQBitSet(QBit(101)) then -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(295, "黄热病", function()
    if IsQBitSet(QBit(108)) then -- Yellow Fever epidemic cured!
        evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
        return
    elseif IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
        evt.SetMessage("感谢治疗！记得把卷轴送给那些仍在黄热病中受苦的人。")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(373) then -- Cure Disease
            evt.SetMessage("我病得很重，没有治疗疾病卷轴，我必死于此黄热病！")
            return
        end
        RemoveItem(373) -- Cure Disease
        SetQBit(QBit(107)) -- Delivered cure to hut 6
        evt.ForPlayer(Players.All)
        AddValue(Experience, 250)
        if IsQBitSet(QBit(107)) then -- Delivered cure to hut 6
            if IsQBitSet(QBit(102)) then -- Delivered cure to hut 1
                if IsQBitSet(QBit(103)) then -- Delivered cure to hut 2
                    if IsQBitSet(QBit(104)) then -- Delivered cure to hut 3
                        if IsQBitSet(QBit(105)) then -- Delivered cure to hut 4
                            if IsQBitSet(QBit(106)) then -- Delivered cure to hut 5
                                evt.ForPlayer(Players.All)
                                AddValue(Experience, 1500)
                                evt.SetMessage("黄热病疫情结束了！\n感谢你们的帮助！")
                                SetQBit(QBit(108)) -- Yellow Fever epidemic cured!
                                return
                            end
                        end
                    end
                end
            end
        end
        evt.SetMessage("感谢治疗，可这一带还有别人在生病！\n记得把药也送给他们！")
    end
end)
RegisterCanShowTopic(295, function()
    evt._BeginCanShowTopic(295)
    local visible = true
    if IsQBitSet(QBit(101)) then -- Deliver Cure Disease Scrolls to the six huts on the outer Dagger Wound Islands. Return to Aislen on Dagger Wound Island.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(296, "Rothnax", function()
    evt.SetMessage("我弟弟罗思纳克斯还活着！\n而你们修好了石头传送门？\n我必须回家找他，好让我们筹划一家人的活路！")
    SetQBit(QBit(138)) -- Found Isthric the Tongue
    evt.MoveNPC(70, 776) -- Isthric the Tongue -> Rohtnax's House
    evt.SetNPCTopic(70, 0, 297) -- Isthric the Tongue topic 0: Thank you again!
end)

RegisterGlobalEvent(297, "再次谢谢你！", function()
end)
RegisterCanShowTopic(297, function()
    evt._BeginCanShowTopic(297)
    local visible = true
    if IsQBitSet(QBit(134)) then -- Gave Gem of Restoration to Blazen Stormlance
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(298, "报告！", function()
    evt.SetMessage("你是新来的吧？\n告诉艾瑞安·韩特，我对他那帮乌合之众的期待，可不包括你这种货色！\n把报告给我，然后从我眼前消失！\n你让我恶心！")
    ClearQBit(QBit(117)) -- Deliver fake report to the Dread Pirate Stanley in the Pirate's Rest Tavern on the Island of Regna.
    evt.ForPlayer(Players.All)
    RemoveItem(602) -- False Report
    SetQBit(QBit(1554)) -- Delivered False Report to the Dread Pirate Stanley for Arion Hunter.
    ClearQBit(QBit(282)) -- False Report - I lost it!
    AddValue(Experience, 20000)
    evt.ForPlayer(Players.Member0)
    AddValue(Gold, 15000)
    evt.SetNPCTopic(108, 0, 0) -- Dread Pirate Stanley topic 0 cleared
    evt.MoveNPC(108, 0) -- Dread Pirate Stanley -> removed
end)
RegisterCanShowTopic(298, function()
    evt._BeginCanShowTopic(298)
    local visible = true
    if IsQBitSet(QBit(117)) then -- Deliver fake report to the Dread Pirate Stanley in the Pirate's Rest Tavern on the Island of Regna.
        if HasItem(602) then -- False Report
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(299, "贾丹姆大陆的命运", function()
    if not IsQBitSet(QBit(57)) then -- The Pirates invaded Ravenshore
        evt.SetMessage("如今谁知道贾丹姆的命运如何。\n也许你能找到办法救我们免于毁灭？")
        return
    end
    evt.SetMessage("贾丹姆欠你一份大人情！\n你把整个世界从彻底毁灭中救了出来！")
end)

RegisterGlobalEvent(417, "普多·泰恩", function()
    evt.SetMessage("水坑·塞恩是位极有前途的学员。\n你若想学习手杖的专家用法，可以去渡鸦海滨城找他。")
    SetAutonote(89) -- You may receive Expert Staff instruction from Puddle Thain in the city of Ravenshore.
end)

RegisterGlobalEvent(418, "赛丽雅·斯通", function()
    evt.SetMessage("西莉亚·斯通，手杖大师，住在铁沙漠的巨魔村铁锈镇。\n若你渴望，她能把你教成手杖大师。")
    SetAutonote(90) -- Master Staff is taught by Celia Stone located in the village of Rust. Rust is in the Ironsand Desert.
end)

RegisterGlobalEvent(419, "崔斯坦·止水", function()
    evt.SetMessage("宗师特里斯坦·静水，指导所有手杖学员。\n唯有他能帮你达到这柄精良武器的宗师境界。\n去阴影塔脚下的暮光城找他。")
    SetAutonote(91) -- The Grand Master of Staff, Tristen Stillwater is located in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(420, "爱利·卢欧林", function()
    evt.SetMessage("艾瑞·路德林目前住在渡鸦海滨。\n她是一位极专注的剑术学员，能把你教到该武器的专家水平。")
    SetAutonote(92) -- You may receive Expert Sword training from Aerie Luodrin in the city of Ravenshore.
end)

RegisterGlobalEvent(421, "杰新·卡卓", function()
    evt.SetMessage("不幸的是，剑术大师杰辛·卡德龙觉得，他的技艺——这么说吧——“教”给绞刑峡谷的屠龙者更“有利可图”。\n你若想达到剑术大师水平，就得去绞刑峡谷屠龙者营地找他。")
    SetAutonote(93) -- Master Sword is taught by Jaycin Cardron. You can find her in the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(422, "麦友·追龙者", function()
    evt.SetMessage("剑术宗师米永·追龙者，已加入骑士查尔斯·奇克奥剿灭绞刑峡谷龙族的远征。\n你可以在屠龙者堡垒找到米永。")
    SetAutonote(94) -- The Grand Master of Sword, Miyon Dragontracker can be found on the island of Regna.
end)

RegisterGlobalEvent(423, "罗瑞·维斯波", function()
    evt.SetMessage("匕首专家导师洛丽·维斯珀斯，住在阿尔瓦的黑暗精灵城。\n去那儿找她。")
    SetAutonote(95) -- The Expert Dagger instructor, Lori Vespers, lives in the Dark Elf city of Alvar.
end)

RegisterGlobalEvent(424, "Jobber", function()
    evt.SetMessage("大师乔伯能把匕首学员教到大师级。\n他住在渡鸦海滨城。")
    SetAutonote(96) -- Master Jobber teaches Master Dagger. He lives in the city of Ravenshore.
end)

RegisterGlobalEvent(425, "卡拉·诺瑟斯", function()
    evt.SetMessage("匕首宗师卡拉·瑟尔塞斯，训练所有雷格那海盗使用匕首。\n她和他们一起住在雷格那岛上，因为他们给她的报酬丰厚。")
    SetAutonote(97) -- Karla Nirses, the Grand Master Dagger teacher, can be found on Regna Island.
end)

RegisterGlobalEvent(426, "哈洛·佛斯太克", function()
    evt.SetMessage("赫拉德·战痕，查尔斯·奇克奥麾下最出色的骑士之一，是斧技的专家导师。\n在绞刑峡谷的屠龙者营地能找到他。")
    SetAutonote(98) -- Herald Foestryke teaches Expert Axe in the Dragon Hunter's Camp located in Garrote Gorge.
end)

RegisterGlobalEvent(427, "杰斯普·韩特", function()
    evt.SetMessage("贾斯普·亨特是斧术的大师导师。\n他能教你通往斧术大师的技能。\n他家在海滨城渡鸦海滨。")
    SetAutonote(99) -- Jasp Hunter is the Master Axe instructor. His home is in the seaside city of Ravenshore.
end)

RegisterGlobalEvent(428, "加瑞克·森杰克", function()
    evt.SetMessage("宗师加里克·森雅克，是斧道的宗师导师。\n他家在残破镇地区的巴尔萨煞巢穴。")
    SetAutonote(100) -- Grand Master Garic Senjac, the Grand Master Axe teacher makes his home in Balthazar Lair located in Ravage Roaming.
end)

RegisterGlobalEvent(429, "麦崔克·陶恩赛佛", function()
    evt.SetMessage("马特里克·守镇者曾多次抵御雷格那海盗对渡鸦海滨城的进犯。\n他的长矛技艺与教导，帮市民把海盗击退。他能把你教到长矛专家水平。")
    SetAutonote(101) -- Matric Townsaver teaches Expert Spear from his home in Ravenshore.
end)

RegisterGlobalEvent(430, "雅山德拉·惠瑟史密斯", function()
    evt.SetMessage("阿珊德拉·威斯密斯是长矛的大师导师。\n她的长矛之道教导将引领你达到该武器的大师级。\n她住在商业城阿尔瓦。")
    SetAutonote(102) -- Ashandra Withersmythe is the Master teacher of the Spear. She lives in the merchant city of Alvar.
end)

RegisterGlobalEvent(431, "Yarrow", function()
    evt.SetMessage("亚罗是长矛宗师。\n她敏锐的眼力与潜行本领，助她达到这等境界。\n她用长矛追踪匕伤群岛丛林里剧毒的库阿托尔。")
    SetAutonote(103) -- Yarrow is the Grand Master of the Spear. You can find her on the Dagger Wound Islands.
end)

RegisterGlobalEvent(432, "席瓦·锐眼", function()
    evt.SetMessage("希万·锐眼是射箭专家。\n她的教导能把你教到这种远程武器的专家水平。\n她住在匕伤群岛的血滴村。")
    SetAutonote(104) -- Shivan Keeneye, the Expert Bow teacher lives in the village of Blood Drop on the Dagger Wound Islands.
end)

RegisterGlobalEvent(433, "欧伯力克·诺斯沃", function()
    evt.SetMessage("大师奥贝里克·鼻草在渡鸦海滨家中教弓术学员。\n你若想达到这武器的大师级，就去那儿找他。")
    SetAutonote(105) -- Master Bow teacher Oberic Nosewort lives in Ravenshore city
end)

RegisterGlobalEvent(434, "Solis", function()
    evt.SetMessage("弓术宗师索利斯，住在黑暗精灵城阿尔瓦。\n她能教你弓术宗师。")
    SetAutonote(106) -- Solis, Grand Master of the Bow, lives in the Dark Elf city of Alvar.
end)

RegisterGlobalEvent(435, "丽莎·所尔波罗", function()
    evt.SetMessage("莉莎·酸眉在渡鸦海滨家中教授钉锤专家用法。")
    SetAutonote(107) -- Lisha Sourbrow teaches Expert Mace from her home in Ravenshore.
end)

RegisterGlobalEvent(436, "罗伯特·晨星", function()
    evt.SetMessage("罗伯特·晨星，在绞刑峡谷教骑士们钉锤大师。")
    SetAutonote(108) -- Master Mace teacher, Robert Morningstar, trains the knights of the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(437, "贺斯沃弟兄", function()
    evt.SetMessage("兄弟炉誓，钉锤宗师，隐居于宁静的铁沙漠，在那片沙丘间寻求安宁。\n他家在铁锈镇村。")
    SetAutonote(109) -- Brother Hearthsworn, the Grand Master Mace teacher, can be found in the village of Rust located in the Ironsand Desert.
end)

RegisterGlobalEvent(438, "奎蓝·摩尔", function()
    evt.SetMessage("奎林·摩尔曾为骑士查尔斯·奇克奥效力，但不赞同他杀光绞刑峡谷一带龙的十字军。摩尔仍在阿尔瓦城家中教授盾牌专家用法。")
    SetAutonote(113) -- Expert Shield teacher, Qillain Moore, lives in the the city of Alvar.
end)

RegisterGlobalEvent(439, "谢尔顿·夜木", function()
    evt.SetMessage("谢尔登·夜木住在阴影塔死灵法师公会下方的暮光城。\n她能教你盾牌大师。")
    SetAutonote(114) -- Master Shield teacher, Sheldon Nightwood lives in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(440, "派林·瑞佛斯通", function()
    evt.SetMessage("骑士佩林·掠夺斯顿，拥有盾牌宗师的头衔。\n他目前效力于查尔斯·奇克奥，教授骑士们盾牌的正确用法。\n去绞刑峡谷的屠龙者营地找他。")
    SetAutonote(115) -- Peryn Reaverston, Grand Master Shield instructor, lives in the Dragon Hunter's Camp in Garrote Gorge.
end)

RegisterGlobalEvent(441, "Thadin", function()
    evt.SetMessage("蜥蜴人萨丁是皮甲用法的专家导师。\n他的教导会让你达到这种护甲的专家水平。\n你可以在匕伤岛上找到他。")
    SetAutonote(116) -- Thadin is the Expert Leather instructor. You can find him on the Island of Dagger Wound.
end)

RegisterGlobalEvent(442, "沙漠斯·荷力菲", function()
    evt.SetMessage("大师沙姆斯·霍利菲尔德住在牛头人城巴尔萨煞巢穴，位于残破镇地区。\n他能教你皮甲大师。")
    SetAutonote(117) -- Master Leather instructor Shamus Hollyfield dwells in the Minotaur city, Balthazar Lair, which is located in the Ravage Roaming region.
end)

RegisterGlobalEvent(443, "麦瓦力·爱姆斯麦尔", function()
    evt.SetMessage("梅德瓦里·榆沼打造王国最精良的皮甲。\n她还拥有皮甲宗师的头衔，可在铁沙漠铁锈镇村的家中指导你。")
    SetAutonote(118) -- Medwari Elmsmire, the Grand Master of Leather makes her home in the village of Rust in the Ironsand Desert.
end)

RegisterGlobalEvent(444, "托伯伦·佛吉爱特", function()
    evt.SetMessage("托布伦·锻锤匠在第一次海盗战争中协助过渡鸦海滨城。\n她的熔炉连续烧了四周，为渡鸦海滨的守卫打造锁甲。\n她如今仍在海滨港城渡鸦海滨的家中教授锁甲专家用法。")
    SetAutonote(119) -- Tobren Forgewright the Expert Chain teacher lives in the seaside port of Ravenshore.
end)

RegisterGlobalEvent(445, "海立安·艾佛斯麦", function()
    evt.SetMessage("哈连·永笑向锁甲宗师学尽一切技艺，随后逃到阿尔瓦城，在那里向阿尔瓦商人教授这种护甲的大师用法。\n他也会把你教到大师级。")
    SetAutonote(120) -- Master Chain instructor, Halian Eversmyle, can be found in the city of Alvar.
end)

RegisterGlobalEvent(446, "赛林·伯更斗", function()
    evt.SetMessage("宗师瑟琳·燃烛教授把锁甲用到极致的方法。\n她和雷格那海盗们住在一起。")
    SetAutonote(121) -- Grand Master of Chain, Seline Burnkindle, teaches from her home on the island of Renga.
end)

RegisterGlobalEvent(447, "Bone", function()
    evt.SetMessage("骨头在匕伤岛上的小屋里教授板甲专家技能。")
    SetAutonote(122) -- Bone teaches Expert Plate armor use from his hut on the Dagger Wound Islands.
end)

RegisterGlobalEvent(448, "Botham", function()
    evt.SetMessage("大师博瑟姆是第一次海盗战争中最出色的战士之一。\n渡鸦海滨欠他一份感激之情。\n博瑟姆和他的剑士同伴率军迎击第一波雷格那人。\n他们的板甲挡下了除最沉重一击外的所有打击。\n他如今仍在自家教授板甲大师。")
    SetAutonote(123) -- The Master Plate instructor, Botham, lives in the city of Ravenshore.
end)

RegisterGlobalEvent(449, "赛欣·艾恩法斯特", function()
    evt.SetMessage("板甲宗师塞思·铁拳，是查尔斯·奇克奥征讨绞刑峡谷龙族背后的真正力量。\n没有他在板甲用法上的教导，奇克奥的骑士在掠夺者之龙的震怒前不过是炮灰。")
    SetAutonote(124) -- Seth Ironfist, Grand Master of Plate Armor teaches in the Dragon Hunter's Camp in Garrote Gorge.
end)

RegisterGlobalEvent(450, "泰伦·谈普", function()
    evt.SetMessage("塔伦·坦珀逃离埃拉西亚，在一群对坦珀家史一无所知的人中间重起炉灶。\n他在渡鸦海滨家中教授火焰魔法专家技能。")
    SetAutonote(125) -- Taren Temper teaches Expert Fire Magic from his home in Ravenshore.
end)

RegisterGlobalEvent(451, "所罗门·史提尔", function()
    evt.SetMessage("所罗门·钢铁，火焰大师，住在宁静的阿尔瓦城。\n他能教你火焰魔法大师。")
    SetAutonote(126) -- Solomon Steele, Master instructor of Fire Magic, lives in the tranquil city of Alvar.
end)

RegisterGlobalEvent(452, "Burn", function()
    evt.SetMessage("火焰宗师伯恩，住在火元素位面的酷热之中。\n也许出现在铁沙漠的火门会带你找到他。\n他能教你火焰魔法宗师。\n")
    SetAutonote(127) -- Burn, Grand Master of Fire Magic dwells in the oppressive heat of the Plane of Fire.
end)

RegisterGlobalEvent(453, "Reshie", function()
    evt.SetMessage("蕾希在匕伤群岛的家中教授气系魔法专家技能。")
    SetAutonote(128) -- Reshie teaches the Expert skill of Air Magic from his home on the Dagger Wound Islands.
end)

RegisterGlobalEvent(454, "荷力司·暴风眼", function()
    evt.SetMessage("霍利斯·风暴眼，气系大师，把家安在牛头人的家园巴尔萨煞巢穴。\n")
    SetAutonote(129) -- Hollis Stormeye, Master Air Magic teacher, makes her home in Balthazar Lair located in Ravage Roaming.
end)

RegisterGlobalEvent(455, "克劳德·耐德龙", function()
    evt.SetMessage("云·内德伦曾想与气之领主做交易。\n他动身寻找进入气元素位面的路，以为在那里能学清气系魔法中所有他仍不明了的地方。\n你得亲自去一趟气元素位面，看看他是否成功了。")
    SetAutonote(130) -- Cloud Nedlon, the Grand Master of Air may be found on the Plane of Air.
end)

RegisterGlobalEvent(456, "乌尔布拉契·派德东", function()
    evt.SetMessage("乌尔布雷希特·佩德森单枪匹马止住了第二次海盗战争。\n海盗开始登陆时，他冲下海滩保卫渡鸦海滨。\n他驾驭大海本身，把雷格那舰队逼回了大洋。\n不幸的是，这番努力让他彻底失去了使用魔法的能力。\n尽管如此，他仍教授水系魔法专家知识。\n他至今住在渡鸦海滨。")
    SetAutonote(131) -- Ulbrecht Pederton, Expert teacher of Water Magic lives in Ravenshore city.
end)

RegisterGlobalEvent(457, "葛丽果力·迷雾", function()
    evt.SetMessage("格雷戈里·雾，水系大师，把家安在铁沙漠的铁锈镇村。\n他声称有个计划，要用魔法把炎热沙漠变成翠绿平原。\n他若有空，就能教你水系魔法大师。")
    SetAutonote(132) -- Gregory Mist, Master teacher of Water Magic, makes his home in the village of Rust in the Ironsand Desert.
end)

RegisterGlobalEvent(458, "黑流", function()
    evt.SetMessage("黑流曾是这一带强大的法师。\n她对力量的野心超过了谨慎，企图征服水元素位面。\n她召出一道通往该位面的门，走了进去。\n从此再无音讯。\n她本是水系魔法宗师。\n若她仍活着，你也许能在水元素位面找到她。")
    SetAutonote(133) -- Black Current, the Grand Master teacher of Water Magic may be found on the Plane of Water.
end)

RegisterGlobalEvent(459, "奥斯崔恩·葛瑞维克", function()
    evt.SetMessage("奥斯特林·格里维奇，土系魔法专家导师，住在匕伤群岛的血滴村。")
    SetAutonote(134) -- Ostrin Grivic, Expert instructor of Earth Magic, lives in the village of Blood Drop on the Dagger Wound Islands.
end)

RegisterGlobalEvent(460, "陶乐熙·塞百物", function()
    evt.SetMessage("土系魔法大师多萝西·塞布尔伍德协助终结了第一次海盗战争。\n在一位无名气系法师的帮助下，她筑起黏土墙，把雷格那海盗挡在船边。\n她如今在阿尔瓦家中教授技艺。")
    SetAutonote(135) -- The Master teacher of Earth Magic, Dorothy Sablewood, lives in the city of Alvar.
end)

RegisterGlobalEvent(461, "Griven", function()
    evt.SetMessage("宗师格瑞文在给多萝西·塞布尔伍德上完最后一课后，进入了土元素位面。\n也许他至今仍住在那里。\n谁知道元素位面里会发生什么呢？")
    SetAutonote(136) -- The Grand Master instructor of Air Magic, Griven, may be found on the Plane of Air.
end)

RegisterGlobalEvent(462, "史拉顿·何索恩", function()
    evt.SetMessage("斯特拉顿·霍桑能把你提升到精神魔法专家境界。他把家安在港城渡鸦海滨。")
    SetAutonote(137) -- Straton Hawthorne can raise you to Expert level in the arts of Spirit Magic. He makes his home in the port city of Ravenshore.
end)

RegisterGlobalEvent(463, "贝索德·科恩", function()
    evt.SetMessage("大师贝特霍尔德·科恩，效力于骑士查尔斯·奇克奥征讨绞刑峡谷一带龙族的十字军。\n去那边的屠龙者营地找他。\n你若运气好，他会有空教你精神魔法大师。")
    SetAutonote(138) -- Spirit Magic Master instructor, Bethold Kern, can be found in the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(464, "来西特·鸦眼", function()
    evt.SetMessage("拉西特·鸦视是精神魔法宗师。\n他住在低语森林、靠近太阳神殿处，在那里继续研究精神的本质。\n他能把你的精神魔法提升到宗师。")
    SetAutonote(139) -- Lasiter Ravensight, is the Grand Master teacher of Spirit Magic. He lives in the Murmurwoods close to the Temple of the Sun.
end)

RegisterGlobalEvent(465, "商恩·克鲁兰", function()
    evt.SetMessage("沙恩·克鲁伦，心智魔法学员，能教你这门奥术的专家技能。\n去黑暗精灵城阿尔瓦找他。")
    SetAutonote(140) -- Shane Krewlen, Expert instructor of Mind Magic, lives in the Dark Elf city of Alvar.
end)

RegisterGlobalEvent(466, "芭芭拉·拉兹", function()
    evt.SetMessage("巴辛·洛茨，心智魔法大师，住在残破镇地区的牛头人城巴尔萨煞巢穴。\n经她教导，你可达到心智魔法大师。")
    SetAutonote(141) -- Barthine Lotts, Master of Mind Magic, dwells in the Minotaur city of Balthazar Lair in the Ravage Roaming region.
end)

RegisterGlobalEvent(467, "吉拉德·梦妖", function()
    evt.SetMessage("吉拉德·梦匠，心智魔法宗师，已与许多其他魔法宗师聚于低语森林地区。\n在那里，他们与太阳神殿合作，精进共同的技艺与知识。\n吉拉德能把你教到心智魔法宗师水平。")
    SetAutonote(142) -- Gilad Dreamwright, Grand Master of Mind Magic, lives in Murmurwoods near the Temple of the Sun.
end)

RegisterGlobalEvent(468, "赛瓦·波斯德", function()
    evt.SetMessage("泽瓦·泰然，肢体魔法奥术的专家导师，与他的族人一起住在伊法里纳海的匕伤群岛。")
    SetAutonote(143) -- Zevah Poised, Expert instructor of Body Magic, lives with his people on the Islands of Dagger Wound.
end)

RegisterGlobalEvent(469, "土加·爱林", function()
    evt.SetMessage("图戈尔·阿林，肢体魔法大师，在绞刑峡谷地区以治疗技艺效力于骑士查尔斯·奇克奥。\n他的肢体魔法被用来救治征讨绞刑峡谷龙族时受伤的年轻骑士们。")
    SetAutonote(144) -- Tugor Arin, Master of Body Magic can be found in the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(470, "克理塔斯·雪树", function()
    evt.SetMessage("宗师克里提亚斯·雪树，住在宁静的低语森林，远离世间的试炼与烦扰。\n唯有他能传授你肢体魔法之道，把你提升到这门奥术的宗师。")
    SetAutonote(145) -- Grand Master of Body Magic, Critias Snowtree, dwells in the Murmurwoods forest.
end)

RegisterGlobalEvent(471, "阿基巴德·曙光", function()
    evt.SetMessage("阿基巴德·晨辉，光明魔法专家导师，在伊法里纳海滨的渡鸦海滨城修习他的技艺。\n他父母给他取这个名字时，并不知道它与埃拉西亚死灵法师公会领袖同名。\n阿基巴德渴望在光明中成就自己的名声，而非活在同名者的黑暗里。")
    SetAutonote(146) -- Archibald Dawnsglow, Expert instructor of Light Magic, practices his arts in the city of Ravenshore.
end)

RegisterGlobalEvent(472, "卢理那斯·破晓者", function()
    evt.SetMessage("大师卢尼乌斯·曙临，与低语森林的牧师们住在一起。你若能在森林的危险中幸存，他可把你提升为光明魔法大师。")
    SetAutonote(147) -- Master Light Magic teacher, Lunius Dawnbringer, dwells near the Temple of the Sun in the Murmurwoods.
end)

RegisterGlobalEvent(473, "艾德林·明眼", function()
    evt.SetMessage("奥尔德林·明眼，光明宗师，把家安在雷格那岛上。\n他希望终结海盗的邪恶行径。\n你若能在海盗手中幸存，他可教你到宗师。")
    SetAutonote(148) -- Aldrin Cleareye, Grand Master of the Light, lives on the island of Regna.
end)

RegisterGlobalEvent(474, "帕特温·达肯摩尔", function()
    evt.SetMessage("帕特温·暗森，黑暗魔法之道的专家导师，与阿尔瓦的黑暗精灵们住在一起。\n")
    SetAutonote(149) -- Patwin Darkenmore, Expert teacher of the ways of Dark Magic, lives among the Dark Elves of Alvar.
end)

RegisterGlobalEvent(475, "卡拉·安伯普尔", function()
    evt.SetMessage("黑暗魔法大师卡拉·棕池追随过西斯库斯·影行者——黑暗宗师——的足迹，如今与阴影塔的死灵法师们住在一起。")
    SetAutonote(150) -- Dark Magic Master Carla Umberpool has a home in the village of Twilight at the base of the Shadowspire.
end)

RegisterGlobalEvent(476, "西西克斯·影跑者", function()
    evt.SetMessage("西斯库斯·影行者，黑暗魔法艺术宗师，已在雷格那岛上安家。\n海盗船长们出击前会来这里求取她对船只的祝福。\n她能教你黑暗魔法宗师。")
    SetAutonote(151) -- Sithicus Shadowrunner, the Grand Master Dark Magic instructor, lives on the island of Regna.
end)

RegisterGlobalEvent(477, "其拉·史巴克曼", function()
    evt.SetMessage("基拉·火花人，鉴定物品技能的专家导师，住在阿尔瓦城。\n")
    SetAutonote(161) -- Kyra Sparkmen, Expert teacher of the Identify Item skill, lives in the city of Alvar.
end)

RegisterGlobalEvent(478, "Eithian", function()
    evt.SetMessage("埃西安，鉴定物品技能的大师导师，效力于阿尔瓦商人，目前住在匕伤群岛。许多旅人带着战利品找埃西安鉴定。\n你若专程去找他，他也许有空把你教到该技能大师。")
    SetAutonote(162) -- Eithian, Master instructor of the Identify Item skill, lives on the Dagger Wound Islands.
end)

RegisterGlobalEvent(479, "艾尔斯伯·络真", function()
    evt.SetMessage("埃尔兹贝特·罗根，鉴定物品技能宗师，住在阴影塔的暮光城。\n她能教你达到宗师所需的一切。")
    SetAutonote(163) -- Elzbet Roggen, Grand Master of the Identify Item skill, lives in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(480, "费许那·汤伯", function()
    evt.SetMessage("菲什纳·汤布，从阿尔瓦商人的任上退休，回到他在伊法里纳海匕伤岛的家。\n去那儿找他，学商人之道的专家技能。")
    SetAutonote(164) -- Fishner Thomb Expert Merchant instructor makes his home on the Islands of Dagger Wound.
end)

RegisterGlobalEvent(481, "费顿·艾佛森", function()
    evt.SetMessage("芬顿·艾弗森，阿尔瓦商人大师，考核所有想在商人技能上精进的人。\n你会在商业城阿尔瓦找到芬顿，他能把你教到商人技能大师。")
    SetAutonote(165) -- Fenton Iverson, Master Merchant instructor, lives in the merchant city of Alvar.
end)

RegisterGlobalEvent(482, "瑞文·快舌", function()
    evt.SetMessage("雷文·快舌，阿尔瓦商人宗师，住在渡鸦海滨城。\n在那里，雷文能观察众多种族互相贸易往来。\n唯有他能把你的商人知识提升到宗师。")
    SetAutonote(166) -- Raven Quicktoungue, Grand Master Merchant instructor, dwells in the city of Ravenshore.
end)

RegisterGlobalEvent(483, "艾凡达·拉兹", function()
    evt.SetMessage("埃万达·洛茨教授修理物品的专家技能。\n他住在海滨城渡鸦海滨。")
    SetAutonote(167) -- Evandar Lotts teaches the Expert skills of Repairing Items. He dwells in the seaside city of Ravenshore.
end)

RegisterGlobalEvent(484, "逵克·珍妮", function()
    evt.SetMessage("快手·杰妮是修理物品技能的大师。她住在绞刑峡谷屠龙者堡垒周围的村子里。")
    SetAutonote(168) -- Quick Jeni, is the Master of the Repair Item skill. She lives in the village around the Dragon Hunter's Fort in Garrote Gorge.
end)

RegisterGlobalEvent(485, "逵斯林·东克", function()
    evt.SetMessage("奎思林·汤克，修理物品技能宗师，住在宁静的低语森林。\n他的技艺对太阳神殿极有价值。")
    SetAutonote(169) -- Quethrin Tonk, Grand Master of the Repair Item skill, dwells in Murmurwoods.
end)

RegisterGlobalEvent(486, "Menasaur", function()
    evt.SetMessage("梅纳索，匕伤群岛最强壮的蜥蜴人，是健体技能的专家导师。")
    SetAutonote(170) -- Menasaur, lives on the Dagger Wound Islands. He is the Expert instructor of Body Building.
end)

RegisterGlobalEvent(487, "肯尼斯·欧特顿", function()
    evt.SetMessage("肯尼思·奥特顿拥有十字军头衔，在绞刑峡谷效力于骑士查尔斯·奇克奥。\n传闻他曾徒手把一条龙摔倒在地。\n当然，击杀时别的骑士也得上。\n肯尼思还拥有健体大师导师的头衔。")
    SetAutonote(171) -- Kenneth Otterton, the Master instructor of Body Building lives in the Dragon Hunter's Camp in Garrote Gorge.
end)

RegisterGlobalEvent(488, "米凯尔·史密森", function()
    evt.SetMessage("米克尔·史密森拥有“贾丹姆最强者”的头衔。\n他同时也是健体技能宗师。\n你若想完美你身体的力量，就去铁沙漠的铁锈镇村找他。")
    SetAutonote(172) -- Mikel Smithson is the Grand Master of the Body Building skill. Seek him out in the village of Rust in the Ironsand Desert.
end)

RegisterGlobalEvent(489, "艾顿·普特南", function()
    evt.SetMessage("奥尔顿·帕特南是冥想艺术的专家。\n你若去海滨城渡鸦海滨找他，他就能教你。")
    SetAutonote(173) -- Alton Putnam, is an Expert in the art of Meditation. He can instruct you if you seek him out in the seaside city of Ravenshore.
end)

RegisterGlobalEvent(490, "葛拉琴·耐芙莫尔", function()
    evt.SetMessage("格雷琴·永逝，教授所有太阳牧师冥想的大师艺术。他住在太阳神殿附近的低语森林。")
    SetAutonote(174) -- Gretchin Nevermore, the teacher of Master Meditation, dwells in the merchant city of Alvar.
end)

RegisterGlobalEvent(491, "蓝诺德·夜行者", function()
    evt.SetMessage("莱纳德·夜行者，冥想宗师，是阴影塔死灵法师公会最重要的成员之一。\n他在黎明城家中教授所有死灵法师冥想之术。")
    SetAutonote(175) -- Lenord Nightcrawler, Grand Master of Meditation, teaches from his home in the village of Twilight.
end)

RegisterGlobalEvent(492, "希尔克·夜行者", function()
    evt.SetMessage("西尔克·夜行者，感知技能的专家导师，把家安在黑暗精灵城阿尔瓦。\n他大部分时间都在教阿尔瓦商人识破隐秘之物所需的技能，不过运气好的话，他也许会抽空教你。")
    SetAutonote(176) -- Silk Nightwalker, Expert teacher of the Perception skill, makes his home in the Dark Elf city of Alvar.
end)

RegisterGlobalEvent(493, "海尔加·钢眼", function()
    evt.SetMessage("海尔加·钢眼，与阴影塔的死灵法师们住在黎明城。\n死灵法师公会感激她在感知技能上的大师级教导。")
    SetAutonote(177) -- Helga Steeleye, teacher of Master Perception, lives in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(494, "巴兰·确尾", function()
    evt.SetMessage("宗师巴兰·稳径住在牛头人城巴尔萨煞巢穴。\n要获得他在感知技能上的教导，你得去残破镇找他。")
    SetAutonote(178) -- Grand Master instructor of Perception, Balan Suretrail lives in the Minotaur city of Balthazar Lair.
end)

RegisterGlobalEvent(495, "凯斯瑞·塔兰", function()
    evt.SetMessage("凯斯里克·塔伦特在铁沙漠铁锈镇村家中教授再生的专家知识。")
    SetAutonote(179) -- Kethric Tarent, teaches Expert Regeneration from his home in the Ironsand Desert village of Rust.
end)

RegisterGlobalEvent(496, "威廉·山普森", function()
    evt.SetMessage("威廉·桑普森，再生大师，住在宁静的低语森林。\n他利用太阳神殿的图书馆增进自己的巨魔历史知识。")
    SetAutonote(180) -- William Sampson, Master Regeneration instructor, lives in Murmurwoods.
end)

RegisterGlobalEvent(497, "多尾乌许", function()
    evt.SetMessage("多尾者乌什，再生宗师兼传奇战士，与族人住在匕伤岛。\n传说他在对抗雷格那海盗的战斗中失去过十三条尾巴，而每次都长出一条新尾巴！")
    SetAutonote(181) -- Ush the Many Tailed, Grand Master Regeneration teacher, lives among his people on the Dagger Wound Islands.
end)

RegisterGlobalEvent(498, "其王·为斯特", function()
    evt.SetMessage("谢冯·维斯特教授解除陷阱的专家知识——这门技能对那些在他匕伤岛老家附近探索废墟神殿的人很有用。")
    SetAutonote(182) -- Chevon Wist, teaches Expert Disarm Trap from his home on the Dagger Wound Islands.
end)

RegisterGlobalEvent(499, "凯力·来特芬格", function()
    evt.SetMessage("凯莉·轻指，解除陷阱大师，已退休回到商业城阿尔瓦的家中。\n在那里她仍教年轻商人设陷阱与解除宝箱机关的技能。\n你若够格，她能把你的解除陷阱技能提升到大师。")
    SetAutonote(183) -- Kelli Lightfingers, Master of Disarming Traps, teaches from her home in the city of Alvar.
end)

RegisterGlobalEvent(500, "加拉司·理夫特", function()
    evt.SetMessage("加雷斯·举重者，解除陷阱宗师，住在奢华的雷格那岛，在那里他教海盗同伴们如何最精巧地为劫掠来的宝箱设陷阱。")
    SetAutonote(184) -- Gareth Lifter, Grand Master of Disarming Traps, teaches from his home on the island of Regna.
end)

RegisterGlobalEvent(501, nil, function()
    if HasItem(1493) then -- Stalt-laced ore
        RemoveItem(1493) -- Stalt-laced ore
        evt.GiveItem(6, ItemType.Weapon_)
        evt.SetMessage("这是你的武器；你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(1492) then -- Erudine-laced ore
        RemoveItem(1492) -- Erudine-laced ore
        evt.GiveItem(5, ItemType.Weapon_)
        evt.SetMessage("这是你的武器；你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(1491) then -- Kergar-laced ore
        RemoveItem(1491) -- Kergar-laced ore
        evt.GiveItem(4, ItemType.Weapon_)
        evt.SetMessage("这是你的武器；你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(1490) then -- Phylt-laced ore
        RemoveItem(1490) -- Phylt-laced ore
        evt.GiveItem(3, ItemType.Weapon_)
        evt.SetMessage("这是你的武器；你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(1489) then -- Siertal-laced ore
        RemoveItem(1489) -- Siertal-laced ore
        evt.GiveItem(2, ItemType.Weapon_)
        evt.SetMessage("这是你的武器；你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(1488) then -- Iron-laced ore
        RemoveItem(1488) -- Iron-laced ore
        evt.GiveItem(1, ItemType.Weapon_)
        evt.SetMessage("这是你的武器；你要是找到更多矿石，我乐意为你打造更多武器。")
    else
        evt.SetMessage("你需要矿石，我才能打造武器。\n矿石越好，我能打造的武器就越好。")
    end
end)

RegisterGlobalEvent(502, nil, function()
    if HasItem(1493) then -- Stalt-laced ore
        RemoveItem(1493) -- Stalt-laced ore
        evt.GiveItem(6, ItemType.Armor_)
        evt.SetMessage("这是你的护甲；你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(1492) then -- Erudine-laced ore
        RemoveItem(1492) -- Erudine-laced ore
        evt.GiveItem(5, ItemType.Armor_)
        evt.SetMessage("这是你的护甲；你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(1491) then -- Kergar-laced ore
        RemoveItem(1491) -- Kergar-laced ore
        evt.GiveItem(4, ItemType.Armor_)
        evt.SetMessage("这是你的护甲；你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(1490) then -- Phylt-laced ore
        RemoveItem(1490) -- Phylt-laced ore
        evt.GiveItem(3, ItemType.Armor_)
        evt.SetMessage("这是你的护甲；你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(1489) then -- Siertal-laced ore
        RemoveItem(1489) -- Siertal-laced ore
        evt.GiveItem(2, ItemType.Armor_)
        evt.SetMessage("这是你的护甲；你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(1488) then -- Iron-laced ore
        RemoveItem(1488) -- Iron-laced ore
        evt.GiveItem(1, ItemType.Armor_)
        evt.SetMessage("这是你的护甲；你要是找到更多矿石，我乐意为你打造更多护甲。")
    else
        evt.SetMessage("你需要矿石，我才能打造护甲。\n矿石越好，我能打造的护甲就越好。")
    end
end)

RegisterGlobalEvent(503, nil, function()
    if HasItem(1493) then -- Stalt-laced ore
        RemoveItem(1493) -- Stalt-laced ore
        evt.GiveItem(6, ItemType.Misc)
        evt.SetMessage("这是你的物品；你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(1492) then -- Erudine-laced ore
        RemoveItem(1492) -- Erudine-laced ore
        evt.GiveItem(5, ItemType.Misc)
        evt.SetMessage("这是你的物品；你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(1491) then -- Kergar-laced ore
        RemoveItem(1491) -- Kergar-laced ore
        evt.GiveItem(4, ItemType.Misc)
        evt.SetMessage("这是你的物品；你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(1490) then -- Phylt-laced ore
        RemoveItem(1490) -- Phylt-laced ore
        evt.GiveItem(3, ItemType.Misc)
        evt.SetMessage("这是你的物品；你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(1489) then -- Siertal-laced ore
        RemoveItem(1489) -- Siertal-laced ore
        evt.GiveItem(2, ItemType.Misc)
        evt.SetMessage("这是你的物品；你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(1488) then -- Iron-laced ore
        RemoveItem(1488) -- Iron-laced ore
        evt.GiveItem(1, ItemType.Misc)
        evt.SetMessage("这是你的物品；你要是找到更多矿石，我乐意为你打造更多物品。")
    else
        evt.SetMessage("你需要矿石，我才能打造物品。\n矿石越好，我能打造的物品就越好。")
    end
end)

RegisterGlobalEvent(504, nil, function()
    evt.SetMessage("岛西侧的信号火箭应当发射，警告船只不要过于靠近岛的那一侧。\n西海岸外的暗礁过去已证明是致命的。")
end)

RegisterGlobalEvent(505, nil, function()
    evt.SetMessage("小心岛南端的沼泽。\n骚扰我们镇子的龙蝇就在那儿产卵！\n")
end)

RegisterGlobalEvent(506, nil, function()
    evt.SetMessage("倒下或枯死的树，有时会藏着宝藏或小玩意。\n不过它也可能是昆虫甚至更糟东西的巢穴！")
end)

RegisterGlobalEvent(507, "泰沙·马克", function()
    evt.SetMessage("泰莎·制造者，怪物鉴定专家，想通过编目绞刑峡谷的各种龙来精进技艺。\n她目前效力于骑士查尔斯·奇克奥。")
    SetAutonote(191) -- Tessa Maker, Expert in Monster Identification, lives in the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(508, "马崔克·锐锋", function()
    evt.SetMessage("马特里克·锐边，鉴定怪物技能大师，目前在研究低语森林的生物。\n你若想达到这门技能的大师级，就得去那儿找他。")
    SetAutonote(192) -- Matric Keenedge, Master Identify Monster teacher, can be found in Murmurwoods.
end)

RegisterGlobalEvent(509, "布拉肯·石刀", function()
    evt.SetMessage("布莱克恩·劈石，怪物鉴定宗师，见过贾丹姆大陆上的每一种生物。\n你若在渡鸦海滨城找到他的家，他就能把知识教给你。")
    SetAutonote(193) -- Blacken Stonecleaver, Grand Master of Monster Identification, teaches his skill from his home in the city of Ravenshore.
end)

RegisterGlobalEvent(510, "诺伯特·杀手", function()
    evt.SetMessage("骑士诺伯特·斩杀者，以武器精通的专家形态教授查尔斯·奇克奥麾下所有骑士。\n你若去绞刑峡谷，可以旁听他的一课。")
    SetAutonote(194) -- Knight Norbert Slayer, Expert Armsmaster instructor, lives in the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(511, "疤面拉沙庭", function()
    evt.SetMessage("伤疤拉斯廷，武器精通技能大师，住在匕伤群岛。")
    SetAutonote(195) -- Lasatin the Scarred, Master teacher of the Armsmaster skill, lives on the Islands of Dagger Wound.
end)

RegisterGlobalEvent(512, "杰斯伯·史提尔克夫", function()
    evt.SetMessage("贾斯珀·钢盔，武器精通技能宗师，是雷格那海盗议会的领袖之一。\n他教所有海盗使用武器。\n你若有勇气去雷格那——并在他的教导下幸存——你也将拥有这门技能的宗师。")
    SetAutonote(196) -- Jasper Steelcoif, Grand Master teacher of the Armsmaster skill, can be found on Regna Island.
end)

RegisterGlobalEvent(513, nil, function()
    if not IsAtLeast(Gold, 1000) then
        evt.SetMessage("我看得出你的心是好的，可你的钱包显然不是。\n没钱就直说。\n无论如何，祝你对付僵尸好运。\n回见！")
        evt.SetNPCTopic(461, 0, 0) -- Lunius Shador topic 0 cleared
        evt.SetNPCTopic(461, 1, 0) -- Lunius Shador topic 1 cleared
        return
    end
    evt.SetMessage("这 1000 金币能大有助于让道路上不见僵尸。\n感谢你的捐献。")
    if not IsAtLeast(Gold, 1000) then
        return
    end
    SubtractValue(Gold, 1000)
    SetQBit(QBit(761)) -- Don't get ambushed
    evt.SetNPCTopic(461, 0, 0) -- Lunius Shador topic 0 cleared
    evt.SetNPCTopic(461, 1, 0) -- Lunius Shador topic 1 cleared
end)

RegisterGlobalEvent(514, nil, function()
    evt.SetMessage("真遗憾。\n真巧，我好像看到路上有些僵尸。\n也许下次你会更乐意捐献。")
    evt.SetNPCTopic(461, 0, 0) -- Lunius Shador topic 0 cleared
    evt.SetNPCTopic(461, 1, 0) -- Lunius Shador topic 1 cleared
end)

RegisterGlobalEvent(515, nil, function()
    evt.SetMessage("太好了！\n这是一箱箭头。\n埃拉西亚的皮普·希利尔收购这些出价最高。务必去见他！")
    ClearQBit(QBit(764)) -- Bought Item 3
    if IsAtLeast(Gold, 200) then
        if not IsAtLeast(Gold, 200) then
            return
        end
        SubtractValue(Gold, 200)
        AddValue(InventoryItem(1494), 1494) -- Crate of Arrowheads
        SetQBit(QBit(762)) -- Bought Item 1
        SetQBit(QBit(768)) -- Can't keep buying 1
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(515, function()
    evt._BeginCanShowTopic(515)
    local visible = true
    if IsQBitSet(QBit(764)) then -- Bought Item 3
        visible = true
        return visible
    else
        if IsQBitSet(QBit(768)) then -- Can't keep buying 1
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(516, "塔必煞·瓦特沙", function()
    evt.SetMessage("塔比莎·分水岭，炼金巫师专家，在商业城阿尔瓦的家中教授药水与药膏技艺。")
    SetAutonote(200) -- Tabitha Watershed, Expert Alchemy instructor, teaches from her home in the merchant city of Alvar.
end)

RegisterGlobalEvent(517, "凯斯瑞·宝石", function()
    evt.SetMessage("凯斯瑞·宝石，炼金巫师大师，住在低语森林，研究那片宁静森林里生长的植物与蘑菇。")
    SetAutonote(201) -- Kethry Treasurestone, Master Alchemy teacher, lives in the Murmurwoods region.
end)

RegisterGlobalEvent(518, "Ich", function()
    evt.SetMessage("伊赫，炼金术宗师，研究酿酒艺术已有数十年。\n他通晓把试剂调和成有益与有害药水的一切。\n去匕伤群岛的葱郁丛林里找他的家。")
    SetAutonote(202) -- Ich, Grand Master of Alchemy, teaches from his home in the lush jungles of the Dagger Wound Islands.
end)

RegisterGlobalEvent(519, "派德拉·密斯瑞", function()
    evt.SetMessage("佩特拉·米斯里特，学习技能专家，住在低语森林太阳神殿附近。")
    SetAutonote(203) -- Petra Mithrit, Expert teacher of the Learning skill, dwells near the Temple of the Sun in the Murmurwoods.
end)

RegisterGlobalEvent(520, "加瑞特·雾春", function()
    evt.SetMessage("加勒特·泉雾，学习大师，教授所有死灵法术学员学习的艺术。\n死灵法师公会为此重谢他。\n他家在阴影塔脚下的黎明城。")
    SetAutonote(204) -- Garret Mistspring, Master of Learning, instructs students from his home is in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(521, "汪达·来特史汪", function()
    evt.SetMessage("旺达·誓光，学习宗师，受雇于查尔斯·奇克奥，教授他麾下所有骑士学习的技能。\n查尔斯·奇克奥希望这能让他的部队在对抗绞刑峡谷龙族的战斗中占得先机。")
    SetAutonote(205) -- Wanda Lightsworn, Grand Master of Learning, lives in the Garrote Gorge Dragon Hunter's Camp.
end)

RegisterGlobalEvent(522, "佛林·沙达", function()
    evt.SetMessage("弗林·沙多，吸血鬼专家，住在暮光城，为任何前往该地区的吸血鬼充当耳目与安全屋。\n他能教你吸血鬼的专家能力。")
    SetAutonote(155) -- Flynn Shador, Expert Vampire ability instructor, lives in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(523, "道格拉斯·德斯摩尔", function()
    evt.SetMessage("道格拉斯·迪尔思穆尔，吸血鬼大师，会教任何本领达他标准的人。\n一旦他教完你，你就掌握了所有吸血鬼天生的大师能力。\n他家在阴影塔的黎明城。")
    SetAutonote(156) -- Douglas Dirthmoore, Master Vampire ability instructor, makes his home in the Shadowspire city of Twilight.
end)

RegisterGlobalEvent(524, "佩吉·阿拉尼雅", function()
    evt.SetMessage("尽管无人确知，佩奇·蛛形，吸血鬼宗师，传闻是贾丹姆大陆上第一位吸血鬼。她通晓作为吸血鬼生存的一切，能教你她所拥有的宗师能力。\n去阴影塔找她的巢穴。")
    SetAutonote(157) -- Payge Arachnia, Grand Master Vampire ability instructor, lives in her lair located in Shadowspire.
end)

RegisterGlobalEvent(525, "费德温·德维禧", function()
    evt.SetMessage("费德温·苦修者能教你黑暗精灵的专家之道。\n一旦受教于他，你就踏上了成为族人领袖的伟大旅程。\n去黑暗精灵城阿尔瓦找他。")
    SetAutonote(152) -- Fedwin Dervish, can instruct you in the Expert ways of the Dark Elf ability. Search him out in the Dark Elf city of Alvar.
end)

RegisterGlobalEvent(526, "蓝西·卡佛希尔", function()
    evt.SetMessage("兰希·洞山，阿尔瓦商人大师，目前住在海滨港城渡鸦海滨。\n她精通如何把所有黑暗精灵天生的能力练到大师级。")
    SetAutonote(153) -- Lanshee Caverhill lives in the seaside port of Ravenshore. She teaches the Master skills of the Dark Elf ability.
end)

RegisterGlobalEvent(527, "堂·爱格瑞尼尔", function()
    evt.SetMessage("唐·阿格雷内尔，阿尔瓦商人大师，能教你黑暗精灵的宗师技能。\n你得证明自己配受他的教导，但回报完全值得这番努力。")
    SetAutonote(154) -- Ton Agraynel can instruct you in the Grand Master skills of a Dark Elf. He lives in the city of Alvar.
end)

RegisterGlobalEvent(528, "Ishton", function()
    evt.SetMessage("伊什顿，绞刑峡谷龙族的初级飞行队长，把所有年轻龙教到其种族龙类能力的专家水平。\n他就住在这儿，绞刑峡谷的龙穴里。")
    SetAutonote(158) -- Ishton instructs Dragons to an Expert skill level with their racial Dragon abilities. He dwells in the Dragon Caves of Garrote Gorge.
end)

RegisterGlobalEvent(529, "Erthint", function()
    evt.SetMessage("龙大师厄辛特是所有效忠于巧爪·掠夺者之龙的飞行队长，能把一条龙的天生龙类能力教到大师级。厄辛特住在绞刑峡谷的龙穴里。")
    SetAutonote(159) -- Master Dragon ability instructor, Erthint, lives in the Dragon Caves of Garrote Gorge.
end)

RegisterGlobalEvent(530, "克兰·疤翅", function()
    evt.SetMessage("克莱因·疤翼，实力仅次于巧爪·掠夺者本人。\n克莱因拥有龙族宗师头衔，教所有龙运用天生能力。\n你若想达到宗师境界，就去找他。\n他就住在这儿，绞刑峡谷的龙穴里。")
    SetAutonote(160) -- Klain, the Grand Master Dragon ability instructor dwells in the Dragon Caves of Garrote Gorge.
end)

RegisterGlobalEvent(531, "急速祭坛", function()
    evt.CastSpell(5, 5, 4, 0, 0, 0, 0, 0, 0) -- Haste
end)

RegisterGlobalEvent(532, "土系抗性祭坛", function()
    evt.CastSpell(36, 5, 4, 0, 0, 0, 0, 0, 0) -- Earth Resistance
end)

RegisterGlobalEvent(533, "神恩祭坛", function()
    evt.CastSpell(83, 5, 4, 0, 0, 0, 0, 0, 0) -- Day of the Gods
end)

RegisterGlobalEvent(534, "护盾祭坛", function()
    evt.CastSpell(17, 5, 4, 0, 0, 0, 0, 0, 0) -- Shield
end)

RegisterGlobalEvent(535, "水系抗性祭坛", function()
    evt.CastSpell(25, 5, 4, 0, 0, 0, 0, 0, 0) -- Water Resistance
end)

RegisterGlobalEvent(536, "火系抗性祭坛", function()
    evt.CastSpell(3, 5, 4, 0, 0, 0, 0, 0, 0) -- Fire Resistance
end)

RegisterGlobalEvent(537, "英雄祭坛", function()
    evt.CastSpell(51, 5, 4, 0, 0, 0, 0, 0, 0) -- Heroism
end)

RegisterGlobalEvent(538, "献祭祭坛", function()
    evt.CastSpell(8, 5, 4, 0, 0, 0, 0, 0, 0) -- Immolation
end)

RegisterGlobalEvent(539, "精神抗性祭坛", function()
    evt.CastSpell(58, 5, 4, 0, 0, 0, 0, 0, 0) -- Mind Resistance
end)

RegisterGlobalEvent(540, "身体抗性祭坛", function()
    evt.CastSpell(69, 5, 4, 0, 0, 0, 0, 0, 0) -- Body Resistance
end)

RegisterGlobalEvent(541, "石肤祭坛", function()
    evt.CastSpell(38, 5, 4, 0, 0, 0, 0, 0, 0) -- Stone Skin
end)

RegisterGlobalEvent(542, "气系抗性祭坛", function()
    evt.CastSpell(14, 5, 4, 0, 0, 0, 0, 0, 0) -- Air Resistance
end)

RegisterGlobalEvent(543, "力量游戏", function()
    if IsPlayerBitSet(PlayerBit(31)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(31))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(544, "耐力游戏", function()
    if IsPlayerBitSet(PlayerBit(32)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(32))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(545, "智力游戏", function()
    if IsPlayerBitSet(PlayerBit(33)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(33))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(546, "个性游戏", function()
    if IsPlayerBitSet(PlayerBit(34)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(34))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(547, "精准游戏", function()
    if IsPlayerBitSet(PlayerBit(35)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(35))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(548, "速度游戏", function()
    if IsPlayerBitSet(PlayerBit(36)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(36))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(549, "幸运游戏", function()
    if IsPlayerBitSet(PlayerBit(37)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(37))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(550, "力量竞赛", function()
    if IsPlayerBitSet(PlayerBit(38)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(38))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(551, "耐力竞赛", function()
    if IsPlayerBitSet(PlayerBit(39)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(39))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(552, "智力竞赛", function()
    if IsPlayerBitSet(PlayerBit(40)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(40))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(553, "个性竞赛", function()
    if IsPlayerBitSet(PlayerBit(41)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(41))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(554, "精准竞赛", function()
    if IsPlayerBitSet(PlayerBit(42)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(42))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(555, "速度竞赛", function()
    if IsPlayerBitSet(PlayerBit(43)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(43))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(556, "幸运竞赛", function()
    if IsPlayerBitSet(PlayerBit(44)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(44))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(557, "力量试炼", function()
    if IsPlayerBitSet(PlayerBit(45)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(45))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(558, "耐力试炼", function()
    if IsPlayerBitSet(PlayerBit(46)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(46))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(559, "智力试炼", function()
    if IsPlayerBitSet(PlayerBit(47)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(47))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(560, "个性试炼", function()
    if IsPlayerBitSet(PlayerBit(48)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(48))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(561, "精准试炼", function()
    if IsPlayerBitSet(PlayerBit(49)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(49))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(562, "速度试炼", function()
    if IsPlayerBitSet(PlayerBit(50)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(50))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(563, "幸运试炼", function()
    if IsPlayerBitSet(PlayerBit(51)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(51))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(564, "力量挑战", function()
    if IsPlayerBitSet(PlayerBit(52)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(52))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(565, "耐力挑战", function()
    if IsPlayerBitSet(PlayerBit(53)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(53))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(566, "智力挑战", function()
    if IsPlayerBitSet(PlayerBit(54)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(54))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(567, "个性挑战", function()
    if IsPlayerBitSet(PlayerBit(55)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(55))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(568, "精准挑战", function()
    if IsPlayerBitSet(PlayerBit(56)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(56))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(569, "速度挑战", function()
    if IsPlayerBitSet(PlayerBit(57)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(57))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(570, "幸运挑战", function()
    if IsPlayerBitSet(PlayerBit(58)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(58))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(571, "火系抗性药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        evt.SetMessage("感谢这瓶药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(256) then -- Fire Resistance
            evt.SetMessage("面对火湖的冲击，我毫无防护！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(256) -- Fire Resistance
        SetQBit(QBit(143)) -- Delivered potion to house 1
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
        if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
            if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 7500)
                        evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("感谢药水，可这一带还有别人没有防护！\n记得也送一瓶给他们！")
end)
RegisterCanShowTopic(571, function()
    evt._BeginCanShowTopic(571)
    local visible = true
    if IsQBitSet(QBit(142)) then -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(572, "火系抗性药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(144)) then -- Delivered potion to house 2
        evt.SetMessage("感谢这瓶药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(256) then -- Fire Resistance
            evt.SetMessage("面对火湖的冲击，我毫无防护！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(256) -- Fire Resistance
        SetQBit(QBit(144)) -- Delivered potion to house 2
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
            if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("感谢药水，可这一带还有别人没有防护！\n记得也送一瓶给他们！")
end)
RegisterCanShowTopic(572, function()
    evt._BeginCanShowTopic(572)
    local visible = true
    if IsQBitSet(QBit(142)) then -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(573, "火系抗性药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(145)) then -- Delivered potion to house 3
        evt.SetMessage("感谢这瓶药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(256) then -- Fire Resistance
            evt.SetMessage("面对火湖的冲击，我毫无防护！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(256) -- Fire Resistance
        SetQBit(QBit(145)) -- Delivered potion to house 3
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("感谢药水，可这一带还有别人没有防护！\n记得也送一瓶给他们！")
end)
RegisterCanShowTopic(573, function()
    evt._BeginCanShowTopic(573)
    local visible = true
    if IsQBitSet(QBit(142)) then -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(574, "火系抗性药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(146)) then -- Delivered potion to house 4
        evt.SetMessage("感谢这瓶药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(256) then -- Fire Resistance
            evt.SetMessage("面对火湖的冲击，我毫无防护！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(256) -- Fire Resistance
        SetQBit(QBit(146)) -- Delivered potion to house 4
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
                if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("感谢药水，可这一带还有别人没有防护！\n记得也送一瓶给他们！")
end)
RegisterCanShowTopic(574, function()
    evt._BeginCanShowTopic(574)
    local visible = true
    if IsQBitSet(QBit(142)) then -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(575, "火系抗性药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(147)) then -- Delivered potion to house 5
        evt.SetMessage("感谢这瓶药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(256) then -- Fire Resistance
            evt.SetMessage("面对火湖的冲击，我毫无防护！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(256) -- Fire Resistance
        SetQBit(QBit(147)) -- Delivered potion to house 5
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
                if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                    if IsQBitSet(QBit(148)) then -- Delivered potion to house 6
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("感谢药水，可这一带还有别人没有防护！\n记得也送一瓶给他们！")
end)
RegisterCanShowTopic(575, function()
    evt._BeginCanShowTopic(575)
    local visible = true
    if IsQBitSet(QBit(142)) then -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(576, "火系抗性药水", function()
    if IsQBitSet(QBit(149)) then -- Southern houses of Rust all have Potions of Fire Resistance.
        evt.SetMessage("你至少暂时把我们的死期推后了，可还得为我们找到新家！\n感谢你送来火抗药水！")
        return
    elseif IsQBitSet(QBit(148)) then -- Delivered potion to house 6
        evt.SetMessage("感谢这瓶药水！")
    else
        evt.ForPlayer(Players.All)
        if not HasItem(256) then -- Fire Resistance
            evt.SetMessage("面对火湖的冲击，我毫无防护！\n我需要一瓶火抗药水！")
            return
        end
        RemoveItem(256) -- Fire Resistance
        SetQBit(QBit(148)) -- Delivered potion to house 6
        evt.ForPlayer(Players.All)
        AddValue(Experience, 1000)
    end
    if IsQBitSet(QBit(143)) then -- Delivered potion to house 1
        if IsQBitSet(QBit(144)) then -- Delivered potion to house 2
            if IsQBitSet(QBit(145)) then -- Delivered potion to house 3
                if IsQBitSet(QBit(146)) then -- Delivered potion to house 4
                    if IsQBitSet(QBit(147)) then -- Delivered potion to house 5
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 1500)
                        evt.SetMessage("感谢你给铁锈镇最南边的房子送去火抗药水。\n也许我们能撑到为大家找到新家！")
                        SetQBit(QBit(149)) -- Southern houses of Rust all have Potions of Fire Resistance.
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("感谢药水，可这一带还有别人没有防护！\n记得也送一瓶给他们！")
end)
RegisterCanShowTopic(576, function()
    evt._BeginCanShowTopic(576)
    local visible = true
    if IsQBitSet(QBit(142)) then -- Deliver Fire Resistance Potions to the six southernmost houses of Rust. Return to Hobert in Rust.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(577, "赏金猎人公会", function()
    if IsQBitSet(QBit(169)) then -- Named Novice Bounty Hunter by the Guild of Bounty Hunters
        evt.SetMessage("赏金猎人新手你好！赏金猎人公会为公众服务，向合格者支付酬金，请他们除掉贾丹姆境内某些生物或匪徒的威胁。\n要升到赏金猎人熟手，你得累计挣得 30000 金币的赏金。")
        return
    elseif IsQBitSet(QBit(170)) then -- Named Journeyman Bounty Hunter by the Guild of Bounty Hunters
        evt.SetMessage("赏金猎人熟手你好！赏金猎人公会为公众服务，向合格者支付酬金，请他们除掉贾丹姆境内某些生物或匪徒的威胁。\n要升到赏金猎人大师，你得累计挣得 70000 金币的赏金。")
        return
    elseif IsQBitSet(QBit(171)) then -- Named Novice Master Hunter by the Guild of Bounty Hunters
        evt.SetMessage("赏金猎人大师你好！赏金猎人公会感谢你为整个贾丹姆所做的服务。我们听你调遣！")
    else
        evt.SetMessage("赏金猎人公会为公众服务，向合格者支付酬金，请他们除掉贾丹姆境内某些生物或匪徒的威胁。\n要升到赏金猎人新手，你得挣得 10000 金币的赏金。")
    end
end)

RegisterGlobalEvent(578, "悬赏！", function()
    if not evt.IsTotalBountyInRange(10000, 29999) then
        if not evt.IsTotalBountyInRange(30000, 69999) then
            if not evt.IsTotalBountyInRange(70000, 1000000) then
                evt.SetMessage("你攒下的赏金还不够，我们无法为你晋升！")
                return
            end
            evt.SetMessage("你目前的等级是赏金猎人大师！这是我们公会的最高等级。")
            if not IsAutonoteSet(498) then -- Have earned status of Master Bounty Hunter.
                SetAutonote(498) -- Have earned status of Master Bounty Hunter.
                evt.ForPlayer(Players.All)
                AddValue(Experience, 1200000)
                ClearQBit(QBit(170)) -- Named Journeyman Bounty Hunter by the Guild of Bounty Hunters
                SetQBit(QBit(171)) -- Named Novice Master Hunter by the Guild of Bounty Hunters
            end
            ClearAutonote(497) -- Have earned status of Journeyman Bounty Hunter.
            evt.SetNPCTopic(109, 2, 0) -- Bryant Conlan topic 2 cleared
            evt.SetNPCTopic(110, 2, 0) -- Cahalli Evenall topic 2 cleared
            return
        end
        evt.SetMessage("你目前是赏金猎人熟手，但赏金不足以晋升大师。")
        if IsAutonoteSet(497) then return end -- Have earned status of Journeyman Bounty Hunter.
        SetAutonote(497) -- Have earned status of Journeyman Bounty Hunter.
        evt.ForPlayer(Players.All)
        AddValue(Experience, 80000)
        ClearQBit(QBit(169)) -- Named Novice Bounty Hunter by the Guild of Bounty Hunters
        SetQBit(QBit(170)) -- Named Journeyman Bounty Hunter by the Guild of Bounty Hunters
        ClearAutonote(496) -- Have earned status of Novice Bounty Hunter.
        return
    end
    evt.SetMessage("你目前是赏金猎人新手，但赏金不足以晋升熟手。")
    if IsAutonoteSet(496) then return end -- Have earned status of Novice Bounty Hunter.
    SetAutonote(496) -- Have earned status of Novice Bounty Hunter.
    evt.ForPlayer(Players.All)
    AddValue(Experience, 40000)
    SetQBit(QBit(169)) -- Named Novice Bounty Hunter by the Guild of Bounty Hunters
end)

RegisterGlobalEvent(580, "亚克梅奇锦标赛", function()
    evt.SetMessage("要被封为阿卡牌勇士，你必须在贾丹姆大陆上、大陆内、大陆下的每一家酒馆赢一局阿卡牌。\n赞助阿卡牌赛事的酒馆共有 11 家。\n完成后回来找我领奖。")
    SetQBit(QBit(173)) -- Win a game of Arcomage in all eleven taverns, then return to Tonk Blueswan in Ravenshore.
    evt.SetNPCTopic(222, 0, 0) -- Tonk Blueswan topic 0 cleared
end)

RegisterGlobalEvent(581, "牧师与死灵法师之战", function()
    if IsQBitSet(QBit(19)) then -- Allied with Necromancers Guild. Steal Nightshade Brazier done.
        evt.SetMessage("由于你把夜影火盆送到他们手中，死灵法师公会在与太阳神殿的战争中占了上风。这件宝物的魔法在阴影塔地区周围制造出永恒的黑暗阴影。在这层掩护下，吸血鬼日夜守卫着这片土地。这让公会得以投入更多骷髅、僵尸和其他不死者军队对抗神殿。我收到的每份报告，都把战线的核心推向太阳神殿的门口。")
        return
    elseif IsQBitSet(QBit(20)) then -- Allied with Temple of the Sun. Destroy the Skeleton Transformer done.
        evt.SetMessage("由于你毁掉了死灵法师公会的骨架转化器，太阳神殿在与公会的战争中占了上风。那装置造出的骷髅是公会增援的主力。没了它们，死灵法师的军队在神殿推进面前土崩瓦解。我收到的每份报告，都把战线的核心推向死灵法师公会的门口。")
    else
        evt.SetMessage("死灵法师公会与太阳神殿分居光明到黑暗光谱的两端，二者关系素来不佳，如今更是公开交战。神殿大祭司奥斯卡·泰尔说，是一次神圣异象驱使他向公会宣战，好把贾丹姆从黑暗的玷污中清洗出去。两派在我们大陆上都算新来者。公会落脚阴影塔，而贾丹姆第一座（也是唯一一座）太阳神殿在低语森林。")
    end
end)

RegisterGlobalEvent(582, "屠龙者", function()
    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        evt.SetMessage("看来查尔斯·奇克奥在绞刑峡谷的猎龙行动几乎把那里的龙捕杀殆尽。我想等他们完事，那些山旅行起来会更安全。不过我倒想知道，没有了龙，贾丹姆会变成什么样。")
        return
    elseif IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
        evt.SetMessage("你替巧爪·掠夺者寻回了他的继承人，让他能安全进攻查尔斯·奇克奥的营地。屠龙者靠孤立猎物成员行动。他们根本没准备好面对成群的龙！不用说，营地的龙产品产量已锐减到涓滴。可惜。公会从前靠它们赚了不少。")
    else
        evt.SetMessage("著名屠龙者、埃拉西亚的查尔斯·奇克奥在绞刑峡谷设了一支狩猎队。这可不是什么“游猎”，事实上，这是我听说过的同类最大规模行动。猎手们有个固定基地，在那里贩卖皮革、龙蛋、幼龙和其他物品。绞刑峡谷向来龙口众多，但我想它们如今必濒临灭绝——奇克奥的猎手效率太高了。")
    end
end)

RegisterGlobalEvent(583, "牛头怪", function()
    if not IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
        evt.SetMessage("残破镇巴尔萨煞巢穴的牛头人是个骄傲的民族。他们新近击败沃里霜巨人，若说有什么影响，那就是让他们愈发桀骜——愈发相信自己能独自面对任何任务。尽管如此，我已告诉公会，他们会成为伟大的盟友——既应对当前危机，日后也可作贸易伙伴。")
        return
    end
    evt.SetMessage("你救了巴尔萨煞巢穴的牛头人，已赢得他们的好感，进而赢得我们公会的好感。即便在危机之中，我们与他们的贸易关系也大有改善。等大灾变之事了结，我相信我们会看到一笔可观的利润——这全是你出色行动的直接成果。")
end)

RegisterGlobalEvent(584, "太远的桥？", function()
    if not IsQBitSet(QBit(2)) then -- Activate Area 1 teleporters 5 and 6.
        evt.SetMessage("火山喷发把桥都毁了，我们到不了船坞！\n我们与大陆隔绝了！")
        return
    end
    evt.SetMessage("你们修好了石头传送门？\n我们都欠你们的情。\n要是穿过废弃神殿的路安全就好了！\n好吧，至少我们可以试试从那儿去船坞。")
end)

RegisterGlobalEvent(585, "岛屿间的旅行", function()
    if not IsQBitSet(QBit(2)) then -- Activate Area 1 teleporters 5 and 6.
        evt.SetMessage("我们从前靠桥在各岛间自由往来。\n火山喷发时，这些桥都毁了。\n许多家庭被困在外岛。\n我们甚至不知道住在那儿的人是否还活着。")
        return
    end
    evt.SetMessage("石头传送门修好后，我们至少能去看看外岛和住在那里的人。\n我们为你修好传送门欠你一份人情。")
end)

RegisterGlobalEvent(586, "船坞", function()
    if not IsQBitSet(QBit(2)) then -- Activate Area 1 teleporters 5 and 6.
        evt.SetMessage("最北岛上的船坞，是匕伤与大陆之间唯一的通路。\n桥一毁，我们到不了船坞，从渡鸦海滨来的人也到不了血滴村！")
        return
    end
    evt.SetMessage("我们能到船坞了？\n可我们得穿过废弃神殿？\n那也算有点进展。\n至少我们能上船了。")
end)

RegisterGlobalEvent(587, "克里根人", function()
    evt.SetMessage("你可知道，我在他们手里当了六年多俘虏？起初我以为他们是地狱来的恶魔，如今却不太确定。他们看起来确实像恶魔，行为却不像。不，我想他们只是另一种怪物种族，像食人魔或地精。无论如何，是不是恶魔，我都高兴这世界摆脱了他们！")
end)

RegisterGlobalEvent(588, "元素领主", function()
    evt.SetMessage("凯瑟琳和我与这些元素位面的“领主”打过交道。我从不信任他们，如今看来我是对的。不久前他们还是我们对抗克里根人的盟友，可几个月后，我们就在这里与他们开战了！这两回，我都不懂他们相助或阻挠的理由。他们充其量是反复无常的存在……说“背信弃义”也许更贴切。")
end)

RegisterGlobalEvent(589, "恩洛斯", function()
    evt.SetMessage("我得说，我很期待回到恩洛斯的故土。我已经太久没见到它，也太久没见到我儿子尼古拉王子了。我上次见他时他还是个孩子，如今都快长大了。汉弗莱爵士是摄政的好人选，可这片土地太久没有国王亲政了。")
end)

RegisterGlobalEvent(590, "埃拉西亚", function()
    evt.SetMessage("我们在埃拉西亚击败克里根人后，我把王位禅让给了我的一位将军——摩根·肯德尔——由他摄政。我已把挑选埃拉西亚新统治者的任务交在他能干的手里。我知道这放弃得很多，但我首先是恩洛斯的女王。大灾变发生时，我们正乘船前往那里，结果被卷到了这里。")
end)

RegisterGlobalEvent(591, "克里根人", function()
    evt.SetMessage("克里根人？他们已经不复存在；我对此确信无疑。我们平定路西法·克里根之后，我的军队搜遍了埃奥法，寻找他们残余的任何迹象。一无所获。不，我们世界的克里根之灾已被清除。")
end)

RegisterGlobalEvent(592, "元素生物", function()
    evt.SetMessage("在对抗克里根人的战役中，我与元素生物并肩作战过。我发现他们坚毅而忠诚。我知道罗兰不赞同，但我不能把他们在此的敌意称作反复无常。不，我认为是别的什么驱使他们攻击我们——也许是魔法？你该去见见我们的贤者赞索。他一直在研究毁灭者的水晶。我想他现在已经有了某种理论。")
end)

RegisterGlobalEvent(594, "制作武器", function()
    if HasItem(691) then -- Stalt-laced ore
        RemoveItem(691) -- Stalt-laced ore
        evt.GiveItem(6, ItemType.Weapon_)
        evt.SetMessage("这是你的武器。你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(690) then -- Erudine-laced ore
        RemoveItem(690) -- Erudine-laced ore
        evt.GiveItem(5, ItemType.Weapon_)
        evt.SetMessage("这是你的武器。你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(689) then -- Kergar-laced ore
        RemoveItem(689) -- Kergar-laced ore
        evt.GiveItem(4, ItemType.Weapon_)
        evt.SetMessage("这是你的武器。你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(688) then -- Phylt-laced ore
        RemoveItem(688) -- Phylt-laced ore
        evt.GiveItem(3, ItemType.Weapon_)
        evt.SetMessage("这是你的武器。你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(687) then -- Siertal-laced ore
        RemoveItem(687) -- Siertal-laced ore
        evt.GiveItem(2, ItemType.Weapon_)
        evt.SetMessage("这是你的武器。你要是找到更多矿石，我乐意为你打造更多武器。")
        return
    elseif HasItem(686) then -- Iron-laced ore
        RemoveItem(686) -- Iron-laced ore
        evt.GiveItem(1, ItemType.Weapon_)
        evt.SetMessage("这是你的武器。你要是找到更多矿石，我乐意为你打造更多武器。")
    else
        evt.SetMessage("你需要矿石，我才能打造武器。\n矿石越好，我能打造的武器就越好。")
    end
end)

RegisterGlobalEvent(595, "制作护甲", function()
    if HasItem(691) then -- Stalt-laced ore
        RemoveItem(691) -- Stalt-laced ore
        evt.GiveItem(6, ItemType.Armor_)
        evt.SetMessage("这是你的护甲。你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(690) then -- Erudine-laced ore
        RemoveItem(690) -- Erudine-laced ore
        evt.GiveItem(5, ItemType.Armor_)
        evt.SetMessage("这是你的护甲。你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(689) then -- Kergar-laced ore
        RemoveItem(689) -- Kergar-laced ore
        evt.GiveItem(4, ItemType.Armor_)
        evt.SetMessage("这是你的护甲。你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(688) then -- Phylt-laced ore
        RemoveItem(688) -- Phylt-laced ore
        evt.GiveItem(3, ItemType.Armor_)
        evt.SetMessage("这是你的护甲。你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(687) then -- Siertal-laced ore
        RemoveItem(687) -- Siertal-laced ore
        evt.GiveItem(2, ItemType.Armor_)
        evt.SetMessage("这是你的护甲。你要是找到更多矿石，我乐意为你打造更多护甲。")
        return
    elseif HasItem(686) then -- Iron-laced ore
        RemoveItem(686) -- Iron-laced ore
        evt.GiveItem(1, ItemType.Armor_)
        evt.SetMessage("这是你的护甲。你要是找到更多矿石，我乐意为你打造更多护甲。")
    else
        evt.SetMessage("你需要矿石，我才能打造护甲。\n矿石越好，我能打造的护甲就越好。")
    end
end)

RegisterGlobalEvent(596, "制作物品", function()
    if HasItem(691) then -- Stalt-laced ore
        RemoveItem(691) -- Stalt-laced ore
        evt.GiveItem(6, ItemType.Misc)
        evt.SetMessage("这是你的物品。你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(690) then -- Erudine-laced ore
        RemoveItem(690) -- Erudine-laced ore
        evt.GiveItem(5, ItemType.Misc)
        evt.SetMessage("这是你的物品。你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(689) then -- Kergar-laced ore
        RemoveItem(689) -- Kergar-laced ore
        evt.GiveItem(4, ItemType.Misc)
        evt.SetMessage("这是你的物品。你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(688) then -- Phylt-laced ore
        RemoveItem(688) -- Phylt-laced ore
        evt.GiveItem(3, ItemType.Misc)
        evt.SetMessage("这是你的物品。你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(687) then -- Siertal-laced ore
        RemoveItem(687) -- Siertal-laced ore
        evt.GiveItem(2, ItemType.Misc)
        evt.SetMessage("这是你的物品。你要是找到更多矿石，我乐意为你打造更多物品。")
        return
    elseif HasItem(686) then -- Iron-laced ore
        RemoveItem(686) -- Iron-laced ore
        evt.GiveItem(1, ItemType.Misc)
        evt.SetMessage("这是你的物品。你要是找到更多矿石，我乐意为你打造更多物品。")
    else
        evt.SetMessage("你需要矿石，我才能打造物品。\n矿石越好，我能打造的物品就越好。")
    end
end)

RegisterGlobalEvent(597, "亚克梅奇锦标赛", function()
    if IsQBitSet(QBit(174)) then -- Won all Arcomage games
        evt.SetMessage("恭喜！\n你已成为阿卡牌勇士！\n奖品就在我家门外的箱子里等着。")
        ClearQBit(QBit(173)) -- Win a game of Arcomage in all eleven taverns, then return to Tonk Blueswan in Ravenshore.
        ClearQBit(QBit(174)) -- Won all Arcomage games
        evt.ForPlayer(Players.All)
        AddValue(Experience, 50000)
        SetQBit(QBit(175)) -- Finished ArcoMage Quest - Get the treasure
        SetAward(Award(41)) -- Arcomage Champion.
        evt.SetNPCGreeting(222, 0) -- Tonk Blueswan greeting cleared
        evt.SetNPCTopic(222, 1, 0) -- Tonk Blueswan topic 1 cleared
    elseif IsQBitSet(QBit(173)) then -- Win a game of Arcomage in all eleven taverns, then return to Tonk Blueswan in Ravenshore.
        evt.SetMessage("你必须在全部 11 家酒馆都取得胜利。\n在此之前，你不能被封为阿卡牌勇士。")
    else
        evt.SetMessage("要被封为阿卡牌勇士，你必须在贾丹姆大陆上、大陆内、大陆下的每一家酒馆赢一局阿卡牌。\n赞助阿卡牌赛事的酒馆共有 11 家。\n完成后回来找我领奖。")
        SetQBit(QBit(173)) -- Win a game of Arcomage in all eleven taverns, then return to Tonk Blueswan in Ravenshore.
    end
end)

RegisterGlobalEvent(598, "岩石尖塔", function()
    if not IsAtLeast(DisarmTrapSkill, 1) then
        SetValue(DiseasedYellow, 0)
        evt.StatusText("You say you will find me the cheeses I desire, but here you are returned, empty-handed! Do not waste my precious time! Bring me cheese--Frelandeau, Eldenbrie and Dunduck! Do not return until you have them!")
        return
    end
    evt.SummonItem(35, 4010, 7736, 544, 1000, 1, false) -- Minotaur Battleaxe
    evt.SummonItem(36, 4010, 7736, 544, 1000, 1, false) -- Two-Handed Axe
    evt.SummonItem(37, 4010, 7736, 544, 1000, 1, false) -- Footman's Axe
    evt.SummonItem(38, 4010, 7736, 544, 1000, 1, false) -- Minotaur War Axe
    evt.SummonItem(39, 4010, 7736, 544, 1000, 1, false) -- Elite Minotaur Axe
    evt.StatusText("我游历这片土地，为的是编目这里能找到的各种奶酪。我的任务即将完成，但还差三种奶酪未尝。它们是 Frelandeau、Eldenbrie 和 Dunduck。谁能替我找到这些稀有而据说美味的珍馐，我必有重谢。")
end)

RegisterGlobalEvent(654, "我的生活", function()
    if not IsQBitSet(QBit(179)) then -- Quests 176-178 done.
        evt.SetMessage("还是个孩子时，我就知道自己与奶酪有着特殊的缘分。你瞧，我的第一段记忆，就是从母亲手里咬一小口农家切达干酪！从那天起我就知道，品尝奶酪、通晓它无尽的奇妙滋味、走遍世界搜寻稀有珍奇的奶酪之物，将是我的热爱。我也就这样造就了自己的人生……与命运。")
        return
    end
    evt.SetMessage("有了你带给我的奶酪，我如今已尝遍世界上已知的所有奶酪。如今谁也不能说我，阿赛尔·弗罗玛戈，不是历史上最杰出的奶酪鉴赏家！无人能与我的荣耀相比！哈哈哈哈……")
end)

RegisterGlobalEvent(655, "沃里奶酪大师", function()
    evt.SetMessage("再没有谁比沃里那些威严的奶酪大师更醉心于奶酪工艺了。沃里霜巨人素来以野蛮著称，却是文明发展潜力的真正典范——至少在奶酪制造方面如此。你可知道，他们有四十二个表示“奶酪”的词。")
end)

RegisterGlobalEvent(656, "Quest", function()
    if not IsQBitSet(QBit(176)) then -- Find a wheel of Frelandeau Cheese. Bring it to Asael Fromago in Alvar.
        evt.SetMessage("我游历这片土地，为的是编目这里能找到的各种奶酪。我的任务即将完成，但还差三种奶酪未尝。它们是 Frelandeau、Eldenbrie 和 Dunduck。谁能替我找到这些稀有而据说美味的珍馐，我必有重谢。")
        SetQBit(QBit(176)) -- Find a wheel of Frelandeau Cheese. Bring it to Asael Fromago in Alvar.
        SetQBit(QBit(177)) -- Find a log of Eldenbrie Cheese. Bring it to Asael Fromago in Alvar.
        SetQBit(QBit(178)) -- Find a ball of Dunduck Cheese. Bring it to Asael Fromago in Alvar.
        return
    end
    evt.ForPlayer(Players.All)
    if HasItem(658) then -- Wheel of Frelandeau
        if HasItem(659) then -- Log of Eldenbrie
            if HasItem(660) then -- Ball of Dunduck
                evt.SetMessage("太好了！把奶酪给我！我必须吃掉它们！啊……咔嚓咔嚓……Frelandeau，绝妙……嗯，还有 Eldenbrie，烟熏得妙极……嗯哼，Dunduck……好吧，这不太美妙，是吧？你让我这趟贾丹姆奶酪编目之旅大功告成！我可以心满意足地死了！一个奶酪人向你致以卑微的谢意。这是答应你的奖赏！")
                evt.ForPlayer(Players.Member0)
                AddValue(Gold, 25000)
                evt.ForPlayer(Players.All)
                AddValue(Experience, 20000)
                RemoveItem(658) -- Wheel of Frelandeau
                RemoveItem(659) -- Log of Eldenbrie
                RemoveItem(660) -- Ball of Dunduck
                SetAward(Award(42)) -- Retrieved three cheeses for Asael Fromago, the Cheese Connoisseur of Alvar.
                ClearQBit(QBit(176)) -- Find a wheel of Frelandeau Cheese. Bring it to Asael Fromago in Alvar.
                ClearQBit(QBit(177)) -- Find a log of Eldenbrie Cheese. Bring it to Asael Fromago in Alvar.
                ClearQBit(QBit(178)) -- Find a ball of Dunduck Cheese. Bring it to Asael Fromago in Alvar.
                SetQBit(QBit(179)) -- Quests 176-178 done.
                evt.SetNPCTopic(254, 2, 0) -- Asael Fromago topic 2 cleared
                return
            elseif HasItem(658) then -- Wheel of Frelandeau
                evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
                return
            elseif HasItem(659) then -- Log of Eldenbrie
                evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
                return
            elseif HasItem(660) then -- Ball of Dunduck
                evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
            else
                evt.SetMessage("你说过会帮我找到我想要的奶酪，结果却空手而归！别浪费我宝贵的时间！给我带奶酪来——Frelandeau、Eldenbrie 和 Dunduck！找不到就别回来！")
            end
            return
        elseif HasItem(658) then -- Wheel of Frelandeau
            evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
            return
        elseif HasItem(659) then -- Log of Eldenbrie
            evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
            return
        elseif HasItem(660) then -- Ball of Dunduck
            evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
        else
            evt.SetMessage("你说过会帮我找到我想要的奶酪，结果却空手而归！别浪费我宝贵的时间！给我带奶酪来——Frelandeau、Eldenbrie 和 Dunduck！找不到就别回来！")
        end
        return
    elseif HasItem(658) then -- Wheel of Frelandeau
        evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
        return
    elseif HasItem(659) then -- Log of Eldenbrie
        evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
        return
    elseif HasItem(660) then -- Ball of Dunduck
        evt.SetMessage("很好，你替我找到了一些我寻觅的奶酪。可如今我一心想要一次完整的奶酪品鉴，三种奶酪同时入口，好让我对比着细品。等你把它们全凑齐了再回来。现在这些我不收。我觉得我忍不住要尝尝你留下的那些——那样奶酪品鉴就毁了！")
    else
        evt.SetMessage("你说过会帮我找到我想要的奶酪，结果却空手而归！别浪费我宝贵的时间！给我带奶酪来——Frelandeau、Eldenbrie 和 Dunduck！找不到就别回来！")
    end
end)

RegisterGlobalEvent(657, "陌生人", function()
    evt.SetMessage("那个陌生人经过这里的夜晚，正是水晶在镇中心喷发的同一夜。\n我只匆匆瞥了那陌生人一眼。\n他看不出是那位强大法师的模样。\n他召唤水晶时我不在镇广场，但我确实看到了划过天空的那道闪光。\n那真是个可怕的夜晚。")
end)

RegisterGlobalEvent(658, "水晶之夜", function()
    evt.SetMessage("一个流浪汉走进镇来。\n几个地痞想抢走这位旅人可能带的钱财。流浪汉几乎没怎么理会他们。\n他手腕轻轻一甩，那些人便全倒在他面前。\n然后他走到镇广场，召唤出了你今天在那里看到的那块巨大水晶。")
end)

RegisterGlobalEvent(659, "水晶", function()
    evt.SetMessage("黑暗精灵中有句古话，\n“一物只活在最后一个记得它的人心中。”\n水晶闯入我们生活那夜的事件，会被铭记很久很久。\n我们许多人都目睹了那一夜。\n召唤水晶的法师对我们一言未发。\n当他看向我们时，他心中与眼中似乎只有怜悯。")
end)

RegisterGlobalEvent(660, "漫游法师", function()
    evt.SetMessage("那法师走进镇时，我没多想。\n这里是渡鸦海滨。\n走贾丹姆道路的人，早晚都会经过这里。\n我想我本就该多留意他。\n看来他在镇广场掀起了好大动静。")
end)

RegisterGlobalEvent(661, "海盗袭击", function()
    evt.SetMessage("雷格那海盗掌控着大海。\n没人能抵挡他们！\n几年前，一些渔船船长想驶往埃拉西亚求援对付海盗。\n我们再也没见过他们，也没听过他们的消息。")
end)

RegisterGlobalEvent(662, "Regnans", function()
    evt.SetMessage("雷格那人是踏足贾丹姆海岸的最卑劣的渣滓。他们阻断这片大陆的人与埃拉西亚、恩洛斯通商。\n我们又能如何？\n连阿尔瓦商人都凑不出一支舰队对付海盗。\n传闻附近有走私者找到了绕过海盗封锁的办法。")
end)

RegisterGlobalEvent(663, "无尽之洋帝国", function()
    evt.SetMessage("雷纳格人自称无尽洋帝国——把自己吹得比实际了不起。\n他们不过是恶霸和匪徒。\n当然，别告诉他们这是我说的！")
end)

RegisterGlobalEvent(664, "食人妖和盗匪", function()
    evt.SetMessage("过去几周，有多起报告说，贾丹姆各条大路上都有匪徒和食人魔劫掠旅人。时势真是越来越糟。\n雷格那海盗加上这些匪徒，看来谁出门都不安全。")
end)

RegisterGlobalEvent(665, "陆地旅游", function()
    evt.SetMessage("几个武士凑到一起，去收拾扎营在通往渡鸦海滨大路上的食人魔。\n就在那时，我们头一次听说他们在这一带西南修建的堡垒。\n堡垒完工后，南边和西边的路就不太平了。")
end)

RegisterGlobalEvent(666, "Smugglers", function()
    evt.SetMessage("贾丹姆走私者也许只是个传说，但我看不是。\n阿尔瓦商人似乎能把少量货物渡海运到埃拉西亚和恩洛斯。\n可他们自己并没有船。\n这似乎支持了真有走私者的说法。\n至于他们为何为商人效力，就不是我这种人能懂的了。")
end)

RegisterGlobalEvent(667, "狼鼠人！", function()
    evt.SetMessage("鼠人！\n他们是最卑劣的渣滓！\n夜里翻我们的垃圾！\n总在黑暗里窜来窜去！\n太阳一升起就不见踪影。\n真让人直起鸡皮疙瘩！")
end)

RegisterGlobalEvent(668, "铁沙漠的独眼巨人", function()
    evt.SetMessage("住在这一带东南的独眼巨人，一直威胁着铁锈镇村！\n但村子总能击退任何进犯。\n它们数量少时并不难对付，可要是在沙漠里趁你不备撞上，你就活不成了！\n")
end)

RegisterGlobalEvent(669, "火焰之海", function()
    evt.SetMessage("火湖打了我们所有人一个措手不及。\n它像野火一样烧遍村子东半边。\n幸运的是，它的蔓延似乎慢了下来。\n可我仍不知道我们谁还能撑多久。")
end)

RegisterGlobalEvent(670, "替我们找个家！", function()
    evt.SetMessage("我们得找个新地方住！\n这种条件下谁也活不下去。\n连独眼巨人都将被迫迁走。\n有传说提到我们迁居至此之前的古老故乡。\n故事说那里郁郁葱葱。\n我们要是有这么个地方可回就好了。")
end)

RegisterGlobalEvent(671, "矿石商人", function()
    evt.SetMessage("阿尔瓦和阴影塔有商人收购贾丹姆各地能找到的各种矿石。\n他们用矿石打造物品，再非常乐意地拿去换更多矿石！")
end)

RegisterGlobalEvent(672, "时光库", function()
    evt.SetMessage("你知道吗，据说时间宝库早在渡鸦海滨之前就在这儿了；镇子是绕着它建起来的。里面据说藏着数百年前统治这一带的老皇帝索恩的宝藏。许多人来这儿想打开宝库，却无人成功。")
end)

RegisterGlobalEvent(673, "叛逆飞龙", function()
    evt.SetMessage("奇克奥给我们添的乱还不够，我们还得对付伊尔辛戈、伊尔辛戈和老洛布——我们同族中的叛徒！他们以为散居贾丹姆、自立部落就能重建我们的种族。傻瓜！他们离开族人，只会削弱我们。亚德雷克逃到了铁沙漠。其余人去了哪儿，我不知道。")
end)

RegisterGlobalEvent(674, "其它飞龙", function()
    evt.SetMessage("虽然绞刑峡谷是贾丹姆龙密度最高之地，我听说别处也有猎物。比如，传闻铁沙漠里有一条古老巨龙。另一条据说在残破镇的恶土某处。")
end)

RegisterGlobalEvent(675, "雷格那飞龙", function()
    evt.SetMessage("查尔斯·奇克奥把我们从埃拉西亚带过来时，船驶过雷格那岛。由于这是航程中我们头一次见到贾丹姆的土地，我看到一条古龙振翅飞向该岛，算是我们狩猎远征马到成功的吉兆。我多希望能给那家伙一矛！那是我见过最大的龙！")
end)

RegisterGlobalEvent(676, "毁灭者", function()
    evt.SetMessage("是的，毁灭者走过渡鸦海滨那天，我就在这儿！我正在铁匠铺磨刀。他径直走过我们身边，好像这镇子是他的。一群人远远跟在他后面。其中一个扔了块石头，却从环绕他的魔法护盾上弹开。他似乎根本没察觉。后来我听到镇广场传来爆炸声。我跑出去看，毁灭者已不见，只剩那块水晶和散落的尸体。")
end)

RegisterGlobalEvent(677, "毁灭者", function()
    evt.SetMessage("是啊，我见过那“毁灭者”，这名字他当之无愧！我当他是个有钱商人，看上去像个软柿子，于是我……咳，我想抢他。我跑到他前头，埋伏在一条巷子里等他经过。他走过时，我一把扑上去。我错了！我连碰都没碰到他！我一靠近他，就被他的魔法掀飞。事实上，我被掀过一栋房子，落到下一条街！")
end)

RegisterGlobalEvent(678, "伊普神庙", function()
    evt.SetMessage("那些该诅咒的鼠人——那些所谓的“伊普祭司”——纯粹是麻烦。与其说是圣徒，不如说他们是一群贼！我警告你，旅人。他们在的时候，盯紧你的装备。凡是没钉牢的，他们都偷。")
end)

RegisterGlobalEvent(679, "Cheese", function()
    evt.SetMessage("好吧，你要是找奶酪，我敢说你在伊普的教堂里能找到。你知道老鼠爱奶酪。这条规矩也适用于伊普的鼠人。据说他们每座神庙里都囤着一大窝这东西。")
end)

RegisterGlobalEvent(680, "土之王", function()
    evt.SetMessage("我们这儿问题一大堆，除此之外，我们位面之主“残酷者格拉尔柯”失踪了。他是强大的存在，无疑能对抗侵袭这个位面的黑暗魔法。")
end)

RegisterGlobalEvent(681, "土元素界", function()
    evt.SetMessage("真希望我明白这里发生了什么。有一天这里还一如往常……这通常是个宁静的领域。然后突然间，所有人都在狂暴的疯狂中嚎叫，满心渴望碾碎你们贾丹姆的土地。即便此刻，我土元素位面的同胞仍一门心思要把我们国度的天穹挤进你们的国度。")
end)

RegisterGlobalEvent(682, "Shalwend", function()
    evt.SetMessage("也许我未受疯狂影响，是因为身上带着这个位面之主沙尔文德给我的护身符。我们的传说中说，他和其他元素领主创造了你们的世界。要是沙尔文德在这里，无疑能止住蔓延的疯狂，可他失踪了！我们最需要他的时候，我们的主在哪里？")
end)

RegisterGlobalEvent(683, "风元素界", function()
    evt.SetMessage("显然是魔法造成了这场攫住我气元素位面同胞的疯狂。事发当天，顿时一片混乱。所有受影响者都放下手头的事，开始嚎叫。那是一片恐怖的合唱！我们只有少数人保持清醒。如今，一天天过去，我们光辉的国度越来越滑向地狱般的衰败。")
end)

RegisterGlobalEvent(684, "水元素界", function()
    evt.SetMessage("我对魔法之道并非一窍不通。显然是某种几乎难以想象之力的法术，影响了这个水域国度的居民。我最好奇的是它为何发生。显然，若不是为达成某种可怕目的，谁也不会冒险动用这种力量。我只知道，水元素位面正在向你们的国度开战。从这里，我看不出其中有什么道理！")
end)

RegisterGlobalEvent(685, "Acwalander", function()
    evt.SetMessage("我、我的家水域发、发生了什、什么？全都被疯、疯狂吞噬了！更糟的是，我们的领、领主失踪了！我们的统、统治者在哪，强大的阿、阿克瓦兰德！没有他，我们就、就完了！")
end)

RegisterGlobalEvent(686, "Pyrannaste", function()
    evt.SetMessage("我知道在你们眼里，这个位面一定像片地狱景象。但我告诉你，平时并非如此。疯狂降临前，我们在此和平和谐地共处。可后来，有一天疯狂降临，我们的领主皮拉纳斯泰遍寻不见。也许他的缺席导致了疯狂？或许如此——在我的记忆里，他从未离开过这个国度。")
end)

RegisterGlobalEvent(687, "火元素界", function()
    evt.SetMessage("尽管疯狂几乎影响了这里所有居民，却没有剥夺他们的狡诈。我想你也明白，他们向你们的国度开战，但并非疯狂地乱打。受影响者中已涌现领袖，这些人正对你们谋划精明的军事计策。即便此刻，他们正聚在通往贾丹姆的门附近，准备大举进攻。")
end)

RegisterGlobalEvent(688, "Adventure", function()
    if not IsQBitSet(QBit(19)) then -- Allied with Necromancers Guild. Steal Nightshade Brazier done.
        evt.SetMessage("真希望我能与你们同行。可悲的是，我们与太阳神殿的战争占满了全部时间。公会现在抽不出我。")
        return
    end
    evt.SetMessage("好吧，既然我们与太阳神殿的小战争似乎已尘埃落定。山德罗说，公会成员可以把注意力转向别的事了。来到贾丹姆后，除了阴影塔一带，我几乎没怎么见识过这片土地。我说……也许你能用上我的效劳！")
    evt.SetNPCTopic(278, 0, 617) -- Hevatia Deverbero topic 0: Roster Join Event
end)

RegisterGlobalEvent(689, "加入我们", function()
    if not IsQBitSet(QBit(20)) then -- Allied with Temple of the Sun. Destroy the Skeleton Transformer done.
        evt.SetMessage("我希望我能。不幸的是，我们正与卑劣的死灵法师公会打圣战。太阳神殿的全部资源，包括我自己，都投入了这一事业。")
        return
    end
    evt.SetMessage("是的！我很乐意加入你们。既然我们对抗卑劣死灵法师公会的圣战看来进展顺利，我发现这儿没什么事可做。你若带我走，我就随你们去。")
    evt.SetNPCTopic(279, 0, 618) -- Verish  topic 0: Roster Join Event
end)

RegisterGlobalEvent(690, "Adventure", function()
    if not IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
        evt.SetMessage("跟你们走？我想不会。我在这儿有的是热闹，何必加入一群外行？别逗我笑了。你们能给我什么，是猎龙生涯给不了的？")
        return
    end
    evt.SetMessage("与你们一同冒险？好啊。事实上，查尔斯·奇克奥离开前就这么建议过。“内利克斯，”他说，“那些联盟英雄要是路过，你该考虑跟他们走。”显然，他很看重你们。好吧，他的举荐对我就够了。我们走？")
    evt.SetNPCTopic(280, 0, 619) -- Nelix Uriel topic 0: Roster Join Event
end)

RegisterGlobalEvent(691, "与我们同行", function()
    if not IsQBitSet(QBit(34)) then -- Alliance Council formed. Quest 13 done.
        evt.SetMessage("跟你们走？我喜欢这主意，可我必须留下。我是这儿仅剩的老兵之一。我必须留下保卫村庄。")
        return
    end
    evt.SetMessage("好，听上去不错。虽然村子需要我保护，但我想，我能为它做的最好的事，就是跟你们走。大灾变不结束，我的族人就会覆灭。我若能做点什么阻止它，就该去做。")
    evt.SetNPCTopic(281, 0, 620) -- Sethrc Thistlebone topic 0: Roster Join Event
end)

RegisterGlobalEvent(692, "Adventure", function()
    if not IsQBitSet(QBit(34)) then -- Alliance Council formed. Quest 13 done.
        evt.SetMessage("加入你们？我必须婉拒。尽管你为我的兽群立了大功，我仍不太确定你的领导。我想帮忙对抗大灾变，但我不确定你的路子对不对。")
        return
    end
    evt.SetMessage("加入你们？我乐意。你们不仅为我的兽群立了大功，我也已清楚，你们的行动将决定我们的生死存亡。")
    evt.SetNPCTopic(282, 0, 621) -- Rionel topic 0: Roster Join Event
end)

RegisterGlobalEvent(693, "Adventure", function()
    if not IsQBitSet(QBit(34)) then -- Alliance Council formed. Quest 13 done.
        evt.SetMessage("我看你们也是冒险者。不过……我能直说吗？尽管我不怀疑你们的潜力，你们显然不是我见过最老练的队伍。你们要是更……怎么说，“历练”一些，我很乐意加入。")
        return
    end
    evt.SetMessage("别以为你们的事迹没人注意到！你们显然是最高水准的冒险者。我会考虑加入你们的队伍……也就是说，你们肯要我的话。")
    evt.SetNPCTopic(283, 0, 622) -- Adric Stellare topic 0: Roster Join Event
end)

RegisterGlobalEvent(694, "和我们一起走", function()
    if not IsQBitSet(QBit(34)) then -- Alliance Council formed. Quest 13 done.
        evt.SetMessage("不。我是个年长的吸血鬼。说清楚些，你们配不上我。我寻求冒险，不是来当你们保姆的。我没有耐心教你们所有基础。")
        return
    end
    evt.SetMessage("好！好主意。你们正是我在寻找的同伴。我听过你们和你们的冒险。")
    evt.SetNPCTopic(284, 0, 623) -- Infaustus  topic 0: Roster Join Event
end)

RegisterGlobalEvent(695, "与我们同行", function()
    if not IsQBitSet(QBit(34)) then -- Alliance Council formed. Quest 13 done.
        evt.SetMessage("我想不会。既然有机会打量你们，很明显你们配不上与我同行。我要的是名声更盛的队伍。")
        return
    end
    evt.SetMessage("是的，你们似乎配得上与我同行。好吧，你们肯要我，我就走。")
    evt.SetNPCTopic(285, 0, 624) -- Brimstone topic 0: Join
end)

RegisterGlobalEvent(696, "加入我们", function()
    if not IsQBitSet(QBit(38)) then -- Quest 36 is done.
        evt.SetMessage("你开玩笑！我是位大名鼎鼎的骑士。我凭什么跟你们这样的乌合之众同行？哦，这也许有点好玩，可我得顾及自己的名声。")
        return
    end
    evt.SetMessage("我得说这主意很吸引我。嗯，好！旷野的味道正是我需要的。我干屠龙这行太久了，得说它让我腻了。人得让自己保持兴趣。你们愿意，我就跟你们走。")
    evt.SetNPCTopic(288, 0, 627) -- Tempus  topic 0: Roster Join Event
end)

RegisterGlobalEvent(697, "加入我们", function()
    if not IsQBitSet(QBit(38)) then -- Quest 36 is done.
        evt.SetMessage("加入你们？呵-呵。多有趣的主意。伟大的索恩·底石凭什么跟你们这种人同行？")
        return
    end
    evt.SetMessage("好！听上去真棒。从我听到的你们的冒险来看，你们有机会成就伟大。有我相助，我们能把这机会变成必然。那么，我们走？我总在寻找为自己传奇添砖加瓦的机会！")
    evt.SetNPCTopic(289, 0, 628) -- Thorne Understone topic 0: Roster Join Event
end)

RegisterGlobalEvent(698, "Adventure", function()
    if not IsQBitSet(QBit(38)) then -- Quest 36 is done.
        evt.SetMessage("是啊，冒险是件好事。你瞧，我经历过好几次。其实，让我给你们讲讲我那次……哎，我刚反应过来，你是在建议我跟你们一起冒险！好提议，不过……怎么说才礼貌呢？你们历练得还不够。恐怕你们眼下准备面对的那类挑战，会让我无聊。")
        return
    end
    evt.SetMessage("啊，“冒险”。我近来确实还没过够。自从与霜巨人的战争后，我除了训练年轻武士几乎没干别的。我说，你不会正好想找个旅伴吧？也许我可以跟你们走。我有许多你们也许用得上的技能，而且我斧子使得致命！")
    evt.SetNPCTopic(290, 0, 629) -- Ulbrecht topic 0: Roster Join Event
end)

RegisterGlobalEvent(699, "与我们同行", function()
    if not IsQBitSet(QBit(38)) then -- Quest 36 is done.
        evt.SetMessage("尽管长眠之后我看着不像，可记住，你在与当今最伟大的吸血鬼之一说话。跟你们走？我想不会。你们的缺乏经验，对我来说是累赘多于助力。我独自行动更好。")
        return
    end
    evt.SetMessage("啊，你是建议我随你们一道，亲眼看看这片土地。好建议。我当然歇得够了！好吧，你们肯带我，我就准备上路。")
    evt.SetNPCTopic(292, 0, 631) -- Artorius Veritas topic 0: Roster Join Event
end)

RegisterGlobalEvent(700, "加入我们", function()
    if not IsQBitSet(QBit(38)) then -- Quest 36 is done.
        evt.SetMessage("加入你们？多蠢的念头。我身上已经带着若干跳蚤了。我不需要更多寄生虫。走开！")
        return
    end
    evt.SetMessage("加入你们！哈！我钦佩你的胆量。是的……非常钦佩。好吧。我尊重你。我跟你们走。")
    evt.SetNPCTopic(293, 0, 632) -- Duroth the Eternal topic 0: Join
end)

RegisterGlobalEvent(701, "家族墓穴", function()
    evt.SetMessage("弹指家的墓是我们村子地下墓室里最低的一处。由于我们是如此荣耀的家族，我们的墓穴最大。它可不是好找的地方——连我都曾找迷过！我找到它的办法，是一只手贴着右侧墙走。最终总能到。")
end)

RegisterGlobalEvent(702, "你找到盾牌了吗？", function()
    evt.SetMessage("你们找到那面盾了吗？\n寻回日食之盾对太阳神殿至关重要！\n你们必须帮我们找到它！")
end)
RegisterCanShowTopic(702, function()
    evt._BeginCanShowTopic(702)
    local visible = true
    if IsQBitSet(QBit(128)) then -- Recovered the the Shield, Eclipse for Lathius
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(703, "好好善用日蚀盾牌", function()
    evt.SetMessage("再次感谢你们寻回日食之盾！\n希望它在你们的冒险中帮得上忙。")
end)

RegisterGlobalEvent(706, "与我们同行", function()
    if not IsQBitSet(QBit(59)) then -- Returned to the Merchant guild in Alvar with overdune. Quest 25 done.
        evt.SetMessage("抱歉。我是想冒险，没错，可你们就是不在我的层次上。")
        return
    end
    evt.SetMessage("当然，何乐而不为？我准备好走了——只需抓起我的装备！我要让公会看看，谁配谁不配！")
    evt.SetNPCTopic(270, 0, 609) -- Karanya Memoria topic 0: Roster Join Event
end)

RegisterGlobalEvent(707, "与我们同行", function()
    if not IsQBitSet(QBit(59)) then -- Returned to the Merchant guild in Alvar with overdune. Quest 25 done.
        evt.SetMessage("不……不，那种生活对我已经结束。再说，我若重新拿起钉锤，也会是和别的同伴一起。恕我直言——我实在无法想象自己与你们这样缺乏经验的队伍同行。")
        return
    end
    evt.SetMessage("我说，这听起来太棒了！好，你们肯要我，我就跟你们走。")
    evt.SetNPCTopic(271, 0, 610) -- Maylander  topic 0: Roster Join Event
end)

RegisterGlobalEvent(708, "加入我们", function()
    if not IsQBitSet(QBit(59)) then -- Returned to the Merchant guild in Alvar with overdune. Quest 25 done.
        evt.SetMessage("我想不会！我凭什么跟你们这种人同行？也许你没听清我的名字，“贾斯·塞尔本？”对，就是那个“塞尔本”，乌合之众。不，不管你们在搞什么，我没兴趣。")
        return
    end
    evt.SetMessage("好，我们会组成一支了不起的队伍！我们都建下如此伟绩，联合起来岂能不续辉煌？你们愿意，我就跟你们走。")
    evt.SetNPCTopic(275, 0, 614) -- Jasp Thelbourne topic 0: Roster Join Event
end)

RegisterGlobalEvent(709, "食人妖强盗", function()
    if not IsQBitSet(QBit(67)) then -- I have killed all the oges in the ogre fort
        evt.SetMessage("我告诉你，乱成这样，老实商人简直做不成生意！我是说，我们一向得对付食人魔劫掠者，可如今他们胆子大到在阿尔瓦这儿建起了堡垒！现在商队都不敢走西去低语森林的路。最糟的是，我和那边太阳神殿的大部分生意都在那儿！")
        return
    end
    evt.SetMessage("你们清掉食人魔的堡垒，为我们大家立了大功。如今我们的商队又能自由前往低语森林了。我感谢你们……我的钱包当然也感谢你们！")
end)

RegisterGlobalEvent(710, "Wasps", function()
    evt.SetMessage("我们阿尔瓦当然有黄蜂——而且个头还不小——可我们容忍它们是有道理的。我们许多顾客想要蜂产品。我说……你要是想掺和一手，商人维尔多是蜂体中间商。他就住在镇上，我听说他眼下正想接一大批黄蜂尾刺的订单。")
end)

RegisterGlobalEvent(711, "受过训练的飞龙", function()
    evt.SetMessage("这事没多少人知道，龙是可以训练的。有点像驯马，只不过需要更特殊的装备和大量魔法。堡垒外那些温顺的龙就是我的作品。此刻它们效忠于我们，但我会把它们交给最终买主——恩洛斯的小领主芬尼斯·格林伍德。当然，等他付了钱我就这么做。")
end)

RegisterGlobalEvent(712, "Zanthora", function()
    evt.SetMessage("赞索拉是个怪人。倒不是说死灵法师公会的人不怪，可她是真疯。我听说其他公会成员干脆拒绝与她共事——她的实验太可怕了。尽管如此，他们看重她的黑暗天才。为了把她留在身边，他们在镇外沼泽荒地为她单建了一座实验室。")
end)

RegisterGlobalEvent(713, "吸血鬼墓窖", function()
    evt.SetMessage("大体上说，死灵法师公会把当地吸血鬼控制住了……大体上。可有个地方你千万别去！他们大多睡在公会北边的一座公共墓穴里。你去那儿可当心。他们有点，怎么说……“领地意识”。")
end)

RegisterGlobalEvent(714, "公会", function()
    evt.SetMessage("死灵法师公会？嘿，我觉得他们很棒。你真该看看他们来之前这地方——死气沉沉！当然，我们有吸血鬼、骷髅和其他不死者到处晃。不过我得说，这一带热闹多了！")
end)

RegisterGlobalEvent(715, "Coffins", function()
    evt.SetMessage("你可以想见，生意好极了。哦，当然，公会的死灵法师把我大多数顾客变成了骷髅和僵尸，可吸血鬼可是回头客！想分一杯羹吗？镇上来了个木材商迈兰德，总在收购上好的低语森林木材。你要有，他肯出大价钱。")
end)

RegisterGlobalEvent(716, "熔岩隧道", function()
    evt.SetMessage("近来狩猎变得相当危险，可要吃饭我们就得猎！昨天我在火湖西岸，发现一条似乎通向湖底的隧道。不过我没探。那里满是高戈，还有更糟的……就像如今这一带的一切。")
end)

RegisterGlobalEvent(717, "Navigation", function()
    evt.SetMessage("连我们住在这儿的人都会迷路。你要不想迷路，就跟着漂浮的路标石走。啊……疯狂又回来了……它回来了！")
end)

RegisterGlobalEvent(718, "轻松的生活", function()
    evt.SetMessage("啊，我很高兴是你们出外拯救世界。我是说，总得有人去干。我呢，图的是安逸日子。只要有船有竿，鱼肯咬钩，我看就没必要干别的。不过祝你们好运！")
end)

RegisterGlobalEvent(719, "恐怖海盗史坦力", function()
    evt.SetMessage("那个斯坦利，真是个有两下子的雷格那人！我听说就是他让我们跟那豺狼佐德搞好了关系——我想是个食人魔还是大巨魔什么的——一个实打实的蛮族国王。如今我们海上有船、陆上有一群挥舞棍棒的恶棍。我告诉你，有恐怖海盗斯坦利为我们效力，伟大无敌的雷格那帝国正走向辉煌！")
end)

RegisterGlobalEvent(720, "贾丹姆的走私者", function()
    evt.SetMessage("哦，当然，我们雷格那人得容忍一点竞争——我指的是走私者，你知道的——可我听说恐怖海盗斯坦利正在收拾他们。我听说他绑架了艾瑞安·韩特的家人，好胁迫那个鼠人别踏我们的地盘。")
end)

RegisterGlobalEvent(721, "史坦力的财宝", function()
    evt.SetMessage("是啊，我知道“恐怖”海盗斯坦利是这一带眼下的英雄，可我说，哼！他为雷格那做了不少事没错，可没人做不为自己的事。我听说老斯坦利每笔交易都要刮一层——而那可有不少笔交易！我倒想知道他把财宝藏哪儿。我看大概不在雷格那。不出半个月就会被人刨出来！")
end)

RegisterGlobalEvent(722, "隐藏的财宝", function()
    evt.SetMessage("我想出了一个找宝藏的计策。你闯进来之前，我正埋头研制一道感知地下黄金的法术。若成功，我计划让一条龙驮我飞过残破镇的荒地——传闻恐怖海盗斯坦利的宝藏就埋在那儿。我的法术会找到它，我就发财了。")
end)

RegisterGlobalEvent(723, "埋葬岗", function()
    evt.SetMessage("你是说就在这北边那座？我们谁也不跟它沾边。它闹鬼！")
end)

RegisterGlobalEvent(724, "伊普的信仰者", function()
    evt.SetMessage("我不知道他们在哪儿，可我知道这附近有那些鼠人。夜里我听见外面各种吱吱声和窜动声。早上，凡是没上锁、没钉牢的东西几乎都不见了。我要是知道那座伊普教堂在哪儿，就带几个弟兄过去好好……谈谈。")
end)

RegisterGlobalEvent(725, "水元素界传送门", function()
    evt.SetMessage("我和一支小队在新湖一带干活，搜寻从巢穴里冲出来的东西。我们觉得找到了洪水的源头。湖中央有一道奇异的门。我们没有船，所以没探，但即使从岸边也能清楚看到，它通向一个水域国度。")
end)

RegisterGlobalEvent(726, "海盗要塞", function()
    evt.SetMessage("好吧，你要是没去过堡垒，那该是你去的第一个地方。正如你们受训时所知，这个岛上所谓的堡垒只是个迷惑敌人的幌子。你们得想办法去新月岛上真正的堡垒。沿你们受训地图上标出的地下通道走即可。")
end)

RegisterGlobalEvent(727, "雷格那文化", function()
    evt.SetMessage("我知道他们在贾丹姆叫我们“海盗”，可实际上我们只是在治理我们的帝国。我们贾丹姆的臣民不肯承认我们的统治、不纳税，这可不是我们的错。既然他们不缴，我们就被迫以战利品的形式征收贡赋。其实我们更喜欢这样——省了真去统治大陆的麻烦。")
end)

RegisterGlobalEvent(728, "龙葵护身符", function()
    if not IsQBitSet(QBit(19)) then -- Allied with Necromancers Guild. Steal Nightshade Brazier done.
        evt.SetMessage("我们吸血鬼平常不能在日光下走动，但死灵法师公会会长桑特造了一件宝物解决这个问题。佩戴他夜影护符的吸血鬼无论昼夜都能自由行动。可惜存货不多。我自己也没有，所以白天只能待在屋里。")
        return
    end
    evt.SetMessage("平常我们吸血鬼要戴桑特的夜影护符才能白天自由行走，可自从你们给我们带来夜影火盆，辉煌的黑夜就二十四小时笼罩着阴影塔！如今我们这些没有护符的，白天也能走动了……嗯，至少待在这片区域内可以。")
end)

RegisterGlobalEvent(729, "俗气的珠宝", function()
    evt.SetMessage("虽然不是我的风格，可我得说这一带很多人喜欢满身珠宝。他们说是时尚，我只觉得俗艳。总之，你要有东西卖，去找镇上的帕维尔。他各种俗气小玩意儿生意做得很红火。")
end)

RegisterGlobalEvent(730, "Sunfish", function()
    evt.SetMessage("你找太阳鱼？抱歉，帮不了你。有意思的是，上周我刚捞了整整一网，可商人帕维尔全买走了。也许你能从他那儿弄到。")
end)

RegisterGlobalEvent(731, "储藏仓库", function()
    evt.SetMessage("楼下我们有个小仓库。你们可以随意用那里的箱子存放多余装备。把不想弄丢的东西都放进去！")
end)

RegisterGlobalEvent(732, "Hint", function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(4)) then -- Letter from Q Bit 3 delivered.
        if not IsQBitSet(QBit(24)) then -- Received Reward from Elgar Fellmoon for completing quest 9.
            evt.SetMessage("我看见一个幻象：你把渡鸦海滨埃尔加·月落的一封信带给渡鸦海滨走私者领袖艾瑞安·韩特。此后你回到月落身边。幻象结尾模糊不清，说明你尚未亲历到底。不过，做这些事是你的命运。")
            SetAutonote(235) -- I see a vision of you in which you take a letter from Elgar Fellmoon in Ravenshore to Arion Hunter, the leader of the Ravenshore smugglers. After this, you return to Fellmoon. The end of the vision is a blur, so you must not have lived entirely through it. Still, it is your fate to do these things.
            return
        end
        if not IsQBitSet(QBit(12)) then -- Quest 11 is done.
            evt.SetMessage("我不需要幻象也知道你下一步该做什么。照月落请你的去做。去找阿尔瓦商人公会会长巴斯沈·卢德林。他在阿尔瓦城。")
            SetAutonote(236) -- I don't need my vision to tell me what you must do next. Do as Fellmoon asked of you. Go seek Bastian Loudrin, the guildmaster of the Alvarian Merchant Guild. He is in the city of Alvar.
            return
        end
        if IsQBitSet(QBit(62)) then -- Vilebites Ashes (item603) placed in troll tomb.
            if not IsQBitSet(QBit(59)) then -- Returned to the Merchant guild in Alvar with overdune. Quest 25 done.
                evt.SetMessage("我清楚地看到，你必须把巨魔奥弗杜恩带到阿尔瓦的商人公会。")
                SetAutonote(239) -- It is clear to me that you must bring the Troll, Overdune, to the merchant guild in Alvar.
                return
            end
            if IsQBitSet(QBit(34)) then -- Alliance Council formed. Quest 13 done.
                if IsQBitSet(QBit(57)) then -- The Pirates invaded Ravenshore
                    evt.SetMessage("你可能还没听说，渡鸦海滨正遭雷格那海盗进攻。镇子已疏散。你必须先除掉海盗威胁，联盟议会才会回来指引你。")
                    SetAutonote(246) -- In case you haven't heard, Ravenshore is under attack by the Regnan pirates. The town has been evacuated. You must eliminate the pirate threat before the alliance council will return to guide you.
                    return
                elseif IsQBitSet(QBit(37)) then -- Regnan Pirate Fleet is sunk.
                    if not IsQBitSet(QBit(38)) then -- Quest 36 is done.
                        evt.SetMessage("既然你已击沉雷格那舰队。去寻求联盟议会的智慧吧。他们会交给你下一项成就你命运的任务。")
                        SetAutonote(247) -- Now that you've sunk the Regnan fleet. Go and seek the wisdom of your alliance council. They will give you the next task that will make your destiny.
                        return
                    end
                    if IsQBitSet(QBit(92)) then -- Quest 91 done.
                        if IsQBitSet(QBit(45)) then -- Quests 41-44 done. Items from 41-44 given to XANTHOR.
                            if IsQBitSet(QBit(47)) then -- Quest 46 done. Used to allow entrance to elemental lord prisons. Now player needs item 629.
                                if IsQBitSet(QBit(228)) then -- You have seen the Endgame movie
                                    evt.SetMessage("平衡已恢复。你的命运既已铸就，我便不能再指引你——我的视野只与平衡的命运相关。你如今做什么，取决于你自己。祝你们好运，贾丹姆的英雄们！")
                                    SetAutonote(256) -- The Balance is restored. Now that your destiny is made, I can no longer guide you--my sight only pertains to what is connected to the fate of Balance. What you do now is up to you. Good luck to you, Heroes of Jadame!
                                    return
                                elseif IsQBitSet(QBit(56)) then -- All Lords from quests 48, 50, 52, 54 rescued.
                                    evt.SetMessage("去找赞索！尽管他只是平衡棋局中的一枚棋子，你走向命运的下一步，要通过与他会面。")
                                    SetAutonote(255) -- Seek out Xanthor! Though he is but a piece in the game of Balance, the next move you make towards destiny it through a meeting with him.
                                else
                                    evt.SetMessage("我的幻象里，你的道路清晰可见。你必须找到四位元素领主，把他们从囚禁中释放。这些囚牢在毁灭者的国度——位面之间。")
                                    SetAutonote(254) -- Your path is clear to my vision. You must seek out the four elemental lords and release them from their prisons. These prisons are in the Destroyer's realm--the Plane Between Planes.
                                end
                                return
                            elseif IsQBitSet(QBit(235)) then -- Have talked to Escaton
                                evt.SetMessage("你已与毁灭者谈过，却未能从他那里取得开启你未来的钥匙。回到他那里，继续你们的对话。")
                                SetAutonote(253) -- You have talked to the Destroyer, but have failed to gather from him the key which will unlock your future. Return to him and continue your conversations.
                            else
                                evt.SetMessage("你的命运在渡鸦海滨的水晶门后。它会带你到位面之间。在那里你会找到元素大灾变的源头。")
                                SetAutonote(252) -- Your destiny lies through the crystal gateway in Ravenshore. It will take you to the Plane Between Planes. There you will find the source of the elemental cataclysm.
                            end
                            return
                        elseif HasItem(606) then -- Heart of Fire
                            if HasItem(607) then -- Heart of Water
                                if HasItem(608) then -- Heart of Air
                                    if not HasItem(609) then -- Heart of Earth
                                        evt.SetMessage("你显然必须照赞索请你的去做。前往四个元素位面，在每个位面找到一颗元素心石。")
                                        SetAutonote(250) -- It is clear that you must do as Xanthor has asked of you. Go to the four elemental planes and find in each, an elemental heartstone.
                                        return
                                    end
                                    evt.SetMessage("你既已取得四颗元素心石，现在必须把它们带给渡鸦海滨的赞索。")
                                    SetAutonote(251) -- Now that you have the four elemental heartstones, you must now bring them to Xanthor in Ravenshore.
                                    return
                                end
                            end
                            evt.SetMessage("你显然必须照赞索请你的去做。前往四个元素位面，在每个位面找到一颗元素心石。")
                            SetAutonote(250) -- It is clear that you must do as Xanthor has asked of you. Go to the four elemental planes and find in each, an elemental heartstone.
                            return
                        else
                            evt.SetMessage("你显然必须照赞索请你的去做。前往四个元素位面，在每个位面找到一颗元素心石。")
                            SetAutonote(250) -- It is clear that you must do as Xanthor has asked of you. Go to the four elemental planes and find in each, an elemental heartstone.
                            return
                        end
                    elseif IsQBitSet(QBit(91)) then -- Consult the Ironfists' court sage, Xanthor about the Ravenshore crystal. - Given by NPC 53 (Fellmoon), taken by XANTHOR.
                        evt.SetMessage("我看到现在与你未来之间一条重要的纽带尚未铸就。去找住在渡鸦海滨的贤者赞索。他会把你命运的下一项任务交给你。")
                        SetAutonote(249) -- I see an important link between the present and your future has not been forged. Seek out the sage, Xanthor who resides in Ravenshore. He will send you on your destiny's next task.
                    else
                        evt.SetMessage("你必须与铁拳城堡朝廷的贤者赞索谈谈。他住在渡鸦海滨。")
                        SetAutonote(248) -- You must speak to the Ironfists' court sage, Xanthor. He is housed in Ravenshore.
                    end
                    return
                elseif IsQBitSet(QBit(36)) then -- Sink the Regnan Fleet. Return to the Ravenshore council chamber. - Given and taken at Ravenshore council chamber.
                    evt.SetMessage("你必须照联盟议会请你的去做。想办法到雷格那岛，击沉雷格那港内舰队。")
                    SetAutonote(245) -- You must do as the alliance council has asked of you. Find a way to Regna Island and sink the Regnan port fleet.
                else
                    evt.SetMessage("我看到现在与你未来命运之间一条重要的联系尚未建立。你必须回到渡鸦海滨商人公会的议事厅。议员们会把你道路的下一步交给你。")
                    SetAutonote(244) -- I see an important connection has not been made between the present and your future destiny. You must return to the council chamber in the Ravenshore merchant guild. The councilors will send you on the next step down your road.
                end
                return
            elseif IsQBitSet(QBit(23)) then -- Allied with Minotaurs. Rescue the Minotaurs done.
                if IsQBitSet(QBit(19)) then -- Allied with Necromancers Guild. Steal Nightshade Brazier done.
                    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
                        evt.SetMessage("你在缔结盟约方面做得很好。现在是时候去寻求你所团结起来的这些盟友的议事了。去渡鸦海滨商人公会内他们的议事厅找他们。")
                        SetAutonote(243) -- You have done good work in forging the alliances you have. It is now time for you to seek the council of those allies you have brought together. Seek them out in their council chamber within the merchant guild in Ravenshore.
                        return
                    elseif IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
                        evt.SetMessage("你在缔结盟约方面做得很好。现在是时候去寻求你所团结起来的这些盟友的议事了。去渡鸦海滨商人公会内他们的议事厅找他们。")
                        SetAutonote(243) -- You have done good work in forging the alliances you have. It is now time for you to seek the council of those allies you have brought together. Seek them out in their council chamber within the merchant guild in Ravenshore.
                    else
                        evt.SetMessage("平衡之中大动荡。我花了些时间才弄清它的源头，如今知道了。那是在绞刑峡谷交战的龙族与骑士之间的冲突。你的命运是与两方之一结盟，以另一方为代价。")
                        SetAutonote(242) -- There is great turmoil in the Balance. It has taken me some time to know its source, but I know it now. There is conflict between the Dragons and Knights who fight in Garrote Gorge. It is your destiny to ally with one of the two at the expense of the other.
                    end
                    return
                elseif IsQBitSet(QBit(20)) then -- Allied with Temple of the Sun. Destroy the Skeleton Transformer done.
                    if IsQBitSet(QBit(21)) then -- Allied with Charles Quioxte's Dragon Hunters. Return Dragon Egg to Quixote done.
                        evt.SetMessage("你在缔结盟约方面做得很好。现在是时候去寻求你所团结起来的这些盟友的议事了。去渡鸦海滨商人公会内他们的议事厅找他们。")
                        SetAutonote(243) -- You have done good work in forging the alliances you have. It is now time for you to seek the council of those allies you have brought together. Seek them out in their council chamber within the merchant guild in Ravenshore.
                        return
                    elseif IsQBitSet(QBit(22)) then -- Allied with Dragons. Return Dragon Egg to Dragons done.
                        evt.SetMessage("你在缔结盟约方面做得很好。现在是时候去寻求你所团结起来的这些盟友的议事了。去渡鸦海滨商人公会内他们的议事厅找他们。")
                        SetAutonote(243) -- You have done good work in forging the alliances you have. It is now time for you to seek the council of those allies you have brought together. Seek them out in their council chamber within the merchant guild in Ravenshore.
                    else
                        evt.SetMessage("平衡之中大动荡。我花了些时间才弄清它的源头，如今知道了。那是在绞刑峡谷交战的龙族与骑士之间的冲突。你的命运是与两方之一结盟，以另一方为代价。")
                        SetAutonote(242) -- There is great turmoil in the Balance. It has taken me some time to know its source, but I know it now. There is conflict between the Dragons and Knights who fight in Garrote Gorge. It is your destiny to ally with one of the two at the expense of the other.
                    end
                else
                    evt.SetMessage("平衡之中大动荡。我花了些时间才弄清它的源头，如今知道了。它由低语森林太阳神殿的牧师与阴影塔死灵法师公会之间的战争引起。你的命运是在这两方中选择一方结盟，从而平息动荡。")
                    SetAutonote(241) -- There is great turmoil in the Balance. It has taken me some time to know its source, but I know it now. It is caused by the war between the clerics of the Temple of the Sun located in Murmurwoods, and the Necromancers' Guild of Shadowspire. It is your destiny to undo the turmoil by choosing one of these two to ally with.
                end
            else
                evt.SetMessage("今天我能看透远方，却看不透时间。残破镇巴尔萨煞巢穴的牛头人遭逢大难。我感到你的命运与他们的命运相连。你必须把他们救出险境。")
                SetAutonote(240) -- I see far through space today, but not through time. A great disaster has befallen the Minotaurs of Balthazar Lair in Ravage Roaming. I feel that your destiny is linked with their fate. You must rescue them from their peril.
            end
            return
        elseif IsQBitSet(QBit(25)) then -- Find a witness to the lake of fire's formation. Bring him back to the merchant guild in Alvar. - Given and taken by Bastian Lourdrin (area 3).
            evt.SetMessage("昨夜我在梦中，看见你前往铁沙漠，寻找一位目击者，他能证明大灾变期间那里如何形成了一个巨大的火湖。")
            SetAutonote(238) -- In my dreams last night, I saw you traveling to the Ironsand Desert to find a witness to the formation of a great lake of fire which formed there during the cataclysm.
        else
            evt.SetMessage("我看到现在与你未来之间一条重要的联系尚未建立。你必须回到巴斯沈·卢德林身边，继续与他对话。他会把你道路的下一步交给你。")
            SetAutonote(237) -- I see an important connection has not been made between the present and your future. You must return to Bastian Loudrin and continue your conversations with him. He will send you on the next step down your road.
        end
        return
    elseif IsQBitSet(QBit(3)) then -- Deliver Dadeross' Letter to Elgar Fellmoon at the Merchant House in Ravenshore. - Given by Dadeross in Dagger Wound. Taken by Fellmoon in Ravenshore.
        evt.SetMessage("嗯……我看不了太远——今天以太太厚。我只看到你必须把达德洛斯给你的信交给商人埃尔加·月落。月落在渡鸦海滨城。")
        SetAutonote(234) -- Hmmm�I cannot look too far ahead--for the ether is thick today. All I see is that you must deliver the letter Dadeross gave you to the merchant, Elgar Fellmoon. Fellmoon lives in the city of Ravenshore.
    else
        evt.SetMessage("你们受雇于阿尔瓦商人，对吧？那我想你该去找达德洛斯，你们商队的领袖。我的远视幻象告诉我，他在匕伤群岛。")
        SetAutonote(233) -- You are employed by the Merchants of Alvar, yes? Well, I think you should speak with Dadeross, the leader of your caravan. My far seeing vision tells me he is on the Dagger Wound Islands.
    end
end)

RegisterGlobalEvent(733, "晋升黑暗精灵", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1537)) then -- Promoted to Elf Patriarch.
        evt.SetMessage("考丽跟我说了你如何帮她解除了蛇怪的诅咒。\n她吩咐我，把与你同行的任何黑暗精灵晋升为宗长。")
        ClearQBit(QBit(39)) -- Find Cauri Blackthorne then return to Dantillion in Murmurwoods with information of her location. - Dark Elf Promotion to Patriarch
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 8) then
                SetValue(ClassId, 9)
                SetQBit(QBit(1537)) -- Promoted to Elf Patriarch.
            else
                SetAward(Award(20)) -- Rescued Cauri Blackthorne.
            end
        end
        return
    elseif HasAward(Award(20)) then -- Rescued Cauri Blackthorne.
        evt.SetMessage("考丽跟我说了你如何帮她解除了蛇怪的诅咒。\n她吩咐我，把与你同行的任何黑暗精灵晋升为宗长。")
        ClearQBit(QBit(39)) -- Find Cauri Blackthorne then return to Dantillion in Murmurwoods with information of her location. - Dark Elf Promotion to Patriarch
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 8) then
                SetValue(ClassId, 9)
                SetQBit(QBit(1537)) -- Promoted to Elf Patriarch.
            else
                SetAward(Award(20)) -- Rescued Cauri Blackthorne.
            end
        end
    else
        evt.SetMessage("找不到考丽·黑荆棘的下落，你们就不能晋升！\n找到她，她会晋升你们。\n等她被找到并回到商人公会后，我很乐意把你队伍里任何黑暗精灵晋升为宗长。")
    end
end)

RegisterGlobalEvent(734, "晋升巨魔", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1538)) then -- Promoted to War Troll.
        evt.SetMessage("沃洛格离开前，吩咐我把与你同行的任何巨魔晋升为战巨魔。\n铁锈镇村将永远感激你们！")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 38) then
                SetValue(ClassId, 39)
                SetQBit(QBit(1538)) -- Promoted to War Troll.
            else
                SetQBit(QBit(1539)) -- Found Troll Homeland.
            end
        end
        return
    elseif IsQBitSet(QBit(1539)) then -- Found Troll Homeland.
        evt.SetMessage("沃洛格离开前，吩咐我把与你同行的任何巨魔晋升为战巨魔。\n铁锈镇村将永远感激你们！")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 38) then
                SetValue(ClassId, 39)
                SetQBit(QBit(1538)) -- Promoted to War Troll.
            else
                SetQBit(QBit(1539)) -- Found Troll Homeland.
            end
        end
    else
        evt.SetMessage("找到巨魔古国家园之前，你们不能晋升！\n找到后回到这里，与沃洛格谈谈。")
    end
end)

RegisterGlobalEvent(735, "晋升骑士", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1540)) then -- Promoted to Champion.
        evt.SetMessage("感谢你帮忙寻回黑檀之矛！\n我可以把与你同行的任何骑士晋升为勇士。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 16) then
                SetValue(ClassId, 19)
                SetQBit(QBit(1540)) -- Promoted to Champion.
            else
                SetQBit(QBit(1541)) -- Returned Ebonest to Charles Quixote.
            end
        end
        ClearQBit(QBit(70)) -- Find Blazen Stormlance and recover the spear Ebonest. Return to Leane Stormlance in Garrote Gorge and deliver Ebonest to Charles Quixote.
        return
    elseif IsQBitSet(QBit(1541)) then -- Returned Ebonest to Charles Quixote.
        evt.SetMessage("感谢你帮忙寻回黑檀之矛！\n我可以把与你同行的任何骑士晋升为勇士。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 16) then
                SetValue(ClassId, 19)
                SetQBit(QBit(1540)) -- Promoted to Champion.
            else
                SetQBit(QBit(1541)) -- Returned Ebonest to Charles Quixote.
            end
        end
        ClearQBit(QBit(70)) -- Find Blazen Stormlance and recover the spear Ebonest. Return to Leane Stormlance in Garrote Gorge and deliver Ebonest to Charles Quixote.
    else
        evt.SetMessage("证明自己配得上之前，你们不能晋升为勇士！\n")
    end
end)

RegisterGlobalEvent(736, "晋升飞龙", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1543)) then -- Promoted to Great Wyrm.
        evt.SetMessage("你已证明自己，我会把与你同行的任何龙晋升为巨龙。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 10) then
                SetValue(ClassId, 11)
                SetQBit(QBit(1543)) -- Promoted to Great Wyrm.
            else
                SetQBit(QBit(1544)) -- Gave the Sword of Whistlebone the Slayer to the Deftclaw Redreaver.
            end
        end
        return
    elseif IsQBitSet(QBit(1544)) then -- Gave the Sword of Whistlebone the Slayer to the Deftclaw Redreaver.
        evt.SetMessage("你已证明自己，我会把与你同行的任何龙晋升为巨龙。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 10) then
                SetValue(ClassId, 11)
                SetQBit(QBit(1543)) -- Promoted to Great Wyrm.
            else
                SetQBit(QBit(1544)) -- Gave the Sword of Whistlebone the Slayer to the Deftclaw Redreaver.
            end
        end
    else
        evt.SetMessage("你还没证明自己配得上！\n不对屠龙者挥出一击，你们谁也别想晋升！")
    end
end)

RegisterGlobalEvent(737, "晋升牧师", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1546)) then -- Promoted to Cleric of the Sun.
        evt.SetMessage("这里永远欢迎你们！\n我当然会把与你同行的任何牧师晋升为太阳牧师！\n")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 4) then
                SetValue(ClassId, 6)
                SetQBit(QBit(1546)) -- Promoted to Cleric of the Sun.
            else
                SetAward(Award(31)) -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
            end
        end
        return
    elseif HasAward(Award(31)) then -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
        evt.SetMessage("这里永远欢迎你们！\n我当然会把与你同行的任何牧师晋升为太阳牧师！\n")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 4) then
                SetValue(ClassId, 6)
                SetQBit(QBit(1546)) -- Promoted to Cleric of the Sun.
            else
                SetAward(Award(31)) -- Found the lost Prophecies of the Sun and returned them to the Temple of the Sun.
            end
        end
    else
        evt.SetMessage("寻回太阳预言之前，你们不能晋升为太阳牧师！")
    end
end)

RegisterGlobalEvent(738, "晋升死灵法师", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1548)) then -- Promoted to Lich.
        evt.SetMessage("啊，你回来为队伍里其他人求晋升？\n我没忘记你帮忙寻回凯尔佚书！\n你队伍里所有死灵法师都将晋升为巫妖。\n确保每位死灵法师身上都带着一个巫妖罐。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 44) then
                if not HasItem(628) then -- Lich Jar
                    evt.SetMessage("你有《凯尔失落之书》，却缺完成转变所需的巫妖瓶！\n等你为队伍里每个死灵法师备齐一只，再回来！")
                    return
                end
            end
        end
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 44) then
                SetValue(ClassId, 45)
                SetQBit(QBit(1548)) -- Promoted to Lich.
                RemoveItem(628) -- Lich Jar
            else
                SetAward(Award(35)) -- Found the Lost Book of Khel.
            end
        end
        return
    elseif HasAward(Award(35)) then -- Found the Lost Book of Khel.
        evt.SetMessage("啊，你回来为队伍里其他人求晋升？\n我没忘记你帮忙寻回凯尔佚书！\n你队伍里所有死灵法师都将晋升为巫妖。\n确保每位死灵法师身上都带着一个巫妖罐。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 44) then
                if not HasItem(628) then -- Lich Jar
                    evt.SetMessage("你有《凯尔失落之书》，却缺完成转变所需的巫妖瓶！\n等你为队伍里每个死灵法师备齐一只，再回来！")
                    return
                end
            end
        end
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 44) then
                SetValue(ClassId, 45)
                SetQBit(QBit(1548)) -- Promoted to Lich.
                RemoveItem(628) -- Lich Jar
            else
                SetAward(Award(35)) -- Found the Lost Book of Khel.
            end
        end
    else
        evt.SetMessage("你还没寻回凯尔佚书！\n不把书带回来，就别想晋升！\n找维特里努斯·泰尔希尔谈谈。")
    end
end)

RegisterGlobalEvent(739, "晋升吸血鬼", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1547)) then -- Promoted to Nosferatu.
        evt.SetMessage("你们当中的吸血鬼将晋升为诺斯费拉图！\n我记得那些帮忙寻回科尔布遗骸的人。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 40) then
                SetValue(ClassId, 41)
                SetQBit(QBit(1547)) -- Promoted to Nosferatu.
            else
                SetAward(Award(33)) -- Found the Sarcophagus and Remains of Korbu.
            end
        end
        return
    elseif HasAward(Award(33)) then -- Found the Sarcophagus and Remains of Korbu.
        evt.SetMessage("你们当中的吸血鬼将晋升为诺斯费拉图！\n我记得那些帮忙寻回科尔布遗骸的人。")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 40) then
                SetValue(ClassId, 41)
                SetQBit(QBit(1547)) -- Promoted to Nosferatu.
            else
                SetAward(Award(33)) -- Found the Sarcophagus and Remains of Korbu.
            end
        end
    else
        evt.SetMessage("你还没找到科尔布，找不到他，我拒绝晋升你们任何人！\n走开！")
    end
end)

RegisterGlobalEvent(740, "晋升牛头人", function()
    evt.ForPlayer(Players.Member0)
    if IsQBitSet(QBit(1545)) then -- Promoted to Minotaur Lord.
        evt.SetMessage("马苏尔兽群欠你一份情。\n你队伍里任何牛头人都晋升为牛头人领主！")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 20) then
                SetValue(ClassId, 21)
                SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
            else
                SetAward(Award(29)) -- Recovered Axe of Balthazar.
            end
        end
        return
    elseif HasAward(Award(29)) then -- Recovered Axe of Balthazar.
        evt.SetMessage("马苏尔兽群欠你一份情。\n你队伍里任何牛头人都晋升为牛头人领主！")
        for _, player in ipairs({Players.Member0, Players.Member1, Players.Member2, Players.Member3, Players.Member4}) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 20) then
                SetValue(ClassId, 21)
                SetQBit(QBit(1545)) -- Promoted to Minotaur Lord.
            else
                SetAward(Award(29)) -- Recovered Axe of Balthazar.
            end
        end
    else
        evt.SetMessage("你还没找到巴尔萨煞之斧！\n你不配晋升！")
    end
end)

RegisterGlobalEvent(741, "多谢！", function()
    evt.SetMessage("我父亲派你来救我？\n我很感激。\n我会回到父亲身边，告诉他你的帮助！")
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    evt.SetNPCTopic(102, 0, 0) -- Irabelle Hunter topic 0 cleared
    ClearQBit(QBit(119)) -- Rescue Arion Hunter's daughter from Ogre Fortress in Alvar.
    SetQBit(QBit(120)) -- Rescued Smuggler Leader's Familly
end)
RegisterCanShowTopic(741, function()
    evt._BeginCanShowTopic(741)
    local visible = true
    if IsQBitSet(QBit(119)) then -- Rescue Arion Hunter's daughter from Ogre Fortress in Alvar.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(742, "和你一起旅行！", function()
    if not IsQBitSet(QBit(37)) then -- Regnan Pirate Fleet is sunk.
        evt.SetMessage("我还不能与你同行！\n我宁愿受雇于一支商队，也不跟你们走。\n等你多发现些世界、以及你在其中的位置，再回来找我。")
        return
    end
    evt.SetMessage("我记得你！\n凯尔之书已证明无价，与你同行是我的荣幸。")
    evt.SetNPCTopic(61, 0, 625) -- Vetrinus Taleshire topic 0: Roster Join Event
end)

RegisterGlobalEvent(743, "和你一起旅行！", function()
    if not IsQBitSet(QBit(37)) then -- Regnan Pirate Fleet is sunk.
        evt.SetMessage("等你成长、多懂些世事之道，我才乐意与你同行。\n在那之前，我这里还有学业要完成。")
        return
    end
    evt.SetMessage("当然！\n与你同行是我的荣幸！")
    evt.SetNPCTopic(50, 0, 626) -- Dervish Chevron topic 0: Roster Join Event
end)

RegisterGlobalEvent(744, "Rescue", function()
    evt.SetMessage("冒险者们，你们为我们立了大功。我代表我的兽群，向你们致以最卑微的谢意。请记住，巴尔萨煞巢穴的牛头人把你们视为最高尚的朋友。你们在我们之中永远受欢迎。")
    evt.SetNPCTopic(57, 0, 613) -- Thanys topic 0: Roster Join Event
    evt.SetNPCTopic(57, 1, 0) -- Thanys topic 1 cleared
    evt.SetNPCTopic(57, 2, 0) -- Thanys topic 2 cleared
end)

RegisterGlobalEvent(751, nil, function()
    evt.SetMessage("你若赢，就将掌管全埃拉西亚风景最美的地区之一！\n哈蒙代尔就在图拉林森林外，正落在精灵与人类边界上。\n我肯定你会喜欢那座城堡。\n它需要修修补补，不过相当宽敞，通风极好。\n与这份产业分别让我心碎，可我觉得，是时候回馈人民了。")
end)
RegisterCanShowTopic(751, function()
    evt._BeginCanShowTopic(751)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(752, nil, function()
    evt.SetMessage("这场寻宝难道不激动人心吗？\n你能来参加我的小活动，我真的很感激，即使没赢，我也希望你玩得开心。\n大家本着体育精神与情谊竞技，我觉得这太棒了。")
end)
RegisterCanShowTopic(752, function()
    evt._BeginCanShowTopic(752)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(753, nil, function()
    evt.SetMessage("恭喜！\n你们是哈蒙代尔的新领主！\n是不是很激动？\n你们想象不到，把这份产业送给你们，我心里有多舒坦！\n哈蒙代尔镇的一切收益与奖赏，当然还有治理之责，如今都归你们了。\n（马克姆勋爵拿出一份地契和合同）在这儿签字……还有这儿……要是能在这儿签上你们姓名首字母……好！\n好了，就这么定了！\n你们都办妥了。\n再一次，恭喜！！！")
    evt.SetNPCTopic(340, 2, 754) -- Lord Markham topic 2: Your ship�
    ClearQBit(QBit(1683)) -- Replacement for NPCs �3 ver. 7
    SetQBit(QBit(529)) -- No more docent babble
    evt.ForPlayer(Players.All)
    AddValue(Experience, 1000)
    SetAward(Award(1)) -- Won the Scavenger Hunt on Emerald Island
    evt.SetNPCGroupNews(52, 56) -- "Congratulations!"
end)
RegisterCanShowTopic(753, function()
    evt._BeginCanShowTopic(753)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(754, nil, function()
    evt.SetMessage("送你们去封地的船在港口等着。\n我和随从会乘另一艘船离开。\n你们准备好就上船吧。")
    SetQBit(QBit(527)) -- Able to use boat to get off Emerald Island
    evt.SetNPCTopic(350, 0, 783) -- William Darvees topic 0: Cast off!
    evt.SetNPCTopic(340, 2, 0) -- Lord Markham topic 2 cleared
    evt.SetNPCGreeting(340, 0) -- Lord Markham greeting cleared
end)

RegisterGlobalEvent(755, nil, function()
    evt.SetMessage("下午好。\n我的职责是核实你们集齐了赢得比赛所需的全部物品。\n你们须把一瓶红药水、一张长弓、一块月亮神庙的地砖、一顶富贵帽、一枚贝壳和一件乐器带给我。\n顺序不限，只是请逐件出示给我，以便我核验。")
end)

RegisterGlobalEvent(756, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(520)) then -- Brought red potion
        goto step_10
    end
    if HasItem(222) then -- Cure Wounds
        ClearQBit(QBit(513)) -- Return a red potion to the Judge on Emerald Island.
        AddValue(Experience, 500)
        SetQBit(QBit(520)) -- Brought red potion
        RemoveItem(222) -- Cure Wounds
        evt.SetMessage("怎么拖了这么久？\n到这会儿，几乎每组都交上红药水了。\n这是寻宝里最容易弄到的东西，不过迟来总比不来好。\n我把它从你清单上划掉。")
        return
    end
    goto step_10
    ::step_10::
    if IsQBitSet(QBit(521)) then -- Brought seashell
        goto step_20
    end
    if HasItem(1437) then -- Seashell
        ClearQBit(QBit(514)) -- Return a seashell to the Judge on Emerald Island.
        RemoveItem(1437) -- Seashell
        SetQBit(QBit(521)) -- Brought seashell
        AddValue(Experience, 500)
        evt.SetMessage("一枚漂亮的贝壳，很像萨莉卖的那些。\n这肯定来自翡翠岛——我这就把贝壳从你清单上划掉。")
        return
    end
    goto step_20
    ::step_20::
    if IsQBitSet(QBit(522)) then -- Brought longbow
        goto step_30
    end
    if HasItem(845) then -- Longbow
        evt.SetMessage("这张长弓完全符合寻宝要求。\n干得好，我这就把它从你清单上划掉。")
        RemoveItem(845) -- Longbow
        ClearQBit(QBit(515)) -- Return a longbow to the Judge on Emerald Island.
        AddValue(Experience, 500)
        SetQBit(QBit(522)) -- Brought longbow
        return
    end
    goto step_30
    ::step_30::
    if IsQBitSet(QBit(523)) then -- Brought tile
        goto step_40
    end
    if HasItem(1438) then -- Floor Tile (w/ moon insignia)
        evt.SetMessage("真是冒险者！\n我没料到有人这么快就带回一块地砖。\n这确实是神庙的地砖，那我就把地砖从你清单上划掉。")
        RemoveItem(1438) -- Floor Tile (w/ moon insignia)
        ClearQBit(QBit(516)) -- Return a floor tile to the Judge on Emerald Island.
        AddValue(Experience, 500)
        SetQBit(QBit(523)) -- Brought tile
        return
    end
    goto step_40
    ::step_40::
    if IsQBitSet(QBit(524)) then -- Brought instrument
        goto step_50
    end
    if HasItem(1434) then -- Lute
        evt.SetMessage("嗯，这是把好鲁特琴。\n我这就把乐器从你清单上划掉。")
        RemoveItem(1434) -- Lute
        ClearQBit(QBit(517)) -- Return a musical instrument to the Judge on Emerald Island.
        AddValue(Experience, 500)
        SetQBit(QBit(524)) -- Brought instrument
        return
    end
    goto step_50
    ::step_50::
    if IsQBitSet(QBit(525)) then -- Brought hat
        goto step_60
    end
    if HasItem(1433) then -- Wealthy Hat
        evt.SetMessage("我看你找到了富贵帽。\n我相应把它从你清单上划掉，干得好。")
        RemoveItem(1433) -- Wealthy Hat
        ClearQBit(QBit(518)) -- Return a wealthy hat to the Judge on Emerald Island.
        AddValue(Experience, 500)
        SetQBit(QBit(525)) -- Brought hat
        return
    end
    goto step_81
    ::step_60::
    if IsQBitSet(QBit(513)) then -- Return a red potion to the Judge on Emerald Island.
        goto step_81
    end
    if IsQBitSet(QBit(514)) then -- Return a seashell to the Judge on Emerald Island.
        goto step_81
    end
    if IsQBitSet(QBit(515)) then -- Return a longbow to the Judge on Emerald Island.
        goto step_81
    end
    if IsQBitSet(QBit(516)) then -- Return a floor tile to the Judge on Emerald Island.
        goto step_81
    end
    if IsQBitSet(QBit(517)) then -- Return a musical instrument to the Judge on Emerald Island.
        goto step_81
    end
    if IsQBitSet(QBit(518)) then -- Return a wealthy hat to the Judge on Emerald Island.
        goto step_81
    end
    goto step_73
    do return end
    ::step_73::
    SetQBit(QBit(519)) -- Finished Scavenger Hunt
    evt.SetMessage("好了，六件物品齐了。\n你就是比赛的赢家！\n我建议你去找马克姆勋爵，细问获得封地的事宜，我这儿的活儿干完了。")
    evt.SetNPCTopic(341, 0, 0) -- Thomas the Judge topic 0 cleared
    evt.SetNPCTopic(341, 1, 0) -- Thomas the Judge topic 1 cleared
    evt.MoveNPC(341, 0) -- Thomas the Judge -> removed
    evt.SetNPCTopic(340, 1, 0) -- Lord Markham topic 1 cleared
    evt.SetNPCGreeting(345, 124) -- Mr. Malwick greeting: I don't believe we have anything to talk about.
    do return end
    ::step_81::
    evt.SetMessage("抱歉，你身上没有任何一件是寻宝所需。\n我不是贬低你这些东西，只是我要的一样都不在其中。")
end)

RegisterGlobalEvent(757, nil, function()
    evt.SetMessage("欢迎来到翡翠岛！\n我将担任你们在岛上逗留期间的讲解员。\n我的职责是确保你们明白岛规和比赛规则。\n在翡翠岛逗留期间，请避免严重违反文明行为。")
    evt.SetNPCTopic(342, 0, 758) -- Margaret the Docent topic 0: Emerald Island
end)

RegisterGlobalEvent(758, nil, function()
    evt.SetMessage("翡翠岛在埃拉西亚东南，远离海盗和其他恶棍。\n要不是岛上常年蚊龙成群侵扰，这里堪称理想。\n幸运的是，这场比赛吸引来的大量武装好手，应该能让它们数量减上一些。\n为方便你们比赛，马克姆勋爵在本来稀疏的村子里补了武器店、护甲店和炼金店。\n神庙和基础魔法公会也有。\n我建议你们出发比赛前确保一切就绪。")
end)

RegisterGlobalEvent(759, nil, function()
    evt.SetMessage("比赛规则很简单：\n最先带着物品回来的人获胜。\n你只需收集一顶富贵帽、一瓶红药水、一张长弓、一枚贝壳、一件乐器和一块月亮神庙的地砖，把它们带给裁判即获胜。")
end)
RegisterCanShowTopic(759, function()
    evt._BeginCanShowTopic(759)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(760, nil, function()
    evt.SetMessage("你们是马克姆勋爵寻宝赛的参赛者吗？\n真妙！\n我来这儿是为马克姆勋爵的随从、参赛者，以及任何想听首歌的人助兴。")
end)

RegisterGlobalEvent(761, nil, function()
    evt.SetMessage("我有几件乐器，可我只带了鲁特琴。\n它旧了，保养不如其他几件，可我不想让好乐器被海盗偷走，或被潮湿咸损的空气弄坏。")
end)

RegisterGlobalEvent(762, nil, function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("你说寻宝需要一件乐器？\n我想你可以买我的鲁特琴，可它陪了我太久。\n我想 500 金币可以割爱。\n有兴趣吗？")
    evt.SetNPCTopic(343, 2, 763) -- Ailyssa the Bard topic 2: Buy Lute for 500 gold
end)
RegisterCanShowTopic(762, function()
    evt._BeginCanShowTopic(762)
    local visible = true
    evt.ForPlayer(Players.All)
    if HasItem(1434) then -- Lute
        visible = false
        return visible
    else
        if IsQBitSet(QBit(524)) then -- Brought instrument
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(763, nil, function()
    if not IsAtLeast(Gold, 500) then
        evt.SetMessage("你要是有那 500 金币就好办。\n请别想骗走我的乐器。")
        return
    end
    if not IsAtLeast(Gold, 500) then
        return
    end
    SubtractValue(Gold, 500)
    AddValue(InventoryItem(1434), 1434) -- Lute
    evt.SetMessage("好吧，答应至少好好待它、别拿来当柴烧。\n看来这趟剩下的路我只能没乐器凑合了。\n也许回家前我该改讲故事、不唱歌了。")
    evt.SetNPCItem(343, 1434, 0)
    evt.SetNPCTopic(343, 2, 0) -- Ailyssa the Bard topic 2 cleared
    evt.SetNPCTopic(343, 1, 0) -- Ailyssa the Bard topic 1 cleared
end)

RegisterGlobalEvent(764, nil, function()
    evt.SetMessage("我喜欢待在岛的这一边，海上的景色比镇上好看多了，你说呢？")
end)

RegisterGlobalEvent(765, nil, function()
    evt.SetMessage("我有些漂亮贝壳出售，只有翡翠岛才找得到。\n卖给你一枚怎么样？\n每枚只要 100 金币。")
    evt.SetNPCTopic(344, 1, 766) -- Sally topic 1: Buy Seashell for 100 gold
end)

RegisterGlobalEvent(766, nil, function()
    if not IsAtLeast(Gold, 100) then
        evt.SetMessage("我真的不能低于 100 金币；我也得谋生。")
        return
    end
    if not IsAtLeast(Gold, 100) then
        return
    end
    SubtractValue(Gold, 100)
    AddValue(InventoryItem(1437), 1437) -- Seashell
    evt.SetMessage("拿好，希望它让你想起翡翠岛之行。")
end)

RegisterGlobalEvent(767, nil, function()
    evt.SetMessage("我们有理由相信，未来几个月执掌哈蒙代尔的人，将拥有塑造未来的空前机会。\n所以我今天来——确保未来的模样合我同伴们的心意。\n我想你明白。")
end)
RegisterCanShowTopic(767, function()
    evt._BeginCanShowTopic(767)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(768, nil, function()
    evt.SetMessage("请允许我自我介绍。\n我叫马尔威克先生。\n我代表一群，怎么说，“未来的投资者”。\n你们一到岛上我就在观察你们，我相信你们的价值观与目标与我们大有共同之处。\n我有权给你一根火球法杖，助你今天赢下寻宝，交换条件是未来帮我们一个忙。\n你意下如何？")
    evt.SetNPCTopic(345, 0, 769) -- Mr. Malwick topic 0: Accept Wand
    evt.SetNPCTopic(345, 1, 770) -- Mr. Malwick topic 1: Decline Wand
end)
RegisterCanShowTopic(768, function()
    evt._BeginCanShowTopic(768)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        if HasItem(947) then -- Alacorn Wand of Fireballs
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(769, nil, function()
    evt.SetMessage("好极。\n将来某个时候，我或我同伴的代表会来找你还这份人情。\n希望你别让我们失望。\n这是你的火球法杖。\n别再让人看见我们交谈，其他人会起疑。")
    SetQBit(QBit(526)) -- Accepted Fireball wand from Malwick
    SetAutonote(257) -- Accepted fireball wand from Mr. Malwick on Emerald Island.
    evt.SetNPCItem(345, 947, 0)
    evt.SetNPCTopic(345, 0, 767) -- Mr. Malwick topic 0: Harmondale
    evt.SetNPCTopic(345, 1, 0) -- Mr. Malwick topic 1 cleared
    evt.SetNPCGreeting(345, 122) -- Mr. Malwick greeting: Hello there, stranger <wink>. Fine weather we're having, no?
end)
RegisterCanShowTopic(769, function()
    evt._BeginCanShowTopic(769)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(770, nil, function()
    evt.SetMessage("我尊重你的决定。\n不过我是个有耐心的人，在比赛宣布赢家之前，我都会把这个机会留给你。")
    evt.SetNPCTopic(345, 0, 767) -- Mr. Malwick topic 0: Harmondale
    evt.SetNPCTopic(345, 1, 768) -- Mr. Malwick topic 1: Proposal
end)
RegisterCanShowTopic(770, function()
    evt._BeginCanShowTopic(770)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(771, nil, function()
    evt.SetMessage("我看你戴了顶好帽子。\n做笔交易如何：\n你把帽子给我，我们留你们活命？")
    evt.SetNPCTopic(346, 0, 773) -- Sal Sharktooth topic 0: Give Hat to Sal
    evt.SetNPCTopic(346, 1, 774) -- Sal Sharktooth topic 1: Keep Hat
end)
RegisterCanShowTopic(771, function()
    evt._BeginCanShowTopic(771)
    local visible = true
    if HasItem(1433) then -- Wealthy Hat
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(772, nil, function()
    evt.SetMessage("这座神庙是个相当凶险的地方。\n在这一带你得当心背后——你永远不知道什么东西想杀你。")
end)

RegisterGlobalEvent(773, nil, function()
    evt.SetMessage("谢了这顶帽子，朋友！")
    evt.ForPlayer(Players.All)
    RemoveItem(1433) -- Wealthy Hat
    evt.SetNPCTopic(346, 0, 0) -- Sal Sharktooth topic 0 cleared
    evt.SetNPCTopic(346, 1, 775) -- Sal Sharktooth topic 1: I warned you�
    evt.SetNPCItem(346, 1433, 1)
end)

RegisterGlobalEvent(774, nil, function()
    evt.SetMessage("你本该接受我的提议……")
    evt.SetNPCTopic(346, 0, 0) -- Sal Sharktooth topic 0 cleared
    evt.SetNPCTopic(346, 1, 0) -- Sal Sharktooth topic 1 cleared
    evt.SetMonGroupBit(54, MonsterBits.Hostile, 1)
end)

RegisterGlobalEvent(775, nil, function()
    evt.SetMessage("你早该听我的；我警告过你这地方凶险。\n现在趁我还没决定再从你身上拿点别的，赶紧滚。")
end)

RegisterGlobalEvent(776, nil, function()
    evt.SetMessage("我理解为你不愿接受我的提议。\n我想我们的事谈完了。")
    evt.SetNPCTopic(345, 2, 0) -- Mr. Malwick topic 2 cleared
end)
RegisterCanShowTopic(776, function()
    evt._BeginCanShowTopic(776)
    local visible = true
    if IsQBitSet(QBit(519)) then -- Finished Scavenger Hunt
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(777, nil, function()
    evt.SetMessage("你好！\n我猜你是比赛的参赛者？\n那太好了。\n我们想跟你做笔交易：你要是有红药水，换我们一顶帽子。\n咱们可以互相帮衬一把。")
    evt.SetNPCTopic(347, 0, 780) -- Brent Filiant topic 0: Trade Potion for Hat
    evt.SetNPCTopic(347, 1, 781) -- Brent Filiant topic 1: Keep Potion
    evt.SetNPCTopic(347, 2, 0) -- Brent Filiant topic 2 cleared
end)
RegisterCanShowTopic(777, function()
    evt._BeginCanShowTopic(777)
    local visible = true
    if HasItem(222) then -- Cure Wounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(778, nil, function()
    evt.SetMessage("最凶悍的一伙参赛者显然藏进了月亮神庙。\n我想他们也许想伏击任何想去那里的队伍。")
end)

RegisterGlobalEvent(779, nil, function()
    evt.SetMessage("我知道怎么配蓝药水，却不会配红的……差不多任何蓝色草药都行。\n把它和空瓶一调，瞧！\n即时蓝药水。\n我猜配红药水差不多，可我没把握。\n他们说配药不当会有很糟的后果。")
end)

RegisterGlobalEvent(780, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(222) then -- Cure Wounds
        evt.SetMessage("这是耍什么花招？\n你连红药水都没有。\n你不会以为我会白给你帽子吧？")
        evt.SetNPCTopic(347, 0, 0) -- Brent Filiant topic 0 cleared
        evt.SetNPCTopic(347, 1, 778) -- Brent Filiant topic 1: Brigands
        evt.SetNPCTopic(347, 2, 779) -- Brent Filiant topic 2: Blue Potions
        return
    end
    evt.SetMessage("好极了！\n帽子给你，我拿药水。\n太感谢了，我们清单上的东西差不多齐了。")
    RemoveItem(222) -- Cure Wounds
    evt.ForPlayer(Players.Current)
    AddValue(InventoryItem(1433), 1433) -- Wealthy Hat
    evt.SetNPCItem(347, 1433, 0)
    evt.SetNPCItem(347, 222, 1)
    evt.SetNPCGroupNews(53, 57) -- "Thanks for trading with us!"
    evt.SetNPCTopic(347, 0, 0) -- Brent Filiant topic 0 cleared
    evt.SetNPCTopic(347, 1, 778) -- Brent Filiant topic 1: Brigands
    evt.SetNPCTopic(347, 2, 779) -- Brent Filiant topic 2: Blue Potions
end)

RegisterGlobalEvent(781, nil, function()
    evt.SetMessage("怎么回事？\n你不喜欢与人合作？\n那好吧，我们不帮你了。")
    evt.SetNPCTopic(347, 0, 777) -- Brent Filiant topic 0: Potion for a Hat?
    evt.SetNPCTopic(347, 1, 778) -- Brent Filiant topic 1: Brigands
    evt.SetNPCTopic(347, 2, 779) -- Brent Filiant topic 2: Blue Potions
end)

RegisterGlobalEvent(782, nil, function()
    evt.SetMessage("抱歉伙计们，比赛宣布赢家之前，这艘船不开。")
end)

RegisterGlobalEvent(783, nil, function()
    evt.SetMessage("干得好，伙计们！\n我们这就动身去哈蒙代尔。\n恭喜。")
    ClearQBit(QBit(528)) -- Find the missing contestants on Emerald Island and bring back proof to Lord Markham.
    evt.SetNPCTopic(340, 3, 0) -- Lord Markham topic 3 cleared
    AddValue(History(1), 0)
    AddValue(History(2), 0)
    evt.MoveNPC(340, 215) -- Lord Markham -> Lord Markham's Chamber
    evt.SetNPCGreeting(340, 320) -- Lord Markham greeting: Ah, the contestants! I hope you haven't come to try to give Harmondale back to me! If you look at the contract you signed, it explicitly states that our deal is irrevocable on page nine, subparagraph iii, section c. The deal really is cut and dried. Buy the ticket--take the ride! ::Yawns:: Now, is there anything else you wished to speak about?
    evt.MoveToMap(-17331, 12547, 465, 1024, 0, 0, 0, 0, "7out02.odm") -- Harmondale
end)

RegisterGlobalEvent(784, nil, function()
    evt.SetMessage("记住，谁带回失踪参赛者的消息，我赏那伙人 1000 金币。")
    evt.SetNPCTopic(340, 3, 785) -- Lord Markham topic 3: Missing Contestants
    SetQBit(QBit(528)) -- Find the missing contestants on Emerald Island and bring back proof to Lord Markham.
end)

RegisterGlobalEvent(785, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1460) then -- Contestant's Shield
        evt.SetMessage("失踪的人还没消息？")
        return
    end
    evt.SetMessage("岛上真有条龙？\n我还以为大家说的龙是指到处都是的龙蝇。\n我会警告大家远离那个洞穴，免得再有人失踪。")
    RemoveItem(1460) -- Contestant's Shield
    SetAward(Award(2)) -- Found the missing contestants on Emerald Island
    AddValue(Experience, 1000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 1000)
    SubtractValue(ReputationInCurrentLocation, 5)
    ClearQBit(QBit(528)) -- Find the missing contestants on Emerald Island and bring back proof to Lord Markham.
    evt.SetNPCTopic(340, 3, 0) -- Lord Markham topic 3 cleared
end)

RegisterGlobalEvent(786, nil, function()
    evt.SetMessage("嗯……我记得近来有几个陌生人在龙穴入口探头探脑。\n我没注意他们进没进去，但之后再没在附近见过他们。\n他们想必意识到那地方多危险，回镇上去了。")
end)

RegisterGlobalEvent(787, nil, function()
    evt.SetMessage("我家后面那个洞穴不是废弃神殿。\n它属于翡翠之龙“无情者莫卡拉克”。\n他不喜欢访客，我劝你别去。\n废弃神殿埋在我家南边的山里。\n从山顶的洞穴进去就能到。")
end)

RegisterGlobalEvent(788, nil, function()
    evt.SetMessage("近来野生龙蝇成群侵扰翡翠岛西北侧，把东西存那边棚子里很危险。\n龙蝇不算太强，可它们快，偶尔还会朝你喷火。\n别太轻敌！")
end)

RegisterGlobalEvent(789, nil, function()
    evt.SetMessage("翡翠之龙住在东北的一个洞穴里。\n不过我劝你别去，他不喜欢访客。\n他饶过我们镇子，好让我们向他进贡；作为回报，他把海盗和不速之客挡在外面。")
end)

RegisterGlobalEvent(790, nil, function()
    evt.SetMessage("你们是寻宝赛的参赛者？\n那我劝你别往龙穴晃。\n莫卡拉克可不怎么容得下陌生人。\n我打赌那些失踪的人是把他的洞穴当成废弃神殿闯进去了——他们多半早死了。")
end)

RegisterGlobalEvent(791, nil, function()
    evt.SetMessage("我会提防别的参赛者——有些看起来很凶残。\n有一伙特别恶劣的去了岛北侧，之后再没见过。\n我倒惊讶这场比赛这么受关注，显然人们盼着参赛者赢了好攀上关系、日后求个方便。")
end)

RegisterGlobalEvent(792, nil, function()
    evt.SetMessage("你已决定不再要我提供翡翠岛各处的信息。\n日后你若想听我讲，来双掌酒馆找我，然后选择开启导览。")
    SetQBit(QBit(529)) -- No more docent babble
    evt.SetNPCTopic(342, 2, 793) -- Margaret the Docent topic 2: Tour On
    evt.MoveNPC(342, 239) -- Margaret the Docent -> Two Palms Tavern
end)

RegisterGlobalEvent(793, nil, function()
    evt.SetMessage("你已决定听我导览翡翠岛的名胜。\n你若不想再听我指点景点，就选择关闭导览。")
    ClearQBit(QBit(529)) -- No more docent babble
    evt.SetNPCTopic(342, 2, 792) -- Margaret the Docent topic 2: Tour Off
    evt.MoveNPC(342, 0) -- Margaret the Docent -> removed
end)

RegisterGlobalEvent(794, nil, function()
    evt.SetMessage("法律也许判定谁有罪谁无罪，但谁叫贼、谁只是罪犯，由我来定。\n把我在马克姆勋爵庄园壁炉架上看到的那只漂亮花瓶拿来，我就封你作游荡者。")
    SetQBit(QBit(530)) -- Go to Lord Markham's estate in Tatalia, steal the vase there, and return it to William Lasker in the Erathian Sewers.
    evt.SetNPCTopic(354, 0, 795) -- William Lasker topic 0: Rogue
end)

RegisterGlobalEvent(795, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1426) then -- Vase
        evt.SetMessage("寻常罪犯见什么偷什么；游荡者偷我叫他偷的东西。\n我不会给失败者授头衔。\n带回马克姆勋爵之瓶，我就把所有贼晋升为游荡者，把所有非贼封作荣誉游荡者。")
        return
    end
    evt.SetMessage("干得漂亮。\n偷那花瓶需要胆量和手段。\n我封你为游荡者，并给你一点报酬。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 34) then
            SetValue(ClassId, 35)
            SetQBit(QBit(1560)) -- Promoted to Rogue
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1561)) -- Promoted to Honorary Rogue
            AddValue(Experience, 15000)
        end
    end
    evt.ForPlayer(Players.All)
    RemoveItem(1426) -- Vase
    evt.ForPlayer(Players.Current)
    ClearQBit(QBit(724)) -- Vase - I lost it
    AddValue(Gold, 5000)
    ClearQBit(QBit(530)) -- Go to Lord Markham's estate in Tatalia, steal the vase there, and return it to William Lasker in the Erathian Sewers.
    evt.SetNPCTopic(354, 0, 796) -- William Lasker topic 0: Spy
end)

RegisterGlobalEvent(796, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("你的下一项任务难上几分……更适合间谍而非游荡者。\n有人托我确保 6 号瞭望塔——近来对抗死灵法师战争中唯一幸存的塔——下次遇袭时无法自卫。\n杀掉里面卫兵没用——死灵法师只会再派军队填满它。\n塔在死灵法师领地南缘。\n我要你溜进去，把塔顶门楼里的配重块搬到塔底门楼。\n那是块重块，嵌在靠墙的槽里，系着根绳子。\n等袭击真来时，挪错的配重会被发现得太晚，闸门也就关不上。\n你办成此事，便证明了你间谍的身份。")
        SetQBit(QBit(531)) -- Go to Watchtower 6 in the Deyja Moors, and move the weight from the top of the tower to the bottom of the tower. Then return to William Lasker in the Erathian Sewers.
        evt.SetNPCTopic(354, 0, 797) -- William Lasker topic 0: Spy
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("你已选择黑暗之路，我不再晋升你。\n也许刺客有东西可教你。\n我听说迪雅有一位。")
    else
        evt.SetMessage("你还没准备好迈出下一步。\n你必须决定追随光明之路还是黑暗之路的时候很快就到。\n你若选光明，回来找我完成训练。")
    end
end)

RegisterGlobalEvent(797, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(532)) then -- Watchtower 6. Weight in the appropriate box. Important for Global event 47 (Spy promotion)
        evt.SetMessage("干得好！\n总有一天，你对那座瞭望塔的破坏会救成百上千人的命。\n为酬谢你的效劳，我特此把你们中间的游荡者晋升为间谍，把荣誉游荡者晋升为荣誉间谍！哦，还有这点金子作报酬。")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 35) then
                SetValue(ClassId, 37)
                SetQBit(QBit(1562)) -- Promoted to Spy
                AddValue(Experience, 80000)
            else
                SetQBit(QBit(1563)) -- Promoted to Honorary Spy
                AddValue(Experience, 40000)
            end
        end
        AddValue(Gold, 15000)
        ClearQBit(QBit(531)) -- Go to Watchtower 6 in the Deyja Moors, and move the weight from the top of the tower to the bottom of the tower. Then return to William Lasker in the Erathian Sewers.
        evt.ForPlayer(Players.All)
        evt.SetNPCTopic(354, 0, 0) -- William Lasker topic 0 cleared
        evt.SetNPCGreeting(354, 154) -- William Lasker greeting: Greetings Rogues, how may I be of service?
    elseif HasItem(0) then -- 0
        evt.SetMessage("呃……那配重该放进下面门楼的箱子里——不是这儿。\n回 6 号瞭望塔，把配重放进正确的箱子！")
        return
    elseif IsQBitSet(QBit(568)) then -- Watchtower 6. Taken the weight from the upper gatehouse. Spy promo quest
        evt.SetMessage("嗯。\n把配重从上门楼移走是个开头，可它现在在哪儿？！？\n不把配重放进下门楼，计划就行不通！\n回 6 号瞭望塔，把配重放进正确的箱子！")
    else
        evt.SetMessage("活儿你还没干完！\n记住，你必须去 6 号瞭望塔，把配重从上门楼的箱子移到下门楼。\n办妥之前我不会晋升你。")
    end
end)

RegisterGlobalEvent(798, nil, function()
    if IsAtLeast(EnduranceBonus, 50) then return end
    SetValue(EnduranceBonus, 50)
    evt.StatusText("清爽！（耐力+50，临时）")
end)

RegisterGlobalEvent(799, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("你已选择光明之路，因此永远成不了出色的刺客。\n我无法训练你。\n也许你该跟着间谍继续走一条心肠软些的路。")
        return
    elseif IsQBitSet(QBit(1560)) then -- Promoted to Rogue
        if not IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("我能把一个普通游荡者变成可怕的杀手，但前提是他有干这行的性情。\n你必须选择走光明还是黑暗的时候快到了。\n你若偏爱阴影，就来找我，我完成你的训练。")
            return
        end
        evt.SetMessage("这么说……你想当刺客。\n好吧。\n我可以为你们中间的游荡者提供必要训练，但你必须先证明你的手段与忠诚，我才肯在你身上花时间。\n我的上司通知我，某位埃莉诺·卡迈恩女士必须死。\n她曾为我们效力，如今却与我们的敌人同住天宫，向他们提供有损我们事业的情报。\n让她闭嘴，再带回一件她的小玩意儿证明事已办妥。")
        SetQBit(QBit(533)) -- Go to the Celestial Court in Celeste and kill Lady Eleanor Carmine. Return with proof to Seknit Undershadow in the Deyja Moors.
        evt.SetNPCTopic(355, 1, 800) -- Seknit Undershadow topic 1: Assassin
    elseif IsQBitSet(QBit(1561)) then -- Promoted to Honorary Rogue
        if not IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("我能把一个普通游荡者变成可怕的杀手，但前提是他有干这行的性情。\n你必须选择走光明还是黑暗的时候快到了。\n你若偏爱阴影，就来找我，我完成你的训练。")
            return
        end
        evt.SetMessage("这么说……你想当刺客。\n好吧。\n我可以为你们中间的游荡者提供必要训练，但你必须先证明你的手段与忠诚，我才肯在你身上花时间。\n我的上司通知我，某位埃莉诺·卡迈恩女士必须死。\n她曾为我们效力，如今却与我们的敌人同住天宫，向他们提供有损我们事业的情报。\n让她闭嘴，再带回一件她的小玩意儿证明事已办妥。")
        SetQBit(QBit(533)) -- Go to the Celestial Court in Celeste and kill Lady Eleanor Carmine. Return with proof to Seknit Undershadow in the Deyja Moors.
        evt.SetNPCTopic(355, 1, 800) -- Seknit Undershadow topic 1: Assassin
    else
        evt.SetMessage("你若找人训练高级潜行术，我正是合适人选。\n可你还得先有人教你基础。\n等你取得游荡者或荣誉游荡者身份后回来找我。\n那时，也许我能进一步栽培你。\n去埃拉西亚下水道找神偷大师。")
        return
    end
end)

RegisterGlobalEvent(800, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1342) then -- Lady Carmine's Dagger
        evt.SetMessage("没有证据，我不能假定卡迈恩女士已死。\n把证据带给我，我就以刺客的头衔嘉奖你。")
        return
    end
    evt.SetMessage("看来事成了。[他缓缓查看那把匕首，叹了口气。]她曾是我至亲，可情感是理智之敌。\n这活儿我自己下不了手。\n谢谢。\n现在，你们是真正的刺客了。\n你们中间的游荡者，我会给予特别训练。\n这是一点小钱，补贴你办事的开销。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 35) then
            SetValue(ClassId, 36)
            SetQBit(QBit(1564)) -- Promoted to Assassin
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1565)) -- Promoted to Honorary Assassin
            AddValue(Experience, 40000)
        end
    end
    AddValue(Gold, 15000)
    ClearQBit(QBit(725)) -- Dagger - I lost it
    ClearQBit(QBit(533)) -- Go to the Celestial Court in Celeste and kill Lady Eleanor Carmine. Return with proof to Seknit Undershadow in the Deyja Moors.
    AddValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(355, 1, 0) -- Seknit Undershadow topic 1 cleared
    evt.SetNPCGreeting(355, 157) -- Seknit Undershadow greeting: Hello again, fellow Assassins. My tea and company are always yours.
end)

RegisterGlobalEvent(801, nil, function()
    evt.SetMessage("哈！这么说，你想参加十字军试炼？\n我不能怪你——人完成英勇事迹时那种自豪感，无比崇高！\n试炼很简单。\n必须杀一条龙。\n我正好知道一条——无情者弗罗思拉克斯！\n他住在泰塔利亚的一个洞穴里，在家时就恐吓附近农民。\n每年这个时节他该在洞里。\n这大概是你杀的第一条龙，我陪你同行，好给你指点。\n那么，我们这就出发，让这怪物的黑血流个痛快！")
    evt.SetNPCTopic(356, 0, 802) -- Sir Charles Quixote topic 0: Crusader
    evt.MoveNPC(356, 0) -- Sir Charles Quixote -> removed
    SetQBit(QBit(534)) -- Kill Wromthrax the Heartless in his cave in Tatalia, then talk to Sir Charles Quixote.
    evt.SetNPCGreeting(356, 159) -- Sir Charles Quixote greeting 159
    SetQBit(QBit(1684)) -- Replacement for NPCs �17 ver. 7
end)

RegisterGlobalEvent(802, nil, function()
    evt.ForPlayer(Players.All)
    if not IsQBitSet(QBit(535)) then -- Killed dragon when on Crusader quest
        evt.SetMessage("朋友，我们必须完成使命，我才能封你们为十字军。")
        return
    end
    evt.SetMessage("万岁！\n龙已陨落！\n你们确实是功勋卓著、名副其实的十字军，身后立着一桩好功绩。\n我真想留下与你们同唱你们的英勇之歌，可职责在身。\n我们定会再见，十字军们！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 26) then
            SetValue(ClassId, 27)
            SetQBit(QBit(1590)) -- Promoted to Crusader
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1591)) -- Promoted to Honorary Crusader
            AddValue(Experience, 15000)
        end
    end
    ClearQBit(QBit(534)) -- Kill Wromthrax the Heartless in his cave in Tatalia, then talk to Sir Charles Quixote.
    ClearQBit(QBit(1684)) -- Replacement for NPCs �17 ver. 7
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    evt.MoveNPC(356, 941) -- Sir Charles Quixote -> Quixote Residence
    evt.SetNPCTopic(356, 0, 803) -- Sir Charles Quixote topic 0: Hero
    evt.SetNPCGreeting(356, 158) -- Sir Charles Quixote greeting: Hail. I am Sir Charles Quixote. I am the humble champion of the people, and I am at thy service.
end)

RegisterGlobalEvent(803, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("看到你选择光明之路，我很高兴，十字军们！\n朋友，一件不义之事已经发生，除了我们，还有谁能匡扶正义？\n一个邪恶恶棍绑架了一位名叫艾丽斯·哈格里夫斯的少女。\n他叫威廉·塞塔格，把她关在自己塔里。\n你们必须立刻策马前去，把这恶棍剑斩，救出可爱的艾丽斯！\n你们若成功，就将是真正的大地英雄！")
        evt.SetNPCTopic(356, 0, 804) -- Sir Charles Quixote topic 0: Hero
        SetQBit(QBit(536)) -- Rescue Alice Hargreaves from William's Tower in the Deyja Moors then talk to Sir Charles Quixote.
        evt.SetNPCGreeting(356, 158) -- Sir Charles Quixote greeting: Hail. I am Sir Charles Quixote. I am the humble champion of the people, and I am at thy service.
        evt.MoveNPC(393, 1158) -- Alice Hargreaves -> Alice Hargreaves
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("我不再与你这恶棍来往！\n我如今看清你选择了黑暗之路。\n也许你该去找个像你一样的恶棍接受训练。")
    else
        evt.SetMessage("啊，十字军同伴！\n我知道你渴望再有一桩任务来磨练你的十字军技艺，但你必须先通过一项严肃得多的试炼。\n你必须同意追随光明之路，我才能再帮你。\n你做出选择时自会知晓。\n那时再回来找我。")
    end
end)

RegisterGlobalEvent(804, nil, function()
    if not IsQBitSet(QBit(1685)) then -- Replacement for NPCs �54 ver. 7
        evt.SetMessage("尽管你们的功绩确实令人赞叹，十字军们，可在救出那姑娘之前，我不能封你们为英雄！")
        return
    end
    evt.SetMessage("你们做到了！我早知道你们行！\n我真为你们骄傲！\n艾丽斯已挣脱邪恶威廉·塞塔格的魔掌，邪恶被击溃，正义得伸张。\n昔日不义之处，如今归于正义！[查尔斯长舒一口气，笑容灿烂]好了。\n我这儿的事办完了！\n你们通过了试炼，配得奖赏。\n因此我郑重封你们为英雄！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 27) then
            SetValue(ClassId, 28)
            SetQBit(QBit(1592)) -- Promoted to Hero
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1593)) -- Promoted to Honorary Hero
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(536)) -- Rescue Alice Hargreaves from William's Tower in the Deyja Moors then talk to Sir Charles Quixote.
    ClearQBit(QBit(1685)) -- Replacement for NPCs �54 ver. 7
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.MoveNPC(393, 941) -- Alice Hargreaves -> Quixote Residence
    evt.SetNPCGreeting(356, 161) -- Sir Charles Quixote greeting 161
    evt.SetNPCTopic(356, 0, 0) -- Sir Charles Quixote topic 0 cleared
end)

RegisterGlobalEvent(805, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        if not IsQBitSet(QBit(537)) then -- Mini-dungeon Area 5. Rescued/Captured Alice Hargreaves.
            evt.SetMessage("救命！\n威廉把我抓住，关在这座塔里。\n求你尽快放我出去，我不想死。")
            SetQBit(QBit(537)) -- Mini-dungeon Area 5. Rescued/Captured Alice Hargreaves.
            SetQBit(QBit(1685)) -- Replacement for NPCs �54 ver. 7
            return
        end
        evt.SetMessage("太感谢你帮我摆脱威廉的魔掌了。")
        return
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        if not IsQBitSet(QBit(537)) then -- Mini-dungeon Area 5. Rescued/Captured Alice Hargreaves.
            evt.SetMessage("请问你们是哪位？\n嘿！\n把你的手拿开！\n救命！")
            SetQBit(QBit(537)) -- Mini-dungeon Area 5. Rescued/Captured Alice Hargreaves.
            SetQBit(QBit(1685)) -- Replacement for NPCs �54 ver. 7
            return
        end
        evt.SetMessage("你们想把我带到哪儿去？\n我家里很有钱——你们不放我走，可有大麻烦！")
    else
        evt.SetMessage("你现在本不该看到这个。\n你若在读这行字，告诉布赖恩，这个任务的事件和/或逻辑出了问题——你本该要么是好人来接英雄任务，要么是恶人来接恶棍任务，而你显然两者都不是。")
    end
end)

RegisterGlobalEvent(806, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("我当然最想腐蚀你那显然虔诚的灵魂，可恐怕你没胆子贯彻我的教导。\n你已选择光明之路，休想得到我的任何帮助。")
        return
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("我们谈正事吧，如何？\n我知道你清楚我身为埃拉西亚最黑恶棍的地位。\n要证明自己这么邪恶，需要努力和冲劲——我希望你有这份胆气。\n我最想做的就是把你留在我手下训练数年，教你当恶棍最精妙的门道。\n不幸的是，上面催我加快你的学业。\n为此，我有一条直攻恶棍之道的捷径。\n有个女人，艾丽斯·哈格里夫斯，出身高贵、品性纯洁。\n把她从格芬哈特城堡的居所掳走。带回这里，关进我的塔里。\n办妥此事，我就把你队伍里所有十字军晋升为恶棍，把其余人封作荣誉恶棍。")
        if IsQBitSet(QBit(1590)) then -- Promoted to Crusader
            SetQBit(QBit(538)) -- Capture Alice Hargreaves from her residence in Castle Gryphonheart and return her to William's Tower in the Deyja Moors.
            evt.SetNPCTopic(357, 0, 807) -- William Setag topic 0: Villain
            evt.MoveNPC(393, 1158) -- Alice Hargreaves -> Alice Hargreaves
        elseif IsQBitSet(QBit(1591)) then -- Promoted to Honorary Crusader
            SetQBit(QBit(538)) -- Capture Alice Hargreaves from her residence in Castle Gryphonheart and return her to William's Tower in the Deyja Moors.
            evt.SetNPCTopic(357, 0, 807) -- William Setag topic 0: Villain
            evt.MoveNPC(393, 1158) -- Alice Hargreaves -> Alice Hargreaves
        else
            evt.SetMessage("你已有的训练，我无从再加增益。\n你必须先晋升为十字军，我才能教你恶棍之道。")
            return
        end
    else
        evt.SetMessage("做这个决定前，你还有一个更紧迫、立刻要做的决定。\n你若选那条更黑暗的路，可以回来找我，完成圣武士之道的训练。")
        return
    end
end)

RegisterGlobalEvent(807, nil, function()
    if not IsQBitSet(QBit(1685)) then -- Replacement for NPCs �54 ver. 7
        evt.SetMessage("艾丽斯在哪儿？\n我要求不高，就一次简单的绑架。\n真有那么难吗？\n我劝你们加快进度。")
        return
    end
    evt.SetMessage("妙极！\n你们展现了投入、胆量和蛮力。\n把如此纯洁高贵的生灵囚禁在这邪恶之地，当然配得上恶棍——或荣誉恶棍之名。\n现在去闯荡世界，让所有人畏惧你们的名字吧。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 27) then
            SetValue(ClassId, 29)
            SetQBit(QBit(1594)) -- Promoted to Villain
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1595)) -- Promoted to Honorary Villain
            AddValue(Experience, 40000)
        end
    end
    AddValue(Gold, 10000)
    ClearQBit(QBit(538)) -- Capture Alice Hargreaves from her residence in Castle Gryphonheart and return her to William's Tower in the Deyja Moors.
    AddValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(357, 0, 0) -- William Setag topic 0 cleared
    evt.SetNPCGreeting(357, 165) -- William Setag greeting 165
    ClearQBit(QBit(1685)) -- Replacement for NPCs �54 ver. 7
end)

RegisterGlobalEvent(808, nil, function()
    evt.SetMessage("啊，初学武僧求问启蒙之路，乃是常事。\n我会告诉你这条路，但旅程要靠你自己走。\n拜尔德斯上有一连串古墓——其中一座建在一处自然伟力之地上。\n你会认出正确的那座坟，因为它与众不同。\n到达这座坟，在水边冥想，你的入门晋升便告完成。")
    SetQBit(QBit(539)) -- Find the lost meditation spot in the Dwarven Barrows.
    evt.SetNPCTopic(377, 0, 809) -- Bartholomew Hume topic 0: Initiate
end)

RegisterGlobalEvent(809, nil, function()
    evt.SetMessage("你的旅程还没走完。\n完成任务后再来见我。")
end)

RegisterGlobalEvent(810, nil, function()
    evt.SetMessage("[巴塞洛缪·休姆以意念联系你]恭喜，年轻人。\n我作为武僧给你们上的最后一课是：\n启蒙在于旅程，而非终点。\n此际，终点之所以关键，是为了证明你们走得完这趟旅程。\n我如今把所有武僧晋升为入门弟子，其余人等封为荣誉入门弟子——恭喜。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 22) then
            SetValue(ClassId, 23)
            SetQBit(QBit(1572)) -- Promoted to Initiate
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1573)) -- Promoted to Honorary Initiate
            AddValue(Experience, 15000)
        end
    end
    ClearQBit(QBit(539)) -- Find the lost meditation spot in the Dwarven Barrows.
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(377, 0, 811) -- Bartholomew Hume topic 0: Master
    evt.SetNPCTopic(394, 0, 0) -- Bartholomew Hume topic 0 cleared
end)

RegisterGlobalEvent(811, nil, function()
    if IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("抱歉，我已获准不再训练你。\n你得另找一位大师学习。")
        return
    elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("我看你想继续旅程。\n好极！\n别害怕，你已为下一步做好准备。\n你必须铲除一个邪恶教团的残余——羊鸣教团。\n击败他们的大祭司，回来见我，我就完成你的训练，晋升你为大师。")
        SetQBit(QBit(540)) -- Go to the Temple of Baa in Avlee and kill the High Priest of Baa, then return to Bartholomew Hume in Harmondale.
        evt.SetNPCTopic(377, 0, 812) -- Bartholomew Hume topic 0: Master
    else
        evt.SetMessage("你的路前方出现岔口。\n唯有你选择走更光明的路之后，我才训练你。")
        return
    end
end)

RegisterGlobalEvent(812, nil, function()
    evt.ForPlayer(Players.All)
    if not IsQBitSet(QBit(755)) then -- Killed High Preist of Baa
        evt.SetMessage("羊鸣教神庙仍在，他们的大祭司仍活着。\n此事完成之前，你还不配大师头衔。\n去吧，别失败。")
        return
    end
    evt.SetMessage("干得好。\n羊鸣教团不再玷污埃拉西亚的土地。\n现在，请允许我把所有入门弟子晋升为大师，所有荣誉入门弟子封为荣誉大师。\n记住，这只是启蒙之路上的一站。\n你的旅程唯有到你最终死去才结束——永远不要封闭你的心灵。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 23) then
            SetValue(ClassId, 24)
            SetQBit(QBit(1574)) -- Promoted to Master
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1575)) -- Promoted to Honorary Master
            AddValue(Experience, 40000)
        end
    end
    AddValue(Gold, 7500)
    ClearQBit(QBit(540)) -- Go to the Temple of Baa in Avlee and kill the High Priest of Baa, then return to Bartholomew Hume in Harmondale.
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(377, 0, 0) -- Bartholomew Hume topic 0 cleared
    evt.SetNPCGreeting(377, 167) -- Bartholomew Hume greeting: Fellow Masters! It is good to see you, how may I do you service?
end)

RegisterGlobalEvent(813, nil, function()
    if IsQBitSet(QBit(1572)) then -- Promoted to Initiate
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("[斯特凡·桑嗤笑]你想让我教你东西？\n你们这些哭鼻子的老好人，让我拿刀的胳膊直痒痒！\n趁我没真教你什么叫打架，滚开！")
            return
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("我的一个手下给我送来一封信，我需要破译。\n密码要靠知道某本书里某个词来对照。\n你想当忍者，就得这么做：潜入魔法学校，查出著名的《潮汐卷轴》第三个词是什么。\n用它破译信件，再照信里说的做。\n那是进入大师之墓的钥匙。\n你会在埃拉西亚南部找到那座墓。\n[斯特凡递给你一张纸片]这是那封密信。")
            SetQBit(QBit(541)) -- Crack the code in the School of Sorcery in the Bracada Desert to reveal the location of the Tomb of Ashwar Nog'Nogoth. Discover the tomb's location, enter it, and then return it to Stephan Sand in the Pit.
            evt.SetNPCTopic(378, 0, 814) -- Stephan Sand topic 0: Ninja
            AddValue(InventoryItem(1503), 1503) -- Cipher
            SetQBit(QBit(727)) -- Cipher - I lost it
        else
            evt.SetMessage("尽管你已取得入门弟子身份，我仍不确定你咽不咽得下我那些更极端的教导。\n等你正式抛弃一切把人变成软蛋和懦夫的哲学后，再回来找我。")
            return
        end
    elseif IsQBitSet(QBit(1573)) then -- Promoted to Honorary Initiate
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("[斯特凡·桑嗤笑]你想让我教你东西？\n你们这些哭鼻子的老好人，让我拿刀的胳膊直痒痒！\n趁我没真教你什么叫打架，滚开！")
            return
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("我的一个手下给我送来一封信，我需要破译。\n密码要靠知道某本书里某个词来对照。\n你想当忍者，就得这么做：潜入魔法学校，查出著名的《潮汐卷轴》第三个词是什么。\n用它破译信件，再照信里说的做。\n那是进入大师之墓的钥匙。\n你会在埃拉西亚南部找到那座墓。\n[斯特凡递给你一张纸片]这是那封密信。")
            SetQBit(QBit(541)) -- Crack the code in the School of Sorcery in the Bracada Desert to reveal the location of the Tomb of Ashwar Nog'Nogoth. Discover the tomb's location, enter it, and then return it to Stephan Sand in the Pit.
            evt.SetNPCTopic(378, 0, 814) -- Stephan Sand topic 0: Ninja
            AddValue(InventoryItem(1503), 1503) -- Cipher
            SetQBit(QBit(727)) -- Cipher - I lost it
        else
            evt.SetMessage("尽管你已取得入门弟子身份，我仍不确定你咽不咽得下我那些更极端的教导。\n等你正式抛弃一切把人变成软蛋和懦夫的哲学后，再回来找我。")
            return
        end
    else
        evt.SetMessage("有抱负是好事，可我只训练有经验的学生。\n等你取得入门弟子身份再回来，也许我会教你……前提是你有正确的看法。\n你要是想找人帮你成为入门弟子，也许该从那个软蛋巴塞洛缪·休姆开始。\n我敢说他乐意给你启蒙教育。")
        return
    end
end)

RegisterGlobalEvent(814, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(754)) then -- Opened chest with shadow mask
        evt.SetMessage("干得漂亮。\n除了弱者和懦夫的辩护者，没人能否认成功。\n我特此把所有入门弟子晋升为忍者，把所有非入门弟子封为荣誉忍者。\n哦对了，从墓里偷来的那件小玩意儿你尽管留着。\n说到底，这只是一次训练演习。")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 23) then
                SetValue(ClassId, 25)
                SetQBit(QBit(1576)) -- Promoted to Ninja
                AddValue(Experience, 80000)
            else
                SetQBit(QBit(1577)) -- Promoted to Honorary Ninja
                AddValue(Experience, 40000)
            end
        end
        ClearQBit(QBit(541)) -- Crack the code in the School of Sorcery in the Bracada Desert to reveal the location of the Tomb of Ashwar Nog'Nogoth. Discover the tomb's location, enter it, and then return it to Stephan Sand in the Pit.
        SubtractValue(ReputationInCurrentLocation, 10)
        evt.ForPlayer(Players.All)
        evt.SetNPCTopic(378, 0, 0) -- Stephan Sand topic 0 cleared
        evt.SetNPCGreeting(378, 170) -- Stephan Sand greeting: Now that you've achieved the exhalted status of Ninja, I have nothing further to give you. I hope my teachings take you far.
    elseif IsQBitSet(QBit(569)) then -- Solved the code puzzle. Ninja promo quest
        evt.SetMessage("你拿到了钥匙，却没照信里的指示去做。\n记住，墓在埃拉西亚南部。\n完成任务，回来向我报捷。\n完不成就别回来见我。\n失败是可悲的。")
    else
        evt.SetMessage("[桑叹气]再重复一遍，密码钥匙是《潮汐卷轴》第一段的第三个词。\n你可以在魔法学校里找到它。\n我不管你怎么进去——杀掉挡路的，或溜进去。\n随你便。\n唯一重要的是成功。\n其余一切都是个人软弱的借口。")
    end
end)

RegisterGlobalEvent(815, nil, function()
    if IsQBitSet(QBit(1584)) then -- Promoted to Warrior Mage
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("几代人以前，图拉林森林的炼金巫师造了一把附魔弓，用于封印精灵与人类之间的又一份和约。\n运往埃拉西亚途中，弓被埃里的泰坦从信使手里夺走。\n他们用不上这东西，所以它大概还在他们的堡垒里。\n为我们这一行出把力，把弓夺回来。\n它绝对是有史以来同类器物中最精美的一件。\n哦，既然你在那儿，不妨顺手教训那些恶霸一下——他们抢它纯粹出于残忍，而非需要！\n你若成功，我会把所有高级射手晋升为神箭手，其余人相应封为荣誉神箭手。")
            SetQBit(QBit(542)) -- Retrieve the Perfect Bow from the Titans' Stronghold in Avlee and return it to Lawrence Mark in Harmondale.
            evt.SetNPCTopic(379, 0, 816) -- Lawrence Mark topic 0: Master Archer
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("你已选择黑暗之路。\n我永远不会帮你精进，因为怕你用技艺达成自私的目的！")
        else
            evt.SetMessage("这么说，你已取得高级射手军衔，想晋升神箭手！\n目标不错，可我只晋升那些心灵与勇气配得上技艺的人。\n等你坚定皈依光明后再来找我。\n那时我会帮你。")
        end
        return
    elseif IsQBitSet(QBit(1585)) then -- Promoted to Honorary Warrior Mage
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("几代人以前，图拉林森林的炼金巫师造了一把附魔弓，用于封印精灵与人类之间的又一份和约。\n运往埃拉西亚途中，弓被埃里的泰坦从信使手里夺走。\n他们用不上这东西，所以它大概还在他们的堡垒里。\n为我们这一行出把力，把弓夺回来。\n它绝对是有史以来同类器物中最精美的一件。\n哦，既然你在那儿，不妨顺手教训那些恶霸一下——他们抢它纯粹出于残忍，而非需要！\n你若成功，我会把所有高级射手晋升为神箭手，其余人相应封为荣誉神箭手。")
            SetQBit(QBit(542)) -- Retrieve the Perfect Bow from the Titans' Stronghold in Avlee and return it to Lawrence Mark in Harmondale.
            evt.SetNPCTopic(379, 0, 816) -- Lawrence Mark topic 0: Master Archer
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("你已选择黑暗之路。\n我永远不会帮你精进，因为怕你用技艺达成自私的目的！")
        else
            evt.SetMessage("这么说，你已取得高级射手军衔，想晋升神箭手！\n目标不错，可我只晋升那些心灵与勇气配得上技艺的人。\n等你坚定皈依光明后再来找我。\n那时我会帮你。")
        end
    else
        evt.SetMessage("你想当神箭手，该找的人就是我，可你来太早了！\n要成为大师，你得有合适的资历，那意味着先成为高级射手。\n准备好后再回来。")
    end
end)

RegisterGlobalEvent(816, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1344) then -- The Perfect Bow
        evt.SetMessage("夺弓不顺利？\n好吧，慢慢来，仔细计划攻打泰坦的行动。\n对付这么强的对手，打了就跑并不丢人。\n为击败这些怪物，做你必须做的。")
        return
    end
    evt.SetMessage("你找到弓了！\n让我量一量，按你独特的射箭风格调一调。弄好后你就留着它，用它保卫大地与人民。\n我很乐意把所有高级射手晋升为神箭手，把所有荣誉高级射手封为荣誉神箭手。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 1) then
            SetValue(ClassId, 2)
            SetQBit(QBit(1586)) -- Promoted to Master Archer
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1587)) -- Promoted to Honorary Master Archer
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(542)) -- Retrieve the Perfect Bow from the Titans' Stronghold in Avlee and return it to Lawrence Mark in Harmondale.
    AddValue(InventoryItem(1345), 1345) -- The Perfect Bow
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    if HasItem(1344) then -- The Perfect Bow
        RemoveItem(1344) -- The Perfect Bow
    end
    evt.SetNPCTopic(379, 0, 0) -- Lawrence Mark topic 0 cleared
    evt.SetNPCGreeting(379, 172) -- Lawrence Mark greeting: Welcome my friends! That's a fine weapon you have there, but don't think for a moment you'll best me in this year's Tourney--I'm still the Master!
end)

RegisterGlobalEvent(817, nil, function()
    evt.SetMessage("[喘]这么说，你以为自己能当高级射手，是吧？\n没那么容易。\n你必须在魔法技能与身体技能上同样精通。\n有一场考验。\n去红矮人矿。\n里面你会遇到两种野兽——一种只能用魔法伤，一种只能用钢铁伤。\n在矿下层深处，你会找到矮人造的一台机器，它为升降机供能——那是矿上下层之间唯一的通道。\n为把这些生物困在下层，你得把机器里的皮带换成这根旧皮带——它撑不过一小时就会断。\n这该给你足够时间赶到升降机、在被困之前逃出去。\n把这些生物封死，再回来见我——只有那时我才称你们为高级射手。")
    AddValue(InventoryItem(1451), 1451) -- Worn Belt
    SetQBit(QBit(543)) -- Sabotage the lift in the Red Dwarf Mines in the Bracada Desert then return to Steagal Snick in Avlee.
    SetQBit(QBit(728)) -- Worn Belt - I lost it
    evt.SetNPCTopic(380, 0, 818) -- Steagal Snick topic 0: Warrior Mage
end)

RegisterGlobalEvent(818, nil, function()
    if not IsQBitSet(QBit(570)) then -- Destroyed critter generator in dungeon. Warrior Mage promo quest.
        evt.SetMessage("你还没破坏那台机器。\n办完这事之前，我不会晋升你为高级射手。")
        return
    end
    evt.SetMessage("很好。\n你通过了考验。\n如今这些生物被封死，再也不能捕食矮人，而你也证明了自己在法术与钢铁两方面的能力。\n我很自豪地宣布你们中间所有弓箭手为高级射手，其余人等为荣誉高级射手。\n恭喜！\n现在滚吧。\n我已经烦透你们陪着了。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 0) then
            SetValue(ClassId, 1)
            SetQBit(QBit(1584)) -- Promoted to Warrior Mage
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1585)) -- Promoted to Honorary Warrior Mage
            AddValue(Experience, 15000)
        end
    end
    ClearQBit(QBit(543)) -- Sabotage the lift in the Red Dwarf Mines in the Bracada Desert then return to Steagal Snick in Avlee.
    AddValue(Gold, 7500)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(380, 0, 819) -- Steagal Snick topic 0: Sniper
end)

RegisterGlobalEvent(819, nil, function()
    if IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("野心不小，是吧？\n以为能挣到狙击手头衔？\n也许吧。\n你必须这么做：\n泰坦堡垒里有一把非常特别的弓，本是精灵献给人类的和平礼物，用来平息一场早被遗忘的冲突。\n[斯尼克大师摇头]老天！这些和平玩意儿让我恶心！\n总之，为我们这一行把弓取来，我就晋升你为狙击手。\n[嘿]你要想击败泰坦，最好拿出点狙击手的样子。\n一场硬碰硬……或该说头对膝的打斗，你讨不到好。")
        SetQBit(QBit(544)) -- Retrieve the Perfect Bow from the Titans' Stronghold in Avlee and return it to Steagal Snick in Avlee.
        evt.SetNPCTopic(380, 0, 820) -- Steagal Snick topic 0: Sniper
    elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("在追随光明之路，是吧？\n你每次从背后射人都要哭，怎么当狙击手？\n也许你该去找那个软心肠的劳伦斯·马克帮忙。\n我知道我不会帮你。")
    else
        evt.SetMessage("想当狙击手，嗯？也许。\n可我怀疑你有没有这个胆子。\n得心像葡萄干一样皱缩、像石头一样坚硬，才干得了你必须干的事。\n向我证明你追随黑暗之路，我再教你更深的。")
    end
end)

RegisterGlobalEvent(820, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1344) then -- The Perfect Bow
        evt.SetMessage("又失败？[斯尼克大师打哈欠]\n真意外。\n我说简单点——没弓，就没头衔。")
        return
    end
    evt.SetMessage("你拿到弓了？！\n好极！\n已经几个世纪没人有胆量挑战泰坦、把那弓夺回来了！\n让我量一量，按你独特的射箭风格调一调。\n我很自豪能第一个把你们中间所有高级射手称作狙击手，并宣布所有荣誉高级射手为荣誉狙击手！\n我得承认，我本以为你没本事成功。\n我很高兴我错了。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 1) then
            SetValue(ClassId, 3)
            SetQBit(QBit(1588)) -- Promoted to Sniper
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1589)) -- Promoted to Honorary Sniper
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(544)) -- Retrieve the Perfect Bow from the Titans' Stronghold in Avlee and return it to Steagal Snick in Avlee.
    AddValue(InventoryItem(1345), 1345) -- The Perfect Bow
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    if HasItem(1344) then -- The Perfect Bow
        RemoveItem(1344) -- The Perfect Bow
    end
    evt.SetNPCTopic(380, 0, 0) -- Steagal Snick topic 0 cleared
    evt.SetNPCGreeting(380, 174) -- Steagal Snick greeting: Students�[Mr. Snick rasps the word, then smiles] no longer. I am proud to have helped you on your way. Use your new weapon�[wheeze] wisely.
end)

RegisterGlobalEvent(821, nil, function()
    if IsQBitSet(QBit(1566)) then -- Promoted to Cavalier
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("封你们为勇士？\n休想！\n我没把你们这些作恶者剁成肉泥，唯一原因是你们是和平来的。\n现在就走，趁我还没改变主意、替世界除掉又一个麻烦。")
            return
        elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("这么说，你们想当勇士，是吧？\n哈！\n你一场锦标赛都没赢，怎么当勇士？\n你知道，我其实没法把你晋升为勇士——这得你自己挣，就像一切事一样。\n去骑士难度的竞技场赢五场勇士锦标赛，再回来找我。\n你愿意的话，那时我就称你们为勇士。")
            SetQBit(QBit(545)) -- Win five arena challenges then return to Leda Rowan in the Bracada Desert.
            evt.SetNPCTopic(381, 0, 822) -- Leda Rowan topic 0: Champion
        else
            evt.SetMessage("我看得出你们很想被称为勇士，可我不太确定该不该帮你们。\n向我证明你追随光明之路，我们再谈晋升。")
            return
        end
    elseif IsQBitSet(QBit(1567)) then -- Promoted to Honorary Cavalier
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("封你们为勇士？\n休想！\n我没把你们这些作恶者剁成肉泥，唯一原因是你们是和平来的。\n现在就走，趁我还没改变主意、替世界除掉又一个麻烦。")
            return
        elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("这么说，你们想当勇士，是吧？\n哈！\n你一场锦标赛都没赢，怎么当勇士？\n你知道，我其实没法把你晋升为勇士——这得你自己挣，就像一切事一样。\n去骑士难度的竞技场赢五场勇士锦标赛，再回来找我。\n你愿意的话，那时我就称你们为勇士。")
            SetQBit(QBit(545)) -- Win five arena challenges then return to Leda Rowan in the Bracada Desert.
            evt.SetNPCTopic(381, 0, 822) -- Leda Rowan topic 0: Champion
        else
            evt.SetMessage("我看得出你们很想被称为勇士，可我不太确定该不该帮你们。\n向我证明你追随光明之路，我们再谈晋升。")
            return
        end
    else
        evt.SetMessage("你们想被称为勇士，该找的人就是我。\n不过首先，你们得练习。\n等你们成为豪侠后再回来。\n那时，若你们看法正确，我就告诉你们要怎样才能成为勇士。")
        return
    end
end)

RegisterGlobalEvent(822, nil, function()
    if not IsAtLeast(ArenaWinsKnight, 5) then
        evt.SetMessage("你们还没在竞技场赢五场勇士锦标赛。\n赢满五场再回来，我就晋升你们。\n记住，这些战斗必须在骑士难度下进行。")
        return
    end
    evt.SetMessage("朋友们，恭喜你们近来的锦标赛胜利！\n我欣然封你们中间的豪侠为勇士，荣誉豪侠封为荣誉勇士！\n永远为光明而战，勇士们！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 17) then
            SetValue(ClassId, 19)
            SetQBit(QBit(1568)) -- Promoted to Champion
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1569)) -- Promoted to Honorary Champion
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(545)) -- Win five arena challenges then return to Leda Rowan in the Bracada Desert.
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(381, 0, 0) -- Leda Rowan topic 0 cleared
    evt.SetNPCGreeting(381, 176) -- Leda Rowan greeting: Hail, champions! Your courage and skill has all the tongues in the Kingdom wagging! I am very proud of you!
end)

RegisterGlobalEvent(823, nil, function()
    evt.SetMessage("豪侠的标志是勇气。\n我可以晋升你为豪侠，但在此之前，你得向我证明你在战斗中的勇敢。\n由于大多数人骨子里都是胆小鬼，我怀疑你成功不了。\n可你若想试，就得这么做：清掉拜尔德斯那座鬼宅里的所有不死者。")
    SetQBit(QBit(546)) -- Destroy all the undead in the Haunted House in the Barrow Downs and return to Frederick Org in Erathia.
    evt.SetNPCTopic(382, 0, 824) -- Frederick Org topic 0: Cavalier
end)

RegisterGlobalEvent(824, nil, function()
    evt.ForPlayer(Players.All)
    if not IsQBitSet(QBit(652)) then -- Cleaned out the haunted mansion (Cavalier promo)
        evt.SetMessage("区区一座鬼宅就把你吓得落荒而逃？\n我见过的巧克力泡芙都比你有骨气！\n滚吧，脊梁骨硬起来之前别回来！")
        return
    end
    evt.SetMessage("你回来了！\n看你们脸上的神情，我就知道你们办成了。\n干得好！\n我特此正式把你们中间所有骑士晋升为豪侠，其余人等封为荣誉豪侠。\n骄傲地带着你的头衔吧！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 16) then
            SetValue(ClassId, 17)
            SetQBit(QBit(1566)) -- Promoted to Cavalier
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1567)) -- Promoted to Honorary Cavalier
            AddValue(Experience, 15000)
        end
    end
    ClearQBit(QBit(546)) -- Destroy all the undead in the Haunted House in the Barrow Downs and return to Frederick Org in Erathia.
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(382, 0, 825) -- Frederick Org topic 0: Black Knight
end)

RegisterGlobalEvent(825, nil, function()
    if IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("这么说，你以为自己能当黑骑士，是吧？\n好吧。\n你知道，我听过许多人说罪犯是懦夫。\n那根本不对。\n在抢劫或战斗中冒生命危险，需要很大的勇气。\n你已经证明你有勇气，现在是把这份勇气和你的本领用上的时候。\n我要你去抢劫精灵金库。\n那是全大陆最大的宝藏窟之一，守卫极严。\n干完这票，卷走财富。\n完事回来找我。\n那时我就晋升你为黑骑士。")
        SetQBit(QBit(547)) -- Raid the Elven Treasury at Castle Navan in the Tularean Forest and return to Frederick Org in Erathia.
        evt.SetNPCTopic(382, 0, 826) -- Frederick Org topic 0: Black Knight
    elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("呸！\n你们这些老好人一文不值！\n我再也教不了你们任何东西！\n")
    else
        evt.SetMessage("你想晋升黑骑士，确实该来找我。\n可你连自己是不是邪恶都还没决定，怎么当黑骑士？\n彻底皈依黑暗后再回来。\n只有那时我才恢复你的训练。")
    end
end)

RegisterGlobalEvent(826, nil, function()
    if not IsQBitSet(QBit(572)) then -- Robbed Elven treasury. Black Knight promo quest.
        evt.SetMessage("抢劫还没完？\n不。\n别来向我报告失败。\n别来告诉我你临阵退缩。\n出去，把那金库抢了！\n失败不在选项之内！")
        return
    end
    evt.SetMessage("好极！\n那票抢劫干得漂亮！\n我为你们骄傲。\n战利品你们留着——那是你们出色完成工作的奖赏。\n我可以有把握地说，你们中间的豪侠今天已成为黑骑士，其余人等我再赐一个荣誉黑骑士头衔。\n你们干得好，我的学生们！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 17) then
            SetValue(ClassId, 18)
            SetQBit(QBit(1570)) -- Promoted to Black Knight
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1571)) -- Promoted to Honorary Black Knight
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(547)) -- Raid the Elven Treasury at Castle Navan in the Tularean Forest and return to Frederick Org in Erathia.
    AddValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(382, 0, 0) -- Frederick Org topic 0 cleared
    evt.SetNPCGreeting(382, 178) -- Frederick Org greeting: [Frederick rises hastily to his feet] None shall pass! [he blinks and rubs his eyes] Oh. It's you. Sorry, I thought you were someone else. How goes the villainy?
end)

RegisterGlobalEvent(827, nil, function()
    if IsQBitSet(QBit(1578)) then -- Promoted to Hunter
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("看来你也许能干我心里的活儿。\n游骑领主面对的根本任务是照料这片土地。\n近来，偷猎者从图拉林森林盗走了一块叫做“森林之心”的魔法宝石。\n森林变得躁动，袭击靠得太近的旅人。\n森林把失窃归咎于所有“行者”，宝石不归还就不会平息。\n找到宝石，把它送还森林里最老的树。\n办完回来找我。")
            SetQBit(QBit(548)) -- Calm the trees in the Tularean Forest by speaking to the Oldest Tree then return to Lysander Sweet in the Bracada Desert.
            evt.SetNPCTopic(383, 0, 828) -- Lysander Sweet topic 0: Ranger Lord
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("[莱桑德皱眉]你已选择黑暗之路。\n我拒绝教你这种人——你只会拿我的课去达成自私目的。\n愿上天怜悯你的灵魂。")
        else
            evt.SetMessage("我很想当你的老师——真的想，可我不确定你是不是那块当游骑领主的料。\n很快你就得做一次心灵的抉择。\n你若选光明之路，回来找我。\n能当你的老师是我的荣幸。")
        end
        return
    elseif IsQBitSet(QBit(1579)) then -- Promoted to Honorary Hunter
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("看来你也许能干我心里的活儿。\n游骑领主面对的根本任务是照料这片土地。\n近来，偷猎者从图拉林森林盗走了一块叫做“森林之心”的魔法宝石。\n森林变得躁动，袭击靠得太近的旅人。\n森林把失窃归咎于所有“行者”，宝石不归还就不会平息。\n找到宝石，把它送还森林里最老的树。\n办完回来找我。")
            SetQBit(QBit(548)) -- Calm the trees in the Tularean Forest by speaking to the Oldest Tree then return to Lysander Sweet in the Bracada Desert.
            evt.SetNPCTopic(383, 0, 828) -- Lysander Sweet topic 0: Ranger Lord
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("[莱桑德皱眉]你已选择黑暗之路。\n我拒绝教你这种人——你只会拿我的课去达成自私目的。\n愿上天怜悯你的灵魂。")
        else
            evt.SetMessage("我很想当你的老师——真的想，可我不确定你是不是那块当游骑领主的料。\n很快你就得做一次心灵的抉择。\n你若选光明之路，回来找我。\n能当你的老师是我的荣幸。")
        end
    else
        evt.SetMessage("[莱桑德轻轻摇头微笑]太早了，心急的小家伙。\n我只训练最高阶的学生。\n等你达到猎人身份再来找我。")
    end
end)

RegisterGlobalEvent(828, nil, function()
    if IsQBitSet(QBit(553)) then -- Solved Tree quest
        evt.SetMessage("你归还了心石，做了件好事。\n森林如今安静了，不再袭击旅人。\n你大概救了许多人的命。\n为酬谢你对大地与光明的效劳，我特此把你们中间所有猎人晋升为游骑领主，把所有荣誉猎人封为荣誉游骑领主！")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 31) then
                SetValue(ClassId, 33)
                SetQBit(QBit(1580)) -- Promoted to Ranger Lord
                AddValue(Experience, 80000)
            else
                SetQBit(QBit(1581)) -- Promoted to Honorary Ranger Lord
                AddValue(Experience, 40000)
            end
        end
        ClearQBit(QBit(548)) -- Calm the trees in the Tularean Forest by speaking to the Oldest Tree then return to Lysander Sweet in the Bracada Desert.
        SubtractValue(ReputationInCurrentLocation, 10)
        evt.ForPlayer(Players.All)
        evt.SetNPCTopic(383, 0, 0) -- Lysander Sweet topic 0 cleared
        evt.SetNPCGreeting(383, 180) -- Lysander Sweet greeting: Your good works have served the forest well. And, I can see, the experience has served you well in turn. May you continue to reap the rewards of your good deeds, my friends!
    elseif IsQBitSet(QBit(552)) then -- Talked to the Oldest Tree
        evt.SetMessage("你已和树谈过，如今对失窃一事知道得和我一样多了。\n你若设法找到宝石，直接送去给树，然后再来见我。")
    else
        evt.SetMessage("你要是想不出从哪儿入手，就该去找森林里最老的树。\n它该在埃里的皮尔庞特郊外某处。\n最老的树会说话，也许知道有用的线索。\n你想听什么它都乐意告诉你，外加一大堆别的。\n你会看到的。")
    end
end)

RegisterGlobalEvent(829, nil, function()
    evt.SetMessage("以为自己能进步？\n我有一场考验给你。\n猎人要懂森林，猎人要魔法与刀剑同样娴熟。\n最好的老师是仙灵。\n埃里北部有一座仙灵丘。\n想办法进去，仙灵会赐魔法给你们中间真正的游骑兵，也就是说他们将晋升为猎人。\n其余人等为荣誉猎人。")
    SetQBit(QBit(549)) -- Solve the secret to the entrance of the Faerie Mound in Avlee and speak to the Faerie King.
    evt.SetNPCTopic(384, 0, 830) -- Ebednezer Sower topic 0: Hunter
end)

RegisterGlobalEvent(830, nil, function()
    evt.SetMessage("被仙灵耍了？[埃比尼泽窃笑，接着为自己的机智放声大笑]被耍了？\n仙灵？\n哈哈哈！\n懂吗？\n被耍……你知道……啊哈哈哈。\n也许不懂。\n好吧，我已经告诉你们怎么成为猎人了。\n进埃里的仙灵丘去。\n现在，别烦我！\n")
end)

RegisterGlobalEvent(831, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("啊！\n我都能闻到你身上自以为是的臭味！\n离我远点！\n去，走开！")
        return
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("当赏金猎人胜过当普通老猎人，是吧？\n这场考验比仙灵丘那个主意还简单，你也不用费那么多脑子。\n你有没有注意到，市政厅总在找人替他们杀怪物？\n你要做的就是从各市政厅攒满 10000 金币赏金。\n办完回来找我，我就晋升你们为赏金猎人。\n")
        SetQBit(QBit(550)) -- Collect 10,000 gold worth of bounties from the Bounty Hunts in the town halls, then return to Ebednezer Sower in the Tularean Forest.
        evt.SetNPCTopic(384, 0, 832) -- Ebednezer Sower topic 0: Bounty Hunter
    else
        evt.SetMessage("我就直说了。\n我不觉得我喜欢你。\n你得向我证明你有点价值。\n很快，你将必须选择追随黑暗之路还是光明之路。\n你若选光明，就别再来跟我说话。\n明白吗？")
        return
    end
end)

RegisterGlobalEvent(832, nil, function()
    if not IsAtLeast(NumBounties, 10000) then
        evt.SetMessage("还不行，不够格！\n你得攒更多赏金，更重要的是，杀更多生物。\n那里面可有不少痛快的乐子。\n杀人，你懂的。")
        return
    end
    evt.SetMessage("怎么样，感觉如何？\n杀了那么些？\n嗯。\n嘿。\n你够格了，朋友们。\n你绝对够格。\n你们中间所有猎人如今都是赏金猎人了，所有荣誉猎人封为荣誉赏金猎人！\n干得好。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 31) then
            SetValue(ClassId, 32)
            SetQBit(QBit(1582)) -- Promoted to Bounty Hunter
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1583)) -- Promoted to Honorary Bounty Hunter
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(550)) -- Collect 10,000 gold worth of bounties from the Bounty Hunts in the town halls, then return to Ebednezer Sower in the Tularean Forest.
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(384, 0, 0) -- Ebednezer Sower topic 0 cleared
    evt.SetNPCGreeting(384, 182) -- Ebednezer Sower greeting: Bounty Hunters. [Ebednezer smiles slowly and evilly] Now THERE'S a job! Yes sir. Get things done righteo quick, I'll venture. Heh.
end)

RegisterGlobalEvent(833, nil, function()
    evt.SetMessage("来我门前求魔法？\n你本就拥有它，只要你知道往哪儿看。\n我把这话告诉一些人，他们仍然看不见，尽管它明明白白就在眼前。\n你们中间那些普通游骑兵如今是猎人了，其余人等不过是荣誉猎人。\n能敲开我这扇门的，才算聪明！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 30) then
            SetValue(ClassId, 31)
            SetQBit(QBit(1578)) -- Promoted to Hunter
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1579)) -- Promoted to Honorary Hunter
            AddValue(Experience, 15000)
        end
    end
    ClearQBit(QBit(549)) -- Solve the secret to the entrance of the Faerie Mound in Avlee and speak to the Faerie King.
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(384, 0, 831) -- Ebednezer Sower topic 0: Bounty Hunter
    evt.SetNPCTopic(391, 0, 0) -- Faerie King topic 0 cleared
end)
RegisterCanShowTopic(833, function()
    evt._BeginCanShowTopic(833)
    local visible = true
    if IsQBitSet(QBit(549)) then -- Solve the secret to the entrance of the Faerie Mound in Avlee and speak to the Faerie King.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(834, nil, function()
    evt.SetMessage("窃贼深入我体内，取走了我的心。\n藤蔓传话，他们藏在泰塔利亚的雇佣兵公会里。\n我们想挤碎他们，可他们够不着。\n要用行者才能捉住行者。\n替我们抓住窃贼。\n好吗？")
    SetQBit(QBit(551)) -- Find the Heart of the Forest in the Mercenary Guild in Tatalia and return it to the Oldest Tree in the Tularean Forest.
    evt.SetNPCTopic(392, 0, 835) -- The Oldest Tree topic 0: Heart of the Wood
end)
RegisterCanShowTopic(834, function()
    evt._BeginCanShowTopic(834)
    local visible = true
    if IsQBitSet(QBit(548)) then -- Calm the trees in the Tularean Forest by speaking to the Oldest Tree then return to Lysander Sweet in the Bracada Desert.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(835, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1402) then -- Heart of the Wood
        evt.SetMessage("噢，森林还在生气。\n藤蔓传话，窃贼还没离开藏身处。\n你会替我们抓住窃贼的，对吧？")
        return
    end
    evt.SetMessage("啊！\n[树幸福地叹息]\n你拿到心了！\n森林欢唱！\n今夜我们将咏唱祖先之歌。\n你愿留下来与我们一同咏唱吗？")
    RemoveItem(1402) -- Heart of the Wood
    ClearQBit(QBit(729)) -- Heart of Wood - I lost it
    AddValue(Experience, 5000)
    ClearQBit(QBit(551)) -- Find the Heart of the Forest in the Mercenary Guild in Tatalia and return it to the Oldest Tree in the Tularean Forest.
    SetQBit(QBit(553)) -- Solved Tree quest
    evt.SetNPCTopic(392, 0, 0) -- The Oldest Tree topic 0 cleared
    evt.SetNPCGreeting(392, 186) -- The Oldest Tree greeting: Ohhhhh�It's the Walkers from the South. I remember you! You returned the Heart. The trees are very happy, and promise not to kill any more walkers. Come and talk to me any time.
    SetAward(Award(23)) -- Retrieved the Heart of the Wood
    evt.SetMonGroupBit(61, MonsterBits.Hostile, 0)
end)

RegisterGlobalEvent(836, nil, function()
    if IsQBitSet(QBit(1607)) then -- Promoted to Priest
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("牧师们。\n你们来找我，是求我做你们光明之路上的引路人。\n但要警告你们，要学它的道，你们必须先懂自己灵魂的道。\n我本建议我们就此冥想一阵，可看你们样子是急着走。\n布拉卡达南边有座叫埃弗蒙的岛，岛上有古老的太阳神庙与月亮神庙。\n两座庙里都住着两教的残余，曾经荣耀的教会沦落为争夺一座小岛的两座古神庙。\n太阳教会是我们当今信仰——光明之路——的发源宗教。\n我建议我们帮他们一把，把天平倒向太阳教会。\n用代达罗斯·福克派你去找来、用于当牧师的那张地图，说服一位船长送你们上岛。\n到了那里，在月亮教会净化祭坛，借此给予太阳教会援助与慰藉。\n这会大大削弱月亮教团，使太阳教会能在战斗中压倒他们。\n办完回来找我。\n")
            SetQBit(QBit(554)) -- Purify the Altar of Evil in the Temple of the Moon on Evenmorn Isle then return to Rebecca Devine in Celeste.
            evt.SetNPCTopic(385, 0, 837) -- Rebecca Devine topic 0: Priest of Light
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("你想晋升牧师以上，找错人了。\n我清楚你选择追随黑暗之路，我与你毫无瓜葛。")
        else
            evt.SetMessage("你若想追随光明之路，首先必须正式选择它。\n很快就会有人请你做出选择，道路自会清晰。\n在那之前，我不能做你的引路人。")
        end
        return
    elseif IsQBitSet(QBit(1608)) then -- Promoted to Honorary Priest
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("牧师们。\n你们来找我，是求我做你们光明之路上的引路人。\n但要警告你们，要学它的道，你们必须先懂自己灵魂的道。\n我本建议我们就此冥想一阵，可看你们样子是急着走。\n布拉卡达南边有座叫埃弗蒙的岛，岛上有古老的太阳神庙与月亮神庙。\n两座庙里都住着两教的残余，曾经荣耀的教会沦落为争夺一座小岛的两座古神庙。\n太阳教会是我们当今信仰——光明之路——的发源宗教。\n我建议我们帮他们一把，把天平倒向太阳教会。\n用代达罗斯·福克派你去找来、用于当牧师的那张地图，说服一位船长送你们上岛。\n到了那里，在月亮教会净化祭坛，借此给予太阳教会援助与慰藉。\n这会大大削弱月亮教团，使太阳教会能在战斗中压倒他们。\n办完回来找我。\n")
            SetQBit(QBit(554)) -- Purify the Altar of Evil in the Temple of the Moon on Evenmorn Isle then return to Rebecca Devine in Celeste.
            evt.SetNPCTopic(385, 0, 837) -- Rebecca Devine topic 0: Priest of Light
        elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("你想晋升牧师以上，找错人了。\n我清楚你选择追随黑暗之路，我与你毫无瓜葛。")
        else
            evt.SetMessage("你若想追随光明之路，首先必须正式选择它。\n很快就会有人请你做出选择，道路自会清晰。\n在那之前，我不能做你的引路人。")
        end
    else
        evt.SetMessage("你们想成为光明牧师，必须先成为牧师。\n我没时间训练牧师，可我那死对头代达罗斯·福克有。\n别担心，他会公正地晋升你们，即使你们不愿追随他所代表的那条可怕的黑暗之路。")
    end
end)

RegisterGlobalEvent(837, nil, function()
    if not IsQBitSet(QBit(574)) then -- Purified the Altar of Evil. Priest of Light promo quest.
        evt.SetMessage("你们必须前往埃弗蒙岛，净化月亮教会里的黑暗祭坛。\n只有那时我才能晋升你们为光明牧师。")
        return
    end
    evt.SetMessage("牧师们，你们的勇敢极大地推进了我们的信仰。\n我怀着喜悦之心，特此把所有牧师晋升为光明牧师，把所有荣誉牧师封为荣誉光明牧师。\n非常感谢你们的帮助！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 5) then
            SetValue(ClassId, 6)
            SetQBit(QBit(1609)) -- Promoted to Priest of the Light
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1610)) -- Promoted to Honorary Priest of the Light
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(554)) -- Purify the Altar of Evil in the Temple of the Moon on Evenmorn Isle then return to Rebecca Devine in Celeste.
    AddValue(Gold, 10000)
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(385, 0, 0) -- Rebecca Devine topic 0 cleared
    evt.SetNPCGreeting(385, 188) -- Rebecca Devine greeting: Sunlight Reveal, my fellow Priests. I am so proud to have you as members of our faith!
end)

RegisterGlobalEvent(838, nil, function()
    evt.SetMessage("[福克给你一个祖父般的微笑]你们也许有志当牧师？\n我可以帮你们，只要你们帮我。\n布拉卡达南边有座岛，岛上立着一座古神庙，我需要重新找到它。\n我想埃拉西亚西边的海盗一定知道岛在哪儿。\n埃拉西亚海军相当孱弱，一直没能把他们从潮穴的藏身之处根除。\n也许海盗手里有地图。\n你们若把地图带给我，我立刻晋升你们为牧师。")
    SetQBit(QBit(555)) -- Find the lost pirate map in the Tidewater Caverns in Tatalia and return to Daedalus Falk in the Deyja Moors.
    evt.SetNPCTopic(386, 0, 839) -- Daedalus Falk topic 0: Priest
end)

RegisterGlobalEvent(839, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1485) then -- Map to Evenmorn Island
        evt.SetMessage("若有一张标明那座岛位置的地图，地图一定在埃拉西亚西部的潮穴里。\n等你们把地图带给我，我就很乐意把你们全体晋升为牧师。")
        return
    end
    evt.SetMessage("地图！\n你找到了！\n[福克看着地图，指着那座岛]在那儿。\n自从太阳教会与月亮教会一个多世纪前开始争斗，这座岛就一直笼罩在雾里。\n地图你留着——我如今有了坐标，需要时找那地方不会有困难。\n我很自豪地宣布你们中间的牧师为正式牧师，其余人等为荣誉牧师。\n非常感谢你们的出色工作！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 4) then
            SetValue(ClassId, 5)
            SetQBit(QBit(1607)) -- Promoted to Priest
            AddValue(Experience, 30000)
        else
            SetQBit(QBit(1608)) -- Promoted to Honorary Priest
            AddValue(Experience, 15000)
        end
    end
    ClearQBit(QBit(555)) -- Find the lost pirate map in the Tidewater Caverns in Tatalia and return to Daedalus Falk in the Deyja Moors.
    AddValue(Gold, 5000)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    RemoveItem(1485) -- Map to Evenmorn Island
    ClearQBit(QBit(730)) -- Map to Evenmorn - I lost it
    evt.SetNPCTopic(386, 0, 840) -- Daedalus Falk topic 0: Priest of Dark
    SetQBit(QBit(576)) -- Activate boat to area 9. Priest promo quest
end)

RegisterGlobalEvent(840, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("你竟敢出现在我面前侮辱我？\n你已选择光明之路，永远断绝了我做你老师的可能。\n走吧，去别处沉浸在你的软弱里。")
        return
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("牧师们。\n[福克冷冷地注视你]好吧，你们总算认清了黑暗之路的智慧。\n永远不要后悔自己的决定，永远不要回头。\n布拉卡达南边有座叫埃弗蒙的岛，岛上有古老的太阳神庙与月亮神庙。\n两座庙里都住着两教的残余，曾经荣耀的教会沦落为争夺一座小岛的两座古神庙。\n月亮教会是我们当今信仰——黑暗之路——的发源宗教。\n我建议我们帮他们一把，把天平倒向月亮教会。\n用我派你们去找来的那张地图，说服一位船长送你们上岛。\n到了那里，亵渎太阳教会的祭坛，借此给予月亮教会援助与慰藉。\n这会大大削弱太阳教团，使月亮教会能在战斗中压倒他们。\n办完回来找我。\n")
        SetQBit(QBit(556)) -- Deface the Altar of Good in the Temple of the Sun on Evenmorn Isle then return to Daedalus Falk in the Deyja Moors.
        evt.SetNPCTopic(386, 0, 841) -- Daedalus Falk topic 0: Priest of Dark
    else
        evt.SetMessage("你若想追随黑暗之路，首先必须正式选择它。\n很快就会有人请你做出选择，道路自会清晰。\n在那之前，我不能做你的引路人。")
        return
    end
end)

RegisterGlobalEvent(841, nil, function()
    if not IsQBitSet(QBit(575)) then -- Defaced the Altar of Good. Priest of Dark promo quest.
        evt.SetMessage("你们必须前往埃弗蒙岛，亵渎太阳教会里的光明祭坛。\n只有那时我才能晋升你们为黑暗牧师。")
        return
    end
    evt.SetMessage("牧师们，你们的勇敢极大地推进了我们的信仰。\n我很乐意特此把所有牧师晋升为黑暗牧师，把所有荣誉牧师封为荣誉黑暗牧师。\n非常感谢你们的帮助！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 5) then
            SetValue(ClassId, 7)
            SetQBit(QBit(1611)) -- Promoted to Priest of the Dark
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1612)) -- Promoted to Honorary Priest of the Dark
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(556)) -- Deface the Altar of Good in the Temple of the Sun on Evenmorn Isle then return to Daedalus Falk in the Deyja Moors.
    AddValue(Gold, 10000)
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(386, 0, 0) -- Daedalus Falk topic 0 cleared
    evt.SetNPCGreeting(386, 190) -- Daedalus Falk greeting: Shadow Conceal, Brethren. Congratulations on your promotion to Priests of the Dark.
end)

RegisterGlobalEvent(842, nil, function()
    evt.SetMessage("你们想成为法师，该找的人确实是我。\n我的每个学生在我封他为法师之前，都必须完成一个课题。\n今年的课题是造一个魔像。\n从这儿到埃里，各地散落着零件。\n你需要四肢齐全，外加躯干和头。\n特别注意头从哪儿来——去年夏天我一个学生做头时出了错，把那只好坏的头当玩笑送了人。\n零件凑齐后来找我。\n那时我就晋升你们为法师，并为你们的魔像注入生命。\n好了，上路吧，玩得开心！")
    SetQBit(QBit(557)) -- Collect the six golem pieces and construct a complete golem, then return to Thomas Grey in the School of Sorcery.
    SetQBit(QBit(1686)) -- Replacement for NPCs �56 ver. 7
    evt.SetNPCTopic(387, 0, 843) -- Thomas Grey topic 0: Wizard
end)

RegisterGlobalEvent(843, nil, function()
    if IsQBitSet(QBit(586)) then -- Finished constructing Golem with normal head
        evt.SetMessage("[你骄傲地向灰大师展示组装好的魔像，他赞许地点头]干得好。\n头看着还行，可谁也说不准……好吧，干得漂亮！\n显然，你们够格当法师了。\n你们中间所有巫师如今是法师，所有非巫师如今是荣誉法师！\n[灰大师花了一阵施放为魔像注入生命的法术]他归你们了！\n把他带回你们城堡，想放哪儿就放哪儿。\n他会毫不留情地袭击入侵者。\n")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 42) then
                SetValue(ClassId, 43)
                SetQBit(QBit(1619)) -- Promoted to Wizard
                AddValue(Experience, 30000)
            else
                SetQBit(QBit(1620)) -- Promoted to Honorary Wizard
                AddValue(Experience, 15000)
            end
        end
        ClearQBit(QBit(557)) -- Collect the six golem pieces and construct a complete golem, then return to Thomas Grey in the School of Sorcery.
        evt.ForPlayer(Players.All)
        evt.SetNPCTopic(387, 0, 844) -- Thomas Grey topic 0: Archmage
        evt.SetNPCGreeting(395, 199) -- Golem greeting: I am yours to command, master.
        SetQBit(QBit(558)) -- Player Castle. Golem should appear in castle bit.
        ClearQBit(QBit(731)) -- Golem Head - I lost it
        ClearQBit(QBit(732)) -- Abby normal head - I lost it
    elseif IsQBitSet(QBit(585)) then -- Finished constructing Golem with Abbey normal head
        evt.SetMessage("[你骄傲地向灰大师展示组装好的魔像，他赞许地点头]干得好。\n头看着还行，可谁也说不准……好吧，干得漂亮！\n显然，你们够格当法师了。\n你们中间所有巫师如今是法师，所有非巫师如今是荣誉法师！\n[灰大师花了一阵施放为魔像注入生命的法术]他归你们了！\n把他带回你们城堡，想放哪儿就放哪儿。\n他会毫不留情地袭击入侵者。\n")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 42) then
                SetValue(ClassId, 43)
                SetQBit(QBit(1619)) -- Promoted to Wizard
                AddValue(Experience, 30000)
            else
                SetQBit(QBit(1620)) -- Promoted to Honorary Wizard
                AddValue(Experience, 15000)
            end
        end
        ClearQBit(QBit(557)) -- Collect the six golem pieces and construct a complete golem, then return to Thomas Grey in the School of Sorcery.
        evt.ForPlayer(Players.All)
        evt.SetNPCTopic(387, 0, 844) -- Thomas Grey topic 0: Archmage
        evt.SetNPCGreeting(395, 199) -- Golem greeting: I am yours to command, master.
        SetQBit(QBit(558)) -- Player Castle. Golem should appear in castle bit.
        ClearQBit(QBit(731)) -- Golem Head - I lost it
        ClearQBit(QBit(732)) -- Abby normal head - I lost it
    else
        evt.SetMessage("学生们，零件必须全部凑齐、正确组装，我才能为它注入生命！\n不完整的魔像我可没法活化。")
        return
    end
end)

RegisterGlobalEvent(844, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("欢迎回来，学生们。\n魔像那一课只是练习，可要晋升大法师，你们真得为这一行做点事。\n传说中的“神之恩典”法术抄本极其稀有，不幸的是学校一本也没有。\n这门法术向来运气不佳。\n它自古就有，却从未落入我们手中。\n总是差一步，我们常派公会成员去找，可无一人成功。\n有时他们到手了，却在归途中弄丢；有时书像凭空消失，二十年后又在某个古老地城或荒岛上重现。\n眼下我们认为它在深渊的繁殖区。\n找到法术，带回来。\n打破这个诅咒！")
        SetQBit(QBit(559)) -- Find the Book of Divine Intervention in the Breeding Zone in the Pit and return it to Thomas Grey in the School of Sorcery.
        evt.SetNPCTopic(387, 0, 845) -- Thomas Grey topic 0: Archmage
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("我的学生，你已选择黑暗。\n我不再教你。")
    else
        evt.SetMessage("大法师训练只留给献身光明之路的人。\n向我证明你选对了路，我将很自豪做你的老师。")
    end
end)

RegisterGlobalEvent(845, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1289) then -- Divine Intervention
        evt.SetMessage("我料到找书会有麻烦，所以才派你们去。\n我知道你们能完成这个任务。\n继续努力！")
        return
    end
    evt.SetMessage("书！\n书！\n[灰大师捂着耳朵，高兴得团团转]你们做到了！\n哦，多美妙的一天！\n我真为你们骄傲！\n你们都是大法师了！\n当然，你们若原本不是法师，这就只是荣誉头衔，可谁在乎呢？\n你们找到了书！\n[大师把书放在桌上一本空白书旁。\n两本书同时翻开，羽毛笔从桌上飘起，开始在新书上誊抄文字]抄本你们留着，布拉卡达和塞莱斯特的光明公会里，你们很快会看到更多抄本。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 43) then
            SetValue(ClassId, 46)
            SetQBit(QBit(1621)) -- Promoted to Archmage
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1622)) -- Promoted to Honorary Archmage
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(559)) -- Find the Book of Divine Intervention in the Breeding Zone in the Pit and return it to Thomas Grey in the School of Sorcery.
    ClearQBit(QBit(738)) -- Book of Divine Intervention - I lost it
    AddValue(Gold, 10000)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(387, 0, 0) -- Thomas Grey topic 0 cleared
    evt.SetNPCGreeting(387, 192) -- Thomas Grey greeting 192
end)

RegisterGlobalEvent(846, nil, function()
    if IsQBitSet(QBit(1619)) then -- Promoted to Wizard
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("不怕死？\n我可以为任何法师举行仪式。\n你需要一个灵魂罐。\n多年前，法师们从尼根运往迪雅的途中劫走了一批罐子。\n罐子极难摧毁，所以他们把它藏了起来，以为我们永远找不到。\n我们走运的是，死人确实会说话。\n事实上，比活人还强——死人不忘事、不开口拒绝、也不撒谎。\n于是我们找到了埋罐子的人，让他死了一回。\n他死后非常配合，说他替塞莱斯特的法师把它们藏在迷雾之墙某处。\n把这些罐子取回来，我就为你们中间所有法师举行仪式。\n其余人等可封为荣誉巫妖，聊表谢意，谢你们替我们找回多出来的罐子。")
            SetQBit(QBit(560)) -- Retrieve the lich jars from the Proving Grounds in Celeste and bring them back to Halfgild Wynac in the Pit.
            evt.SetNPCTopic(388, 0, 847) -- Halfgild Wynac topic 0: Lich
        elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("你既已选择光明之路，就不适合成为巫妖。\n仪式会拒绝你，你会真的死去。\n你要的是这个，当然也不需要我的帮助……")
        else
            evt.SetMessage("唯有黑暗之路的追随者才能成为巫妖。\n你尚未选择道路。\n选了黑暗再回来。")
        end
        return
    elseif IsQBitSet(QBit(1620)) then -- Promoted to Honorary Wizard
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("不怕死？\n我可以为任何法师举行仪式。\n你需要一个灵魂罐。\n多年前，法师们从尼根运往迪雅的途中劫走了一批罐子。\n罐子极难摧毁，所以他们把它藏了起来，以为我们永远找不到。\n我们走运的是，死人确实会说话。\n事实上，比活人还强——死人不忘事、不开口拒绝、也不撒谎。\n于是我们找到了埋罐子的人，让他死了一回。\n他死后非常配合，说他替塞莱斯特的法师把它们藏在迷雾之墙某处。\n把这些罐子取回来，我就为你们中间所有法师举行仪式。\n其余人等可封为荣誉巫妖，聊表谢意，谢你们替我们找回多出来的罐子。")
            SetQBit(QBit(560)) -- Retrieve the lich jars from the Proving Grounds in Celeste and bring them back to Halfgild Wynac in the Pit.
            evt.SetNPCTopic(388, 0, 847) -- Halfgild Wynac topic 0: Lich
        elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("你既已选择光明之路，就不适合成为巫妖。\n仪式会拒绝你，你会真的死去。\n你要的是这个，当然也不需要我的帮助……")
        else
            evt.SetMessage("唯有黑暗之路的追随者才能成为巫妖。\n你尚未选择道路。\n选了黑暗再回来。")
        end
    else
        evt.SetMessage("你们还没成为法师呢，就没资格当巫妖。\n够格之前别来烦我。")
    end
end)

RegisterGlobalEvent(847, nil, function()
    local hasAllLichJars = true
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if not HasItem(1417) then -- Lich Jar
            hasAllLichJars = false
            break
        end
    end
    if not hasAllLichJars then
        evt.SetMessage("我没有多余的罐子举行仪式。\n你们带罐子回来之前，我不可能晋升你们。\n记住，你们每人都必须有一个罐子才能晋升。")
        return
    end
    evt.SetMessage("罐子。\n好——的——。\n你们帮了我们大忙。\n现在举行仪式。\n[巫妖拔出一把刀，走近你]\n一点也不疼！\n[仪式其实疼得厉害，要持续好几个小时。\n结束后，巫妖再次开口]\n好了，现在成了。\n你们中间原本是法师的，如今当然是巫妖了。\n原本不是的，我感谢你们归还罐子，并称你们为“荣誉巫妖”。\n记住，巫妖旅行时必须随身带着灵魂罐。\n你们不能与罐子分开太久，否则会真的死去。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 43) then
            SetValue(ClassId, 45)
            SetQBit(QBit(1623)) -- Promoted to Lich
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1624)) -- Promoted to Honorary Lich
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(560)) -- Retrieve the lich jars from the Proving Grounds in Celeste and bring them back to Halfgild Wynac in the Pit.
    ClearQBit(QBit(741)) -- Lich Jar (Empty) - I lost it
    AddValue(Gold, 7500)
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    while HasItem(1417) do -- Lich Jar
        RemoveItem(1417) -- Lich Jar
    end
    evt.SetNPCTopic(388, 0, 0) -- Halfgild Wynac topic 0 cleared
    evt.SetNPCGreeting(388, 194) -- Halfgild Wynac greeting 194

end)

RegisterGlobalEvent(848, nil, function()
    evt.SetMessage("德鲁伊的晋升很简单。\n你必须前往我们几个世纪前为自然建起的三座古神庙，在其中心祈祷。\n它们在泰塔利亚、埃弗蒙岛和埃里，样子是石圈，中心有一座水坛。\n具体在哪儿我不说，探索周围土地本身就是过程的一部分。\n等你拜遍三座石圈，回来向我详述你的经历。")
    SetQBit(QBit(561)) -- Visit the three stonehenge monoliths in Tatalia, the Evenmorn Islands, and Avlee, then return to Anthony Green in the Tularean Forest.
    evt.SetNPCTopic(389, 0, 849) -- Anthony Green topic 0: Great Druid
end)

RegisterGlobalEvent(849, nil, function()
    if IsQBitSet(QBit(562)) then -- Visited all stonehenges
        evt.SetMessage("我只需看看你们的眼睛，就知道你们去过哪儿。\n你们见过石圈，它们已在你们身上留下印记。\n告诉你们中间所有德鲁伊如今是高级德鲁伊，不过是走个形式。\n告诉其余人等如今是荣誉德鲁伊，是为报答你们对我和我信仰的敬意。\n")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 12) then
                SetValue(ClassId, 13)
                SetQBit(QBit(1613)) -- Promoted to Great Druid
                AddValue(Experience, 30000)
            else
                SetQBit(QBit(1614)) -- Promoted to Honorary Great Druid
                AddValue(Experience, 15000)
            end
        end
        ClearQBit(QBit(561)) -- Visit the three stonehenge monoliths in Tatalia, the Evenmorn Islands, and Avlee, then return to Anthony Green in the Tularean Forest.
        SubtractValue(ReputationInCurrentLocation, 5)
        evt.ForPlayer(Players.All)
        evt.SetNPCTopic(389, 0, 850) -- Anthony Green topic 0: Arch Druid
    elseif IsQBitSet(QBit(563)) then -- Visited stonehenge 1 (area 9)
        evt.SetMessage("你找到一座石圈了！\n很好，但你必须找齐三座，才够资格晋升。\n记住，三座石圈，然后回来找我。")
        return
    elseif IsQBitSet(QBit(564)) then -- Visited stonehenge 2 (area 13)
        evt.SetMessage("你找到一座石圈了！\n很好，但你必须找齐三座，才够资格晋升。\n记住，三座石圈，然后回来找我。")
        return
    elseif IsQBitSet(QBit(565)) then -- Visited stonehenge 3 (area 14)
        evt.SetMessage("你找到一座石圈了！\n很好，但你必须找齐三座，才够资格晋升。\n记住，三座石圈，然后回来找我。")
    else
        evt.SetMessage("拜过石圈，再回来找我。\n这就是过程。\n")
    end
end)

RegisterGlobalEvent(850, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("要被封为高级德鲁伊，你必须为大地效力。\n我知道一件你能做的事。\n在石头城上方那片矮人安葬死者的土地上，有佐卡尔四世的古墓。\n他在尼根入侵埃拉西亚时，为保卫石头城战死。\n他的遗骸始终未被寻回，仍躺在那些隧道里。\n\n取回他的遗骨，放进他古墓中的棺里。\n此事一了，国王得以安息，大地也将安息。\n完成这桩效力后回来找我，我将举行升阶仪式，封你们为高级德鲁伊。")
        SetQBit(QBit(566)) -- Retrieve the bones of the Dwarf King from the tunnels between Stone City and Nighon and place them in their proper resting place in the Barrow Downs, then return to Anthony Green in the Tularean Forest.
        evt.SetNPCTopic(389, 0, 851) -- Anthony Green topic 0: Arch Druid
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("黑暗的仆从们，我很抱歉先前晋升了你们。\n我真羞愧，直到为时已晚才察觉你们灵魂中的黑暗。\n离开我。")
    else
        evt.SetMessage("我献身于光明的效劳。\n在你们像我一样虔诚之前，我不会再晋升你们。\n选了光明再回来找我。")
    end
end)

RegisterGlobalEvent(851, nil, function()
    if not IsQBitSet(QBit(577)) then -- Barrow downs. Returned the bones of the Dwarf King. Arch Druid promo quest.
        evt.SetMessage("这桩效力不易，但必须完成。\n记住，你们必须把佐卡尔四世的遗骨从石头城与尼根之间隧道里的所在，带到一座秘密矮人古墓中佐卡尔的棺里。\n只有那时我才能举行升阶仪式，晋升你们。")
        return
    end
    evt.SetMessage("[绿大师为你们的成就喜不自胜]你们归还国王遗骨时，我感到国王的灵魂回到了死者之地。\n大地长舒了一口气——你们感觉到了吗？\n升阶仪式完成。\n我很高兴把你们中间所有高级德鲁伊晋升为大德鲁伊，把所有荣誉高级德鲁伊封为荣誉大德鲁伊。\n这是多么快乐的一天！\n你们的功绩会被铭记！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 13) then
            SetValue(ClassId, 15)
            SetQBit(QBit(1615)) -- Promoted to Arch Druid
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1616)) -- Promoted to Honorary Arch Druid
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(566)) -- Retrieve the bones of the Dwarf King from the tunnels between Stone City and Nighon and place them in their proper resting place in the Barrow Downs, then return to Anthony Green in the Tularean Forest.
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    evt.SetNPCTopic(389, 0, 0) -- Anthony Green topic 0 cleared
    evt.SetNPCGreeting(389, 196) -- Anthony Green greeting 196
end)

RegisterGlobalEvent(852, nil, function()
    if IsQBitSet(QBit(1613)) then -- Promoted to Great Druid
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("对有些人来说成为巫师是简单的过程，对另一些人却几乎不可能。\n你需要找一只与你性情相合的使魔。\n使魔会帮你凝聚魔法、集中精神。\n有时一只使魔可以共享，有时不行。\n魔法效应除了高级德鲁伊——一个已与自然调谐的人——谁也察觉不到。\n现在，让我看看你们需要哪种使魔……[托尔拿起一块雕工繁复的宝石，透过它端详你。\n他皱起眉。]\n嗯。\n好吧，好消息是你们需要同一只使魔，找到它后，你们会非常强大。\n坏消息是你们需要一条龙形使魔。\n你们必须找一颗龙蛋。\n带回来，我来孵化它，施放使魔法术。\n龙宝宝会与你们全体相互印记。\n你们也许能在巨人领地的某个龙穴里找到一颗蛋。\n不过，小心龙妈妈。")
            SetQBit(QBit(567)) -- Retrieve the dragon egg from the Dragon Cave in the Land of the Giants and return it to Tor Anwyn in Mount Nighon.
            evt.SetNPCTopic(390, 0, 853) -- Tor Anwyn topic 0: Warlock
        elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("嗯——。\n[托尔仔细打量你]\n不行。\n教不了你。\n你选了光明之路。\n我都能从你身上闻到。\n我理解你的选择，但我知道，一旦你走上那条路，我们任何法术或仪式都无法晋升你。\n抱歉。")
        else
            evt.SetMessage("尽管我喜欢把巫师视作暮光或黎明之路的追随者，严格来说我们是黑暗之路的追随者。\n你必须先成为黑暗的虔诚信徒，我才能帮你。\n")
        end
        return
    elseif IsQBitSet(QBit(1614)) then -- Promoted to Honorary Great Druid
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            evt.SetMessage("对有些人来说成为巫师是简单的过程，对另一些人却几乎不可能。\n你需要找一只与你性情相合的使魔。\n使魔会帮你凝聚魔法、集中精神。\n有时一只使魔可以共享，有时不行。\n魔法效应除了高级德鲁伊——一个已与自然调谐的人——谁也察觉不到。\n现在，让我看看你们需要哪种使魔……[托尔拿起一块雕工繁复的宝石，透过它端详你。\n他皱起眉。]\n嗯。\n好吧，好消息是你们需要同一只使魔，找到它后，你们会非常强大。\n坏消息是你们需要一条龙形使魔。\n你们必须找一颗龙蛋。\n带回来，我来孵化它，施放使魔法术。\n龙宝宝会与你们全体相互印记。\n你们也许能在巨人领地的某个龙穴里找到一颗蛋。\n不过，小心龙妈妈。")
            SetQBit(QBit(567)) -- Retrieve the dragon egg from the Dragon Cave in the Land of the Giants and return it to Tor Anwyn in Mount Nighon.
            evt.SetNPCTopic(390, 0, 853) -- Tor Anwyn topic 0: Warlock
        elseif IsQBitSet(QBit(611)) then -- Chose the path of Light
            evt.SetMessage("嗯——。\n[托尔仔细打量你]\n不行。\n教不了你。\n你选了光明之路。\n我都能从你身上闻到。\n我理解你的选择，但我知道，一旦你走上那条路，我们任何法术或仪式都无法晋升你。\n抱歉。")
        else
            evt.SetMessage("尽管我喜欢把巫师视作暮光或黎明之路的追随者，严格来说我们是黑暗之路的追随者。\n你必须先成为黑暗的虔诚信徒，我才能帮你。\n")
        end
    else
        evt.SetMessage("我很想领你们走上成为巫师的路，可在你们成为高级德鲁伊之前，我做什么都没用。\n达到那种理解境界后再回来。")
    end
end)

RegisterGlobalEvent(853, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1449) then -- Dragon Egg
        evt.SetMessage("你得给我带一颗龙蛋，我才能孵化你们的使魔。\n这一步绕不过去。\n试着在巨人领地找一个龙穴——也许那儿能找到蛋。")
        return
    end
    evt.SetMessage("[托尔惊讶地看着你]你们真找到了一颗龙蛋！\n已经一个多世纪没有哪个巫师既需要又找到过龙形使魔了！\n这一定会写进史书，错不了！\n我的法术书！\n我需要我的书！\n啊，在这儿。\n[托尔照书吟唱咒语，然后轻敲蛋三下。\n蛋壳裂开，一只龙宝宝爬了出来]\n好了！\n哇，他可爱不可爱？\n恭喜！\n你们不再是普通的高级德鲁伊，而是巫师了！\n当然，你们若原本不是天生的高级德鲁伊，这只是荣誉头衔，但无论如何，值得骄傲。\n")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 13) then
            SetValue(ClassId, 14)
            SetQBit(QBit(1617)) -- Promoted to Warlock
            AddValue(Experience, 80000)
        else
            SetQBit(QBit(1618)) -- Promoted to Honorary Warlock
            AddValue(Experience, 40000)
        end
    end
    ClearQBit(QBit(567)) -- Retrieve the dragon egg from the Dragon Cave in the Land of the Giants and return it to Tor Anwyn in Mount Nighon.
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    RemoveItem(1449) -- Dragon Egg
    ClearQBit(QBit(739)) -- Dragon Egg - I lost it
    evt.SetNPCTopic(390, 0, 0) -- Tor Anwyn topic 0 cleared
    evt.SetNPCGreeting(389, 198) -- Anthony Green greeting 198
    SetQBit(QBit(1687)) -- Replacement for NPCs �57 ver. 7
end)

RegisterGlobalEvent(854, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(578)) then -- Placed Golem torso
        goto step_15
    end
    if HasItem(1441) then -- Golem chest
        SetQBit(QBit(578)) -- Placed Golem torso
        RemoveItem(1441) -- Golem chest
        ClearQBit(QBit(737)) -- Torso - I lost it
        evt.SetMessage("你把躯干准备好，与其余零件组装。")
        return
    end
    goto step_15
    ::step_15::
    if IsQBitSet(QBit(579)) then -- Placed Golem left leg
        goto step_24
    end
    if HasItem(1444) then -- Golem left leg
        RemoveItem(1444) -- Golem left leg
        ClearQBit(QBit(736)) -- Left leg - I lost it
        SetQBit(QBit(579)) -- Placed Golem left leg
        evt.SetMessage("你把左腿准备好，与其余零件组装。")
        return
    end
    goto step_24
    ::step_24::
    if IsQBitSet(QBit(580)) then -- Placed Golem right leg
        goto step_33
    end
    if HasItem(1445) then -- Golem right leg
        evt.SetMessage("你把右腿准备好，与其余零件组装。")
        RemoveItem(1445) -- Golem right leg
        ClearQBit(QBit(735)) -- Right leg - I lost it
        SetQBit(QBit(580)) -- Placed Golem right leg
        return
    end
    goto step_33
    ::step_33::
    if IsQBitSet(QBit(581)) then -- Placed Golem left arm
        goto step_42
    end
    if HasItem(1447) then -- Golem left arm
        evt.SetMessage("你把左臂准备好，与其余零件组装。")
        RemoveItem(1447) -- Golem left arm
        ClearQBit(QBit(734)) -- Left arm - I lost it
        SetQBit(QBit(581)) -- Placed Golem left arm
        return
    end
    goto step_42
    ::step_42::
    if IsQBitSet(QBit(582)) then -- Placed Golem left leg
        goto step_51
    end
    if HasItem(1446) then -- Golem right arm
        evt.SetMessage("你把右臂准备好，与其余零件组装。")
        RemoveItem(1446) -- Golem right arm
        ClearQBit(QBit(733)) -- Right arm - I lost it
        SetQBit(QBit(582)) -- Placed Golem left leg
        return
    end
    goto step_51
    ::step_51::
    if IsQBitSet(QBit(583)) then -- Placed Golem head
        goto step_71
    end
    if IsQBitSet(QBit(584)) then -- Placed Golem Abbey normal head
        goto step_71
    end
    if HasItem(1443) then -- Golem head
        evt.SetMessage("你把头准备好，与其余零件组装。")
        RemoveItem(1443) -- Golem head
        ClearQBit(QBit(731)) -- Golem Head - I lost it
        SetQBit(QBit(583)) -- Placed Golem head
        return
    end
    goto step_61
    ::step_61::
    if IsQBitSet(QBit(583)) then -- Placed Golem head
        goto step_71
    end
    if IsQBitSet(QBit(584)) then -- Placed Golem Abbey normal head
        goto step_71
    end
    if HasItem(1442) then -- Abbey Normal Golem Head
        evt.SetMessage("你把（带凹痕的）头准备好，与其余零件组装。")
        RemoveItem(1442) -- Abbey Normal Golem Head
        ClearQBit(QBit(732)) -- Abby normal head - I lost it
        SetQBit(QBit(584)) -- Placed Golem Abbey normal head
        return
    end
    goto step_92
    ::step_71::
    if IsQBitSet(QBit(578)) then -- Placed Golem torso
        goto step_73
    end
    goto step_92
    ::step_73::
    if IsQBitSet(QBit(579)) then -- Placed Golem left leg
        goto step_75
    end
    goto step_92
    ::step_75::
    if IsQBitSet(QBit(580)) then -- Placed Golem right leg
        goto step_77
    end
    goto step_92
    ::step_77::
    if IsQBitSet(QBit(581)) then -- Placed Golem left arm
        goto step_79
    end
    goto step_92
    ::step_79::
    if IsQBitSet(QBit(582)) then -- Placed Golem left leg
        goto step_81
    end
    goto step_92
    ::step_81::
    if IsQBitSet(QBit(583)) then -- Placed Golem head
        SetQBit(QBit(586)) -- Finished constructing Golem with normal head
        evt.SetMessage("零件你都凑齐了！\n现在只需回到灰大师那里进行活化仪式。")
        evt.SetNPCTopic(395, 1, 0) -- Golem topic 1 cleared
        return
    end
    if IsQBitSet(QBit(584)) then -- Placed Golem Abbey normal head
        SetQBit(QBit(585)) -- Finished constructing Golem with Abbey normal head
        evt.SetMessage("零件你都凑齐了！\n现在只需回到灰大师那里进行活化仪式。")
        evt.SetNPCTopic(395, 1, 0) -- Golem topic 1 cleared
        return
    end
    goto step_92
    ::step_92::
    evt.SetMessage("你还没有任何零件可组装。")
end)
RegisterCanShowTopic(854, function()
    evt._BeginCanShowTopic(854)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(585)) then -- Finished constructing Golem with Abbey normal head
        visible = false
        return visible
    else
        if IsQBitSet(QBit(586)) then -- Finished constructing Golem with normal head
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(855, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(1442) then -- Abbey Normal Golem Head
        RemoveItem(1442) -- Abbey Normal Golem Head
        ClearQBit(QBit(732)) -- Abby normal head - I lost it
        evt.ForPlayer(Players.Current)
        AddValue(InventoryItem(1443), 1443) -- Golem head
        SetQBit(QBit(731)) -- Golem Head - I lost it
        ClearQBit(QBit(583)) -- Placed Golem head
        SetQBit(QBit(584)) -- Placed Golem Abbey normal head
        evt.SetMessage("你取下普通头，换上带凹痕的头。")
        return
    elseif HasItem(1443) then -- Golem head
        RemoveItem(1443) -- Golem head
        ClearQBit(QBit(731)) -- Golem Head - I lost it
        evt.ForPlayer(Players.Current)
        AddValue(InventoryItem(1442), 1442) -- Abbey Normal Golem Head
        SetQBit(QBit(732)) -- Abby normal head - I lost it
        ClearQBit(QBit(584)) -- Placed Golem Abbey normal head
        SetQBit(QBit(583)) -- Placed Golem head
        evt.SetMessage("你取下带凹痕的头，换回普通头。")
    else
        evt.SetMessage("你不该读到这条消息。\n这意味着你不知怎么触发了这个事件，却没拿着普通头或修道院普通魔像头——根据本事件的前置条件，这绝对不可能。\n请告诉布赖恩，他打赌输了，欠基思 5 块钱，因为这个事件不正常。")
    end
end)
RegisterCanShowTopic(855, function()
    evt._BeginCanShowTopic(855)
    local visible = true
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(583)) then -- Placed Golem head
        if HasItem(1442) then -- Abbey Normal Golem Head
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    else
        if IsQBitSet(QBit(584)) then -- Placed Golem Abbey normal head
            if HasItem(1443) then -- Golem head
                visible = true
                return visible
            else
                visible = false
                return visible
            end
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(856, nil, function()
    if not IsQBitSet(QBit(647)) then -- Player castle goblins are all dead
        evt.SetMessage("各位大人，恐怕跟这些地精谈不拢。\n我建议动武？")
        return
    end
    evt.SetMessage("谢天谢地你们把他们清干净了！\n现在我们得想办法清理城堡、重建受损的部分。\n我能想到既有意愿又有能力做这事的，只有南边拜尔德斯上石头城里的矮人。\n石头城入口在拜尔德斯中央最大的一座山上。\n")
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    ClearQBit(QBit(587)) -- Clean out Castle Harmondale and return to the Butler in the tavern, On the House, in Harmondale. - Given by butler at the door to the player castle.
    SetAward(Award(3)) -- Removed goblins from Castle Harmondale
    evt.MoveNPC(397, 1169) -- Butler -> Throne Room
    evt.SetNPCTopic(397, 0, 0) -- Butler topic 0 cleared
    evt.SetNPCGreeting(397, 201) -- Butler greeting: You rang, my lords?
    SetQBit(QBit(658)) -- Talk to the Dwarves in Stone City in the Barrow Downs to find a way to repair Castle Harmondale.
end)

RegisterGlobalEvent(857, nil, function()
    evt.SetMessage("这么说……眼前就是哈蒙代尔的新领主们。\n不怎么样。\n别的国王多半也不会高看你们。\n哼。\n恐怕很快就会送命。\n不过也许这事儿不像看上去那么简单。\n对。\n也许你们能替我做点事，我也替你们做点事。\n美杜莎占了我在布拉卡达东部的矿。\n把我几个族人变成了石头。\n危险的怪物，我不想为救援再赔上人命。\n不过赔上你们的命倒没关系。\n拿上这瓶灵药，浇在那些石像上。\n把他们唤醒。\n然后我就修你们的城堡。\n给你们脸面。\n去吧，小心布拉卡达的狮鹫。\n")
    SetQBit(QBit(588)) -- Rescue the dwarves from the Red Dwarf Mines and return to the Dwarf King in Stone City in the Barrow Downs.
    ClearQBit(QBit(658)) -- Talk to the Dwarves in Stone City in the Barrow Downs to find a way to repair Castle Harmondale.
    AddValue(InventoryItem(1431), 1431) -- Elixir
    SetQBit(QBit(742)) -- Elixir - I lost it
    evt.SetNPCTopic(398, 0, 858) -- Hothfarr IX topic 0: Rescue Dwarves
end)

RegisterGlobalEvent(858, nil, function()
    if IsQBitSet(QBit(1688)) then -- Replacement for NPCs �60 ver. 7
        if IsQBitSet(QBit(1689)) then -- Replacement for NPCs �61 ver. 7
            if IsQBitSet(QBit(1690)) then -- Replacement for NPCs �62 ver. 7
                if IsQBitSet(QBit(1691)) then -- Replacement for NPCs �63 ver. 7
                    if IsQBitSet(QBit(1692)) then -- Replacement for NPCs �64 ver. 7
                        if IsQBitSet(QBit(1693)) then -- Replacement for NPCs �65 ver. 7
                            if not IsQBitSet(QBit(1694)) then -- Replacement for NPCs �66 ver. 7
                                evt.SetMessage("又来了，嗯？\n你那部分交易还没完成。\n完成之前别想帮忙。\n")
                                return
                            end
                            evt.SetMessage("欢迎回来，哈蒙代尔的领主们！\n现在，我会帮你们。\n我的工程师听你们差遣。\n修好你们的城堡。\n我谢你们。\n这里永远欢迎你们。\n哼。\n还有一件事。\n你们的作为引起了其他朝廷的兴趣。\n他们如今会派使者来见你们——去你们觐见厅看看。\n当心背后，朋友们。")
                            AddValue(History(4), 0)
                            AddValue(Gold, 5000)
                            ClearQBit(QBit(588)) -- Rescue the dwarves from the Red Dwarf Mines and return to the Dwarf King in Stone City in the Barrow Downs.
                            SubtractValue(ReputationInCurrentLocation, 5)
                            evt.ForPlayer(Players.All)
                            SetAward(Award(4)) -- Rescued the dwarves from the Red Dwarf Mine
                            AddValue(Experience, 12500)
                            RemoveItem(1431) -- Elixir
                            ClearQBit(QBit(742)) -- Elixir - I lost it
                            SetQBit(QBit(610)) -- Built Castle to Level 2 (rescued dwarf guy)
                            ClearQBit(QBit(1688)) -- Replacement for NPCs �60 ver. 7
                            evt.MoveNPC(399, 0) -- Drathen Keldin -> removed
                            evt.MoveNPC(406, 1169) -- Ellen Rockway -> Throne Room
                            evt.MoveNPC(407, 1169) -- Alain Hani -> Throne Room
                            ClearQBit(QBit(1689)) -- Replacement for NPCs �61 ver. 7
                            ClearQBit(QBit(1690)) -- Replacement for NPCs �62 ver. 7
                            ClearQBit(QBit(1691)) -- Replacement for NPCs �63 ver. 7
                            ClearQBit(QBit(1692)) -- Replacement for NPCs �64 ver. 7
                            ClearQBit(QBit(1693)) -- Replacement for NPCs �65 ver. 7
                            ClearQBit(QBit(1694)) -- Replacement for NPCs �66 ver. 7
                            evt.SetNPCTopic(398, 0, 0) -- Hothfarr IX topic 0 cleared
                            evt.SetNPCGreeting(398, 203) -- Hothfarr IX greeting: Welcome, Harmondale! Stone city is at your disposal.
                            return
                        end
                    end
                end
            end
        end
    end
    evt.SetMessage("又来了，嗯？\n你那部分交易还没完成。\n完成之前别想帮忙。\n")
end)

RegisterGlobalEvent(859, nil, function()
    SetQBit(QBit(1688)) -- Replacement for NPCs �60 ver. 7
    evt.SetNPCGreeting(399, 204) -- Drathen Keldin greeting 204
end)
RegisterCanShowTopic(859, function()
    evt._BeginCanShowTopic(859)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(860, nil, function()
    SetQBit(QBit(1689)) -- Replacement for NPCs �61 ver. 7
    evt.SetNPCGreeting(400, 205) -- Jaycen Keldin greeting 205
end)
RegisterCanShowTopic(860, function()
    evt._BeginCanShowTopic(860)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(861, nil, function()
    SetQBit(QBit(1690)) -- Replacement for NPCs �62 ver. 7
    evt.SetNPCGreeting(401, 205) -- Yarrow Keldin greeting 205
end)
RegisterCanShowTopic(861, function()
    evt._BeginCanShowTopic(861)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(862, nil, function()
    SetQBit(QBit(1691)) -- Replacement for NPCs �63 ver. 7
    evt.SetNPCGreeting(402, 205) -- Fausil Keldin greeting 205
end)
RegisterCanShowTopic(862, function()
    evt._BeginCanShowTopic(862)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(863, nil, function()
    SetQBit(QBit(1692)) -- Replacement for NPCs �64 ver. 7
    evt.SetNPCGreeting(403, 205) -- Red Keldin greeting 205
end)
RegisterCanShowTopic(863, function()
    evt._BeginCanShowTopic(863)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(864, nil, function()
    SetQBit(QBit(1693)) -- Replacement for NPCs �65 ver. 7
    evt.SetNPCGreeting(404, 205) -- Thom Keldin greeting 205
end)
RegisterCanShowTopic(864, function()
    evt._BeginCanShowTopic(864)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(865, nil, function()
    SetQBit(QBit(1694)) -- Replacement for NPCs �66 ver. 7
    evt.SetNPCGreeting(405, 205) -- Arvin Keldin greeting 205
end)
RegisterCanShowTopic(865, function()
    evt._BeginCanShowTopic(865)
    local visible = true
    if HasItem(1476) then -- Elixir Placeholder
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(866, nil, function()
    if not IsQBitSet(QBit(600)) then -- Talked to Catherine
        evt.SetMessage("你们的女王希望尽快与你们会面。\n自战争以来，她住在斯坦德威克的格芬哈特城堡。\n这纯粹是公事——每逢新领主就职，她都会与他们会面，确保没有误会。\n凯瑟琳女王对你们尤其感兴趣，并告诉我她想聘用你们的效劳。")
        return
    end
    if not IsQBitSet(QBit(593)) then -- Gave Loren to Catherine
        evt.SetMessage("我收到消息，你们与女王见过面了。\n希望一切顺利。")
        return
    end
    evt.SetMessage("女王对你们非常满意！\n救援行动很成功，洛伦再也不能被那个邪恶的帕森国王当作筹码了！\n等当前哈蒙代尔的冲突结束，我相信女王会奖赏你们的帮助。")
end)

RegisterGlobalEvent(867, nil, function()
    evt.SetMessage("女王告诉我，你们的忠诚非常坚定。\n你们把帕森国王图谋背叛之事禀报女王，做了正确的事。\n我还要告诉你们：\n你们的忠诚不仅坚定，而且用对了地方。\n尽管精灵另有主张，哈蒙代尔是埃拉西亚合法的行省。\n你们为我们所做的，有助于确保哈蒙代尔永远掌握在人类手中。")
end)
RegisterCanShowTopic(867, function()
    evt._BeginCanShowTopic(867)
    local visible = true
    if IsQBitSet(QBit(594)) then -- Gave false plans to elfking (betray)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(868, nil, function()
    evt.SetMessage("[艾伦夫人惊喜地倒吸气]你们拿到了格芬哈特的号角！\n这太好了！\n它从保险箱里失踪时，我们以为是被敌人偷走了！\n谢谢你们把它送回来！")
    AddValue(Gold, 5000)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    RemoveItem(1436) -- Gryphonheart's Trumpet
    ClearQBit(QBit(591)) -- Retrieve Gryphonheart's Trumpet from the battle in the Tularean Forest and return it to whichever side you choose.
    SetQBit(QBit(596)) -- Gave artifact to humans
    evt.SetNPCTopic(406, 2, 0) -- Ellen Rockway topic 2 cleared
end)
RegisterCanShowTopic(868, function()
    evt._BeginCanShowTopic(868)
    local visible = true
    if HasItem(1436) then -- Gryphonheart's Trumpet
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(869, nil, function()
    evt.SetMessage("我从凯瑟琳女王那儿得知，你们用那套老套的假囚犯诡计背叛了我们。\n[艾伦夫人恭敬地行礼]你们欺骗之道的本领着实厉害。\n我以后绝不会再被你们那副诚恳样子轻易骗到。")
end)
RegisterCanShowTopic(869, function()
    evt._BeginCanShowTopic(869)
    local visible = true
    if IsQBitSet(QBit(595)) then -- Gave false Loren to Catherine (betray)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(870, nil, function()
    if not IsQBitSet(QBit(601)) then -- Talked to elfking
        evt.SetMessage("尽管埃里眼下不掌管哈蒙代尔，我的国王、埃里的埃尔德里奇·帕森，仍宣称这片领土是我们合法的领地。\n原因很复杂，但归结为一个简单事实：多年前的木材战争中，埃拉西亚窃走了我们的土地，不夺回来我们决不罢休。\n我的国王希望与你们谈谈。\n请前往图拉林森林的皮尔庞特见他。\n我们不会让你们白跑一趟。")
        return
    end
    if not IsQBitSet(QBit(592)) then -- Gave plans to elfking
        evt.SetMessage("信使已把你们与我王会面的事告知我。\n希望你们如今明白，为什么我们才是哈蒙代尔合法的统治者。\n")
        return
    end
    evt.SetMessage("我听说你们大胆潜入了利文斯德要塞，令人印象深刻！\n我们的战略家正在分析图纸，说这些情报对他们将来攻打那座堡极有价值。\n埃里感激你们！")
end)

RegisterGlobalEvent(871, nil, function()
    evt.SetMessage("朝廷有消息说，你们拒绝了埃拉西亚要你们劫出间谍洛伦·斯蒂尔的请求。\n不仅如此，你们还帮我们安插了一个假囚犯，他自从到那儿就一直在喂他们假情报。\n埃里欠你们一份情！")
end)
RegisterCanShowTopic(871, function()
    evt._BeginCanShowTopic(871)
    local visible = true
    if IsQBitSet(QBit(595)) then -- Gave false Loren to Catherine (betray)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(872, nil, function()
    evt.SetMessage("你们拿到了格芬哈特的号角！\n好极了！\n那次突袭中我们把它弄丢了，还怕被哪个埃拉西亚人顺走。\n非常感谢你们的帮助！")
    AddValue(Gold, 5000)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    RemoveItem(1436) -- Gryphonheart's Trumpet
    ClearQBit(QBit(591)) -- Retrieve Gryphonheart's Trumpet from the battle in the Tularean Forest and return it to whichever side you choose.
    SetQBit(QBit(597)) -- Gave artifact to elves
    evt.SetNPCTopic(407, 2, 0) -- Alain Hani topic 2 cleared
end)
RegisterCanShowTopic(872, function()
    evt._BeginCanShowTopic(872)
    local visible = true
    if HasItem(1436) then -- Gryphonheart's Trumpet
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(873, nil, function()
    evt.SetMessage("我收到上司警告，说你们从埃拉西亚交付了伪造的图纸。\n国王不太高兴。还有人担心你们肚子里还藏着更多背叛。\n[阿兰微笑，不愧是他这一行的人]情场战场皆无虚言，所以这都算旧账了，嗯？\n对，一笔勾销。\n[使者由衷轻笑]。\n")
end)
RegisterCanShowTopic(873, function()
    evt._BeginCanShowTopic(873)
    local visible = true
    if IsQBitSet(QBit(594)) then -- Gave false plans to elfking (betray)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(874, nil, function()
    evt.SetMessage("[凯瑟琳女王仪态高贵地颔首]我看你们就是赢了马克姆勋爵那项无聊比赛的一伙。\n我得承认，在矮人国王承认你们是哈蒙代尔合法统治者之前，我并没抱多大信心。\n你们一定做了什么赢得了他的敬重，否则他根本不会理你们。\n我仍不太明白他看中了你们什么，但也许这里头真有些名堂。\n我们走着瞧。\n也许你们能替我做件事，让我觉得该让你们保住新头衔。\n近来，我一位宝贵的……特工在图拉林森林仅仅因为尽职就被捕了。\n他们把他关在皮尔庞特外某个洞穴里。\n他叫洛伦·斯蒂尔，他们威胁说，若 28 天内某些不可接受的条件得不到满足，就处决他。\n在那之前把他带回来，你们就会赢得敬重、黄金与感激。")
    evt.SetNPCTopic(408, 0, 875) -- Queen Catherine topic 0: Prisoner of War
    SetQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
    SetQBit(QBit(600)) -- Talked to Catherine
    SetValue(Counter(1), 0)
end)

RegisterGlobalEvent(875, nil, function()
    if IsAtLeast(Counter(1), 672) then
        evt.SetMessage("可怜的洛伦时间到了。\n他按计划被埃里以间谍罪处决了。\n救援别费心了。\n他走了。")
        evt.SetNPCTopic(408, 0, 0) -- Queen Catherine topic 0 cleared
        evt.SetNPCTopic(408, 1, 0) -- Queen Catherine topic 1 cleared
        ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
        ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
        ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
        ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
        evt.SetMessage("[凯瑟琳起身微笑]干得好！\n你们真的替我解决了一个可怕的两难。\n[凯瑟琳转向洛伦，与他握手]洛伦。\n终于见到你了。\n如今人人都知道你是谁，你当间谍对我没什么用了，但我想在皇家外交团给你份工作。\n请考虑一下。\n至于我们的英雄们，我谢你们。\n我的庶务会把 5000 金币记入你们的银行账户，酬谢你们的效劳。\n ")
        ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
        SetQBit(QBit(593)) -- Gave Loren to Catherine
        evt.ForPlayer(Players.Current)
        AddValue(BankGold, 5000)
        SubtractValue(ReputationInCurrentLocation, 5)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 10000)
        SetQBit(QBit(1556)) -- Rescued Loren Steel
        evt.SetNPCTopic(408, 0, 0) -- Queen Catherine topic 0 cleared
        evt.SetNPCTopic(408, 1, 0) -- Queen Catherine topic 1 cleared
        ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
        ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
        return
    elseif IsQBitSet(QBit(1695)) then -- Replacement for NPCs �71 ver. 7
        evt.SetMessage("[凯瑟琳起身微笑]干得好！\n你们真的替我解决了一个可怕的两难。\n[凯瑟琳转向洛伦，与他握手]洛伦。\n终于见到你了。\n如今人人都知道你是谁，你当间谍对我没什么用了，但我想在皇家外交团给你份工作。\n请考虑一下。\n至于我们的英雄们，我谢你们。\n我的庶务会把 5000 金币记入你们的银行账户，酬谢你们的效劳。\n ")
        ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
        SetQBit(QBit(593)) -- Gave Loren to Catherine
        evt.ForPlayer(Players.Current)
        AddValue(BankGold, 5000)
        SubtractValue(ReputationInCurrentLocation, 5)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 10000)
        SetQBit(QBit(1556)) -- Rescued Loren Steel
        evt.SetNPCTopic(408, 0, 0) -- Queen Catherine topic 0 cleared
        evt.SetNPCTopic(408, 1, 0) -- Queen Catherine topic 1 cleared
        ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
        ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
        return
    elseif IsQBitSet(QBit(1696)) then -- Replacement for NPCs �72 ver. 7
        evt.SetMessage("[凯瑟琳起身微笑]干得好！\n你们真的替我解决了一个可怕的两难。\n[凯瑟琳转向假洛伦，与他握手]洛伦。\n终于见到你了。\n如今人人都知道你是谁，你当间谍对我没什么用了，但我想在皇家外交团给你份工作。\n请考虑一下。\n至于我们的英雄们，我谢你们。\n ")
        ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
        ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
        SetQBit(QBit(595)) -- Gave false Loren to Catherine (betray)
        AddValue(ReputationInCurrentLocation, 5)
        evt.ForPlayer(Players.All)
        SetQBit(QBit(1557)) -- Gave Loren Imposter to Catherine
        evt.SetNPCTopic(408, 0, 0) -- Queen Catherine topic 0 cleared
        evt.SetNPCTopic(408, 1, 0) -- Queen Catherine topic 1 cleared
        ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
        ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
    else
        evt.SetMessage("洛伦性命攸关。\n我不能屈服于精灵的要求，否则会搭上更多人命。\n请快些。\n我相信埃里会按计划处决他。")
        return
    end
end)

RegisterGlobalEvent(876, nil, function()
    evt.SetMessage("[女王眯起眼]这是怎么回事？\n你们是在招认背叛？\n真高尚。\n卫兵！\n把他们的头砍下来！")
    ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
    ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
    ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
    ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
    SetQBit(QBit(602)) -- Told Catherine about fake prisoner
    evt.SetNPCTopic(408, 0, 0) -- Queen Catherine topic 0 cleared
    evt.SetNPCTopic(408, 1, 0) -- Queen Catherine topic 1 cleared
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        SetValue(Eradicated, 1)
    end
end)
RegisterCanShowTopic(876, function()
    evt._BeginCanShowTopic(876)
    local visible = true
    if IsQBitSet(QBit(1696)) then -- Replacement for NPCs �72 ver. 7
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(877, nil, function()
    evt.SetMessage("帕森国王要你们去偷利文斯德要塞的平面图？\n嗯。\n[凯瑟琳转向一位顾问]画几张利文斯德要塞的假图纸。\n弄得疼一点。\n[她转回面对你们]他要图纸，就给他图纸。\n把这些图纸交给国王。\n我敢说他会感激的。\n千万别让他知道是假的。\n[过了一阵，顾问拿着图纸回来交给你们]\n你们当然得按时把图纸送给他。\n我敢说他正计划很快攻打我们。")
    evt.SetNPCTopic(408, 2, 878) -- Queen Catherine topic 2: Riverstride plans
    SetQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
    AddValue(InventoryItem(1508), 1508) -- False Riverstride Plans
    ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
end)
RegisterCanShowTopic(877, function()
    evt._BeginCanShowTopic(877)
    local visible = true
    if IsQBitSet(QBit(589)) then -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
        if IsQBitSet(QBit(604)) then -- Fort Riverstride. Opened chest with plans
            visible = false
            return visible
        else
            if IsAtLeast(Counter(2), 672) then
                visible = false
                return visible
            else
                visible = true
                return visible
            end
        end
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(878, nil, function()
    if IsQBitSet(QBit(594)) then -- Gave false plans to elfking (betray)
        evt.SetMessage("他收下图纸了？\n好极！\n我会让利文斯德要塞指挥官为他们铺红地毯。\n至于你们，我已吩咐庶务把 5000 金币存入你们账户。")
        SubtractValue(ReputationInCurrentLocation, 5)
        ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
        ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
        evt.ForPlayer(Players.All)
        AddValue(Experience, 5000)
        evt.ForPlayer(Players.Current)
        AddValue(BankGold, 5000)
        evt.SetNPCTopic(408, 2, 0) -- Queen Catherine topic 2 cleared
        evt.SetNPCTopic(408, 3, 0) -- Queen Catherine topic 3 cleared
    elseif IsQBitSet(QBit(603)) then -- Told Elfking about fake plans
        evt.SetMessage("你居然告诉国王图纸是假的？！？\n[女王手扶额头，下巴张着]我这辈子从没见过这么无能的！\n骇人听闻！\n滚出我的视线！\n快走！\n")
        evt.ForPlayer(Players.All)
        RemoveItem(1508) -- False Riverstride Plans
        RemoveItem(1507) -- Riverstride Plans
        ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
        ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
        evt.SetNPCTopic(408, 2, 0) -- Queen Catherine topic 2 cleared
        evt.SetNPCTopic(408, 3, 0) -- Queen Catherine topic 3 cleared
        return
    elseif IsAtLeast(Counter(2), 672) then
        evt.SetMessage("帕森国王已经过了能用上那些假文件的日子。\n别费事送给他了——已经无所谓了。\n")
        RemoveItem(1508) -- False Riverstride Plans
        RemoveItem(1507) -- Riverstride Plans
        evt.SetNPCTopic(408, 2, 0) -- Queen Catherine topic 2 cleared
        evt.SetNPCTopic(408, 3, 0) -- Queen Catherine topic 3 cleared
        ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
        ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
    else
        evt.SetMessage("你必须在他攻打利文斯德要塞之前把图纸送到他手里。\n否则，图纸就无法把他的军队引进我们为他们布下的重重陷阱。\n所以赶紧把图纸送去！\n我指望你们了！")
    end
end)

RegisterGlobalEvent(879, nil, function()
    evt.SetMessage("[你告诉她你如何潜入她的堡、偷走秘密图纸、并在为外国王效力时杀死她许多卫兵时，女王饶有兴味地挑起眉]我倒希望能如实说这是我见过最惊人的背叛，可惜不是。\n尽管如此……卫兵！\n把他们的头砍下来！")
    RemoveItem(1507) -- Riverstride Plans
    RemoveItem(1508) -- False Riverstride Plans
    ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
    ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
    evt.SetNPCTopic(408, 2, 0) -- Queen Catherine topic 2 cleared
    evt.SetNPCTopic(408, 3, 0) -- Queen Catherine topic 3 cleared
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        SetValue(Eradicated, 1)
    end
end)
RegisterCanShowTopic(879, function()
    evt._BeginCanShowTopic(879)
    local visible = true
    if HasItem(1507) then -- Riverstride Plans
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(880, nil, function()
    evt.SetMessage("我忠诚的臣民！\n是你们拿走了号角！\n干得好。\n我们以为它永远丢了。\n再一次，我的庶务会把黄金存入你们账户。\n确切地说，是 5000 金币。")
    AddValue(BankGold, 5000)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    RemoveItem(1436) -- Gryphonheart's Trumpet
    ClearQBit(QBit(591)) -- Retrieve Gryphonheart's Trumpet from the battle in the Tularean Forest and return it to whichever side you choose.
    SetQBit(QBit(596)) -- Gave artifact to humans
    evt.SetNPCTopic(408, 4, 0) -- Queen Catherine topic 4 cleared
end)
RegisterCanShowTopic(880, function()
    evt._BeginCanShowTopic(880)
    local visible = true
    if HasItem(1436) then -- Gryphonheart's Trumpet
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(881, nil, function()
    evt.SetMessage("欢迎。\n我知道你们被那个白痴马克姆任命为哈蒙代尔领主。\n你知道，我一定会恢复埃里对哈蒙代尔的统治——唯一的问题是，你们站我这边，还是站我对面。\n站我这边，我保你们留任。\n站我对面，等我的军队占领你们的土地，我就收拾你们。\n[帕森国王和蔼地微笑]所以，你们当然是站我这边的！\n你们只需证明这一点。\n正如一位著名领袖说过的：\n信任，但要验证！\n值得奉行的话。\n我现在要的是利文斯德要塞的图纸。\n那是你们土地与埃拉西亚本土之间一座巨大的堡。\n你们不会找不到那东西。\n溜进去，把图纸给我弄来。\n你们办成此事，我就欠你们一份人情。\n不仅如此，还有一笔丰厚的黄金报酬。\n不过，图纸若想对我有用，我得在一个月内拿到手。")
    evt.SetNPCTopic(409, 0, 882) -- ElfKing topic 0: Riverstride plans
    SetQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
    SetQBit(QBit(601)) -- Talked to elfking
    SetValue(Counter(2), 0)
end)

RegisterGlobalEvent(882, nil, function()
    if not IsAtLeast(Counter(2), 672) then
        evt.ForPlayer(Players.All)
        if HasItem(1507) then -- Riverstride Plans
            evt.SetMessage("[你把图纸交给他时，国王笑容满面]\n谢谢！\n这些会非常有用。\n我的管家会把 5000 金币存入你们银行账户，酬谢你们的效劳。\n等我们最终赢下这一回合埃拉西亚，我不会忘记你们。")
            ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
            ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
            SetQBit(QBit(592)) -- Gave plans to elfking
            evt.ForPlayer(Players.Current)
            AddValue(BankGold, 5000)
            SubtractValue(ReputationInCurrentLocation, 5)
            evt.ForPlayer(Players.All)
            AddValue(Experience, 10000)
            SetQBit(QBit(1558)) -- Retrieved Fort Riverstride Plans
            evt.SetNPCTopic(409, 0, 0) -- ElfKing topic 0 cleared
            evt.SetNPCTopic(409, 1, 0) -- ElfKing topic 1 cleared
            RemoveItem(1507) -- Riverstride Plans
            RemoveItem(1508) -- False Riverstride Plans
            return
        elseif HasItem(1508) then -- False Riverstride Plans
            evt.SetMessage("[你把假图纸交给他时，国王笑容满面。\n冤大头！]\n谢谢！\n这些会非常有用。\n等我们最终赢下这一回合埃拉西亚，我不会忘记你们。")
            ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
            ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
            SetQBit(QBit(594)) -- Gave false plans to elfking (betray)
            AddValue(ReputationInCurrentLocation, 5)
            evt.ForPlayer(Players.All)
            SetQBit(QBit(1559)) -- Gave false plans to Elfking
            evt.SetNPCTopic(409, 0, 0) -- ElfKing topic 0 cleared
            evt.SetNPCTopic(409, 1, 0) -- ElfKing topic 1 cleared
            RemoveItem(1508) -- False Riverstride Plans
            RemoveItem(1507) -- Riverstride Plans
        else
            evt.SetMessage("我真的很快就需要那些图纸。\n你们拖太久，我就得没有图纸准备进攻了。")
            return
        end
        return
    end
    evt.SetMessage("我能用上那些图纸的日子已经过去了。\n感谢你们为找它们可能付出的努力，可我不再需要图纸了。")
    evt.SetNPCTopic(409, 0, 0) -- ElfKing topic 0 cleared
    evt.SetNPCTopic(409, 1, 0) -- ElfKing topic 1 cleared
    RemoveItem(1507) -- Riverstride Plans
    RemoveItem(1508) -- False Riverstride Plans
    ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
    ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
    evt.SetMessage("[你把图纸交给他时，国王笑容满面]\n谢谢！\n这些会非常有用。\n我的管家会把 5000 金币存入你们银行账户，酬谢你们的效劳。\n等我们最终赢下这一回合埃拉西亚，我不会忘记你们。")
    ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
    ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
    SetQBit(QBit(592)) -- Gave plans to elfking
    evt.ForPlayer(Players.Current)
    AddValue(BankGold, 5000)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    SetQBit(QBit(1558)) -- Retrieved Fort Riverstride Plans
    evt.SetNPCTopic(409, 0, 0) -- ElfKing topic 0 cleared
    evt.SetNPCTopic(409, 1, 0) -- ElfKing topic 1 cleared
    RemoveItem(1507) -- Riverstride Plans
    RemoveItem(1508) -- False Riverstride Plans
end)

RegisterGlobalEvent(883, nil, function()
    evt.SetMessage("你说这些图纸是假的，是什么意思？\n这么说你承认图谋反对我？\n[国王嫌恶地甩起双手]卫兵！\n把这些叛徒押到院子里处决！")
    RemoveItem(1508) -- False Riverstride Plans
    RemoveItem(1507) -- Riverstride Plans
    ClearQBit(QBit(606)) -- Give false Riverstride plans to Eldrich Parson in Castle Navan in the Tularean Forest.
    ClearQBit(QBit(589)) -- Retrieve plans from Fort Riverstride and return them to Eldrich Parson in Castle Navan in the Tularean Forest.
    SetQBit(QBit(603)) -- Told Elfking about fake plans
    evt.SetNPCTopic(409, 0, 0) -- ElfKing topic 0 cleared
    evt.SetNPCTopic(409, 1, 0) -- ElfKing topic 1 cleared
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        SetValue(Eradicated, 1)
    end
end)
RegisterCanShowTopic(883, function()
    evt._BeginCanShowTopic(883)
    local visible = true
    if HasItem(1508) then -- False Riverstride Plans
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(884, nil, function()
    evt.SetMessage("狡猾的女王对我下手了，嗯？\n[国王皱眉思索，随即眼睛一亮]我有主意了！\n我认识一个人，长得和她要你们救的那个间谍一模一样。\n把我的人带上，送给女王。\n她从没见过他，分不出区别。\n他的“内部情报”会诱使她犯错。\n[国王花了点时间召来冒名者]\n小心别露了马脚。\n让她发现我们的小算盘可不行。\n")
    evt.SetNPCTopic(409, 2, 885) -- ElfKing topic 2: Prison Break
    SetQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
    SetQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
    ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
end)
RegisterCanShowTopic(884, function()
    evt._BeginCanShowTopic(884)
    local visible = true
    if IsQBitSet(QBit(590)) then -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
        if IsQBitSet(QBit(605)) then -- Tularean Caves. Got Loren
            visible = false
            return visible
        else
            if IsAtLeast(Counter(1), 672) then
                visible = false
                return visible
            else
                visible = true
                return visible
            end
        end
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(885, nil, function()
    if IsQBitSet(QBit(595)) then -- Gave false Loren to Catherine (betray)
        evt.SetMessage("冒名者已混进她的军事与外交顾问圈子，我敢说在他被识破前会造成不小破坏。\n谢谢你们的帮助！我的管家会把 5000 金币存入你们银行账户。")
        ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
        SubtractValue(ReputationInCurrentLocation, 5)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 5000)
        evt.ForPlayer(Players.Current)
        AddValue(BankGold, 5000)
        evt.SetNPCTopic(409, 2, 0) -- ElfKing topic 2 cleared
        evt.SetNPCTopic(409, 3, 0) -- ElfKing topic 3 cleared
    elseif IsQBitSet(QBit(602)) then -- Told Catherine about fake prisoner
        evt.SetMessage("你居然把冒名者的事告诉了凯瑟琳女王？！？我不敢相信我的耳朵！\n你为什么这么做？\n为什么？\n[国王起身指着门]滚出去！")
        evt.ForPlayer(Players.All)
        ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
        ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
        ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
        evt.SetNPCTopic(409, 2, 0) -- ElfKing topic 2 cleared
        evt.SetNPCTopic(409, 3, 0) -- ElfKing topic 3 cleared
        return
    elseif IsAtLeast(Counter(1), 672) then
        evt.SetMessage("洛伦·斯蒂尔的处决日期已过。\n别费事把冒名者送给女王了——她会疑心太重，我们的计策成不了。\n他这就离开你们。")
        ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
        ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
        evt.SetNPCTopic(409, 2, 0) -- ElfKing topic 2 cleared
        evt.SetNPCTopic(409, 3, 0) -- ElfKing topic 3 cleared
        ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
        ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
    else
        evt.SetMessage("务必在斯蒂尔先生预定处决前把冒名者送到女王那里。\n毕竟，要是人人都知道我处决了他，你们就没法营救斯蒂尔先生了。\n而我若暂缓处决，她又会起疑。\n我以前从没暂缓过。")
    end
end)

RegisterGlobalEvent(886, nil, function()
    evt.SetMessage("[你详述自己对埃里犯下的罪状时，国王沉默着；你说完后，他微笑着摊开双手]好嘛！\n我看这故事本身就说明问题，不是吗？\n卫兵！\n把这些叛徒押到院子里处决！")
    ClearQBit(QBit(1695)) -- Replacement for NPCs �71 ver. 7
    ClearQBit(QBit(1696)) -- Replacement for NPCs �72 ver. 7
    ClearQBit(QBit(590)) -- Rescue Loren Steel from the Tularean Caves in the Tularean Forest and return him to Queen Catherine.
    ClearQBit(QBit(607)) -- Return the Loren imposter to Queen Catherine in Castle Gryphonheart in Erathia.
    evt.SetNPCTopic(409, 2, 0) -- ElfKing topic 2 cleared
    evt.SetNPCTopic(409, 3, 0) -- ElfKing topic 3 cleared
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        SetValue(Eradicated, 1)
    end
end)
RegisterCanShowTopic(886, function()
    evt._BeginCanShowTopic(886)
    local visible = true
    if IsQBitSet(QBit(1695)) then -- Replacement for NPCs �71 ver. 7
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(887, nil, function()
    evt.SetMessage("啊，号角！\n你们夺回来了！\n人类突袭的消息传来时，我们还不确定结果如何。\n再一次感谢你们，朋友们。\n我的管家会把 5000 金币存入你们账户，酬谢你们的效劳。")
    AddValue(BankGold, 5000)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    RemoveItem(1436) -- Gryphonheart's Trumpet
    ClearQBit(QBit(591)) -- Retrieve Gryphonheart's Trumpet from the battle in the Tularean Forest and return it to whichever side you choose.
    SetQBit(QBit(597)) -- Gave artifact to elves
    evt.SetNPCTopic(409, 4, 0) -- ElfKing topic 4 cleared
end)
RegisterCanShowTopic(887, function()
    evt._BeginCanShowTopic(887)
    local visible = true
    if HasItem(1436) then -- Gryphonheart's Trumpet
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(888, nil, function()
    if not IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        evt.SetMessage("若有一条建议我能给你们，那就是修好你们的城堡。\n我不知道你们要怎么找到修它的黄金和工人，这种大工程只有富贵族和国王才负担得起。\n我想这是老掉的先有鸡还是先有蛋的问题……你必须先显得高贵，才能获得财富与敬重；可你又必须先有财富与敬重，才显得高贵。\n无论如何，你们若想当几个月以上的哈蒙代尔领主，就得想办法证明自己不只是走运的农民。\n你们必须证明自己配统治。")
        return
    end
    evt.SetMessage("人类王国埃拉西亚与精灵王国哈蒙代尔又打起来了。\n作为本地法官，调解双方分歧、把两边拉上谈判桌的责任落在了我身上。\n双方势均力敌，谁都可能赢。\n[法官凑近你们，压低声音]我再告诉你们一件事——我已经不太在乎谁赢了。\n他们就像抢玩具的孩子。\n谁都不是真想要哈蒙代尔——他们只是不想让对方得到。\n所以，你们好自为之。\n你们现在无论支持哪一方的举动，都可能真的改变局势。\n只要记住，他们根本不在乎你会怎样，也不在乎谁统治哈蒙代尔。\n先保护你们自己和你们的人民。\n我们没谈过这些。")
end)

RegisterGlobalEvent(890, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(1436) then -- Gryphonheart's Trumpet
        evt.SetMessage("你们把号角还给我，是明智之举。\n现在我可以用它扶持这场冲突中弱势的一方，促成和平。\n谢谢。\n")
        SetQBit(QBit(659)) -- Gave artifact to arbiter
        AddValue(Experience, 12500)
        RemoveItem(1436) -- Gryphonheart's Trumpet
        ClearQBit(QBit(591)) -- Retrieve Gryphonheart's Trumpet from the battle in the Tularean Forest and return it to whichever side you choose.
        evt.SetNPCTopic(413, 2, 0) -- Judge Grey topic 2 cleared
    end
end)
RegisterCanShowTopic(890, function()
    evt._BeginCanShowTopic(890)
    local visible = true
    if HasItem(1436) then -- Gryphonheart's Trumpet
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(891, nil, function()
    ClearQBit(QBit(1697)) -- Replacement for NPCs �77 ver. 7
    evt.MoveNPC(416, 244) -- Judge Fairweather -> Familiar Place
    evt.MoveNPC(417, 0) -- Judge Sleen -> removed
    evt.SetNPCGreeting(416, 219) -- Judge Fairweather greeting: Hello. I've been expecting you. I am Judge Fairweather. I think it's important you understand that I DO work for Bracada, but I am neutral on the Erathia - Avlee war. Obviously, we want you to hire me as the Arbiter over this conflict, and I will be a fair judge. We need you to understand, however, that choosing me as the Arbiter will be CHOOSING THE PATH OF LIGHT.It is the right choice. I will put an end to this destructive war as quickly as possible, and minimize deaths. All you have to do is make a decision.Please choose the path of light, and reject evil. Be our ally. Just remember that whatever choice you make will be a permanent one.
    evt.SetNPCGreeting(417, 217) -- Judge Sleen greeting: Thank you for choosing me. You will not regret your choice, I assure you. The only thing that remains is for you to return to Harmondale with me, and bring me to the Judge Grey's old house. I'll take it from there.
    SetQBit(QBit(1698)) -- Replacement for NPCs �78 ver. 7
    evt.SetMessage("明智的决定。\n你们不会后悔的——相信我。\n我早知道你们会做这个决定，我的行李已经收拾好等着出发。\n你们现在只需把我送到新家，其余的我来料理。")
    evt.SetNPCTopic(417, 0, 0) -- Judge Sleen topic 0 cleared
    evt.SetNPCTopic(416, 0, 893) -- Judge Fairweather topic 0: I choose you!
end)

RegisterGlobalEvent(892, nil, function()
    evt.ForPlayer(Players.All)
    if not IsQBitSet(QBit(622)) then -- Finished Necro Proving Grounds
        evt.SetMessage("你的头一件事，是去见铁拳城堡领主，完成他的“任务”。\n等你的能力与忠诚得到证明，你就能以更……有趣……的方式帮忙了。")
        return
    end
    if not IsQBitSet(QBit(623)) then -- Finished Necro Task 2 - Temple of Light
        evt.SetMessage("铁拳城堡领主的每位顾问都有一项任务给你，逐一完成。\n去找卡斯托、暗影和马克西莫斯了解详情。\n完成这些任务对我们的未来至关重要。")
        return
    end
    if not IsQBitSet(QBit(624)) then -- Finished Necro Task 3 - Soul Jars
        evt.SetMessage("铁拳城堡领主的每位顾问都有一项任务给你，逐一完成。\n去找卡斯托、暗影和马克西莫斯了解详情。\n完成这些任务对我们的未来至关重要。")
        return
    end
    if not IsQBitSet(QBit(625)) then -- Finished Necro Task 4 - Clanker's Lab
        evt.SetMessage("铁拳城堡领主的每位顾问都有一项任务给你，逐一完成。\n去找卡斯托、暗影和马克西莫斯了解详情。\n完成这些任务对我们的未来至关重要。")
        return
    end
    if not IsQBitSet(QBit(630)) then -- Killed Good MM3 Person
        evt.SetMessage("托尔伯蒂有一项至关重要的任务。\n我们迄今押下的一切，都系于它的完成。\n好好准备他的任务，否则必败无疑。")
        return
    end
    if not IsQBitSet(QBit(632)) then -- Got Hive part
        evt.SetMessage("泽诺费克斯和其余克里根人必须被镇压；去巨人领地他们的“巢穴”，一劳永逸地终结泽诺费克斯及其党羽。")
        return
    end
    if not IsQBitSet(QBit(633)) then -- Got the sci-fi part
        evt.SetMessage("你需要造访载卡斯托及其部下来到埃拉西亚的那艘飞行器，才能继续。\n去埃里以西，务必整装妥当。")
        return
    end
    evt.SetMessage("以最快速度把振荡过载器带回给卡斯托！\n你每耽搁一刻，就多一分失败的可能！")
end)

RegisterGlobalEvent(893, nil, function()
    ClearQBit(QBit(1698)) -- Replacement for NPCs �78 ver. 7
    evt.MoveNPC(417, 243) -- Judge Sleen -> The Snobbish Goblin
    evt.MoveNPC(416, 0) -- Judge Fairweather -> removed
    evt.SetNPCGreeting(417, 216) -- Judge Sleen greeting: The new lords of Harmondale, I presume. I am Judge Sleen. Let me be frank--my sympathies lie with Deyja and the Necromancers. We want you to choose me for the job of Arbiter for the war between Erathia and Avlee. Since both of those countries are the enemies of Deyja, I will be a fair judge. However, choosing to be the ally of Deyja means CHOOSING WHAT OTHERS CALL "DARKNESS".This darkness business is pure rot. Necromancy is nothing but the study death and what happens with the spirit after death. Sure, the results can be a little grisly, but so is making sausage and the practice of law. And nobody would say those jobs don't have their value.Choose me and be our ally. Because if you cannot prove your friendship through this simple act, what else can you be but our enemy? Remember, though, that once you choose me, you cannot later change your mind. Your choice is permanent.
    evt.SetNPCGreeting(416, 220) -- Judge Fairweather greeting: Thank the heavens for guiding you right! This is the best decision you have ever made, even if you don't believe it now. The only thing left to do is for you to return to Harmondale with me, and bring me to Judge Grey's old house. I'll see that matters are handled correctly.
    SetQBit(QBit(1697)) -- Replacement for NPCs �77 ver. 7
    evt.SetMessage("明智的决定。\n你们不会后悔的——相信我。\n我早知道你们会做这个决定，我的行李已经收拾好等着出发。\n你们现在只需把我送到新家，其余的我来料理。")
    evt.SetNPCTopic(416, 0, 0) -- Judge Fairweather topic 0 cleared
    evt.SetNPCTopic(417, 0, 891) -- Judge Sleen topic 0: I choose you!
end)

RegisterGlobalEvent(894, nil, function()
    evt.ForPlayer(Players.All)
    if not IsQBitSet(QBit(626)) then -- Finished Wizard Proving Grounds
        evt.SetMessage("首先，你要去塞莱斯特见格文·马格努斯，完成他的训练。\n证明你的能力与忠诚后，你会更多了解自己在埃拉西亚未来中的角色。")
        return
    end
    if not IsQBitSet(QBit(627)) then -- Finished Wizard Task 2 - Temple of Dark
        evt.SetMessage("加文的每位顾问都有一项任务给你。\n去找复活特拉、卡内格姆爵士和克拉格·哈克了解详情。\n这些任务不容有失——未来的平衡系于此。")
        return
    end
    if not IsQBitSet(QBit(628)) then -- Finished Wizard Task 3 - Wine Cellar
        evt.SetMessage("加文的每位顾问都有一项任务给你。\n去找复活特拉、卡内格姆爵士和克拉格·哈克了解详情。\n这些任务不容有失——未来的平衡系于此。")
        return
    end
    if not IsQBitSet(QBit(629)) then -- Finished Wizard Task 4 - Soul Jars
        evt.SetMessage("加文的每位顾问都有一项任务给你。\n去找复活特拉、卡内格姆爵士和克拉格·哈克了解详情。\n这些任务不容有失——未来的平衡系于此。")
        return
    end
    if not IsQBitSet(QBit(631)) then -- Killed Evil MM3 Person
        evt.SetMessage("智者罗伯特有一项令人遗憾却又必要的任务要你完成。\n我们任何计划要继续，这项任务就必须成功。\n极其谨慎地准备此事，否则便是自取灭亡。")
        return
    end
    if not IsQBitSet(QBit(632)) then -- Got Hive part
        evt.SetMessage("克里根人、恶魔，以及他们的领袖泽诺费克斯，必须被彻底消灭，计划才有长远意义。\n你们会在巨人领地找到他们的“巢穴”。")
        return
    end
    if not IsQBitSet(QBit(633)) then -- Got the sci-fi part
        evt.SetMessage("埃里以西，是复活特拉及其同伴来到埃拉西亚所乘的飞行器。\n造访那艘船，取回振荡过载器，确保我们的胜利。\n务必为这趟旅程整装妥当。")
        return
    end
    evt.SetMessage("立刻把振荡过载器带回给复活特拉！\n每一刻都在浪费宝贵时间！")
end)

RegisterGlobalEvent(895, nil, function()
    evt.SetMessage("试炼包括从迷雾之墙的“前门”进入，从“后门”出去。\n我这里“门”字用得宽泛——到了你就明白。\n你不需要武器。\n你若在迷雾之墙里杀死任何生物，就会试炼失败。\n你若能完成此任务，就会被授予光明公会成员资格。祝好运。")
    SetQBit(QBit(613)) -- Complete the Walls of Mist without killing a single opponent and return to Gavin Magnus in Castle Lambent in Celeste.
    ClearQBit(QBit(664)) -- Enter Celeste from the grand teleporter in the Bracada Desert, then talk to Gavin Magnus in Castle Lambent in Celeste.
    evt.SetNPCTopic(418, 0, 896) -- Gavin Magnus topic 0: Proving Grounds
end)

RegisterGlobalEvent(896, nil, function()
    if not IsQBitSet(QBit(614)) then -- Completed Proving Grounds without killing a single creature
        evt.SetMessage("记住，你必须从迷雾之墙前门进，后门出。\n你绝不能在迷雾之墙里杀死任何生物。\n办完回来找我。")
        return
    end
    evt.SetMessage("你通过试炼了！\n这可是不小的成就——没几个人像你这么快成功。\n我的顾问们如今急于与你交谈；他们在塞莱斯特东侧的四座宅子里。\n再一次，恭喜！")
    ClearQBit(QBit(613)) -- Complete the Walls of Mist without killing a single opponent and return to Gavin Magnus in Castle Lambent in Celeste.
    evt.SetNPCTopic(418, 0, 0) -- Gavin Magnus topic 0 cleared
    AddValue(History(10), 0)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 50000)
    SetQBit(QBit(626)) -- Finished Wizard Proving Grounds
    SetAward(Award(6)) -- Completed Wizard Proving Grounds
    evt.SetNPCGreeting(418, 223) -- Gavin Magnus greeting: Welcome back, my friends. My advisors are anxious to speak with you.
    evt.MoveNPC(419, 1062) -- Resurectra -> Hostel
    evt.MoveNPC(420, 1063) -- Crag Hack -> Hostel
    evt.MoveNPC(421, 1064) -- Sir Caneghem -> Hostel
    evt.MoveNPC(422, 1065) -- Robert the Wise -> Hostel
    evt.SetNPCGreeting(419, 226) -- Resurectra greeting: I am glad you passed the King's test. It shows you are dedicated to the Path of Light. Now we should get down to business. My fellow advisors and I have some work for you if you're willing. You will, of course, be rewarded. And always remember, that whatever we ask of you, we are always moving toward a noble goal, one you will be proud to have been a part of.
    evt.SetNPCGreeting(420, 229) -- Crag Hack greeting: Now that you have completed the Test, I too, have a request of you. Unlike my friends, mine has little to do with advancing toward the Goal, but it is important nonetheless.
    evt.SetNPCGreeting(421, 232) -- Sir Caneghem greeting: I'm pleased to hear you passed the test. We must attack our enemies before they get too strong. I have a plan I think will do lasting damage to their noxious brotherhood. It's dangerous but bold, and cowards such as they will never expect it.
    evt.SetNPCGreeting(422, 235) -- Robert the Wise greeting: Like my friends, I have a task for you as well, but now is not the time. Finish their work first, then I will tell you about my mission.
    SetQBit(QBit(1605)) -- Joined the Light Guild
end)

RegisterGlobalEvent(897, nil, function()
    evt.SetMessage("我们需要你们帮忙，从我们的敌人死灵法师手里取回一把通往极重要之地的钥匙的一半。\n和我们一样，他们把自己那半钥匙安奉在他们最高的神庙——黑暗神庙。\n我不抱幻想这会容易。\n慢慢来，准备好再行动。\n另外，也把我们那半钥匙给我们带回来。\n它安奉在光明神庙。\n既然你是我们的盟友，你去取钥匙时没人会为难你。\n同理，也请你别伤害他们任何人。")
    SetQBit(QBit(615)) -- Retrieve the altar piece from the Temple of Light in Celeste and the Temple of Dark in the Pit and return them to Resurectra in Castle Lambent in Celeste.
    evt.SetNPCTopic(419, 0, 898) -- Resurectra topic 0: Temple of the Dark
end)
RegisterCanShowTopic(897, function()
    evt._BeginCanShowTopic(897)
    local visible = true
    if IsQBitSet(QBit(626)) then -- Finished Wizard Proving Grounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(898, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(1478) then -- Altar Piece
        if not HasItem(1479) then -- Altar Piece
            evt.SetMessage("好吧，我很高兴你们找到了我们那半钥匙，可你们还需要他们那半。\n先拿着它，等凑齐另一半。\n两半都齐了再回来找我。\n我来把它们合二为一。")
            return
        end
        evt.SetMessage("我就知道你们行！\n一秒都没怀疑过你们！\n[你把两半钥匙递给她，她用手指沿着裂缝一抚，将它们拼合。\n钥匙在你们眼前弥合，完好如新]终于！\n计划的一块拼图就位了。\n你们的帮助无可估量。\n我们早已欠你们的情，我料想在计划结出果实前，我们欠得更深。\n所以再相信我们一阵吧——我们正在筹划的未来会让你们震惊！")
        RemoveItem(1478) -- Altar Piece
        RemoveItem(1479) -- Altar Piece
        ClearQBit(QBit(744)) -- Altar Piece (Good) - I lost it
        ClearQBit(QBit(745)) -- Altar Piece (Evil) - I lost it
        AddValue(History(12), 0)
        AddValue(Experience, 50000)
        evt.SetNPCTopic(419, 0, 0) -- Resurectra topic 0 cleared
        ClearQBit(QBit(615)) -- Retrieve the altar piece from the Temple of Light in Celeste and the Temple of Dark in the Pit and return them to Resurectra in Castle Lambent in Celeste.
        SetQBit(QBit(627)) -- Finished Wizard Task 2 - Temple of Dark
        SetAward(Award(19)) -- Retrieved Both Temple Pieces
        evt.SetNPCGreeting(419, 227) -- Resurectra greeting: Once again, thanks for completing the key for us. We are in your debt for that act alone. I'm sure we will be even more in your debt in the near future.
        evt.ForPlayer(Players.Current)
        SubtractValue(ReputationInCurrentLocation, 5)
    elseif HasItem(1479) then -- Altar Piece
        evt.SetMessage("取回他们那半钥匙干得漂亮，但你们还需要我们这半。\n它在塞莱斯特这里的光明神庙里。")
    else
        evt.SetMessage("我看还没拿到任何一半钥匙。\n好吧，慢慢来。\n这事迟早得办，越早越好，但总比被锁在祭坛上、在他们某场血腥仪式中被黑暗大祭司献祭强。\n从黑暗与光明两座神庙把两半钥匙都带回来就行，顺便别把自己弄死了。")
    end
end)

RegisterGlobalEvent(899, nil, function()
    evt.SetMessage("我们的计划正迅速走向结局，可出了个岔子。\n克里根人——又称恶魔或魔鬼——必须在我们完成计划前被消灭。\n他们是可怕的威胁，如今虽只是舔舐伤口，终有一日会恢复力量、蹂躏世界。\n我们所做的一切若要持久，就必须先一劳永逸地消灭这些怪物。\n你们很强，可还强不到独自击败恶魔。\n他们最怕死灵法师常用的那类魔法，对我们自己法师的魔法则没那么怕。\n你们必须潜入恶魔基地，杀死他们的领袖泽诺费克斯。\n那应该能让他们对这个世界的威胁消停一阵。\n巫师们从他们的火山挖了一条隧道通到巨人领地——恶魔自有的土地。\n也许你们可以利用它。")
    SetQBit(QBit(616)) -- Go to Colony Zod in the Land of the Giants and slay Xenofex then return to Resurectra in Castle Lambent in Celeste.
    evt.SetNPCTopic(419, 1, 900) -- Resurectra topic 1: Strike the Devils
end)
RegisterCanShowTopic(899, function()
    evt._BeginCanShowTopic(899)
    local visible = true
    if IsQBitSet(QBit(631)) then -- Killed Evil MM3 Person
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(900, nil, function()
    if not IsQBitSet(QBit(617)) then -- Slayed Xenofex
        evt.SetMessage("我想完成这活儿不用急，可我们不想让死灵法师等我们尽自己本分、摧毁那障碍等得无聊。\n所以请你们，一觉得准备好了就必须进攻恶魔。\n记住巫师们从火山挖了一条隧道通到恶魔之地。\n你们应该能利用它赶到那儿。")
        return
    end
    evt.ShowMovie("\"mm3 people good\"", true)
    evt.SetMessage("你们是英雄！！！\n你们对抗恶魔的活儿干得漂亮极了！\n而营救罗兰国王一事，既出人意料又令人欣喜。\n历史永远不会忘记你们刚刚的作为！\n至少我，非常自豪能认识你们。\n")
    AddValue(Gold, 50000)
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 500000)
    ClearQBit(QBit(616)) -- Go to Colony Zod in the Land of the Giants and slay Xenofex then return to Resurectra in Castle Lambent in Celeste.
    SetQBit(QBit(632)) -- Got Hive part
    evt.SetNPCTopic(419, 1, 919) -- Resurectra topic 1: Final Task
    SetAward(Award(21)) -- Slayed Xenofex
end)

RegisterGlobalEvent(901, nil, function()
    evt.SetMessage("我们在泰塔利亚的盟友抱怨神秘异象有一阵子了。\n近几个月不断有人死亡失踪，他们问我们是否知情。\n我想我知道。\n我怀疑有个吸血鬼在猎食泰塔利亚。\n我没时间亲自追查，但为了让盟友高兴，我请你们去查一查。\n这怪物的存在，其牵连也许不止泰塔利亚运气差这么简单。")
    SetQBit(QBit(618)) -- Investigate the Wine Cellar in Tatalia and return to Crag Hack in Castle Lambent in Celeste.
    evt.SetNPCTopic(420, 0, 902) -- Crag Hack topic 0: Vampires
end)
RegisterCanShowTopic(901, function()
    evt._BeginCanShowTopic(901)
    local visible = true
    if IsQBitSet(QBit(626)) then -- Finished Wizard Proving Grounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(902, nil, function()
    if not IsQBitSet(QBit(619)) then -- Slayed the vampire
        evt.SetMessage("继续找那个吸血鬼。\n我敢说那就是我们的麻烦，他一定在泰塔利亚境内或附近某处。\n")
        return
    end
    evt.SetMessage("正如我所料！\n干得好。\n吸血鬼一死，泰塔利亚如今能睡得安稳些了。\n凯瑟琳女王也很感激，并已采取举措进一步加强布拉卡达与埃拉西亚的联系。")
    AddValue(Gold, 20000)
    AddValue(History(13), 0)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 50000)
    SetAward(Award(22)) -- Solved the Mystery of the Wine Cellar
    evt.SetNPCTopic(420, 0, 0) -- Crag Hack topic 0 cleared
    evt.SetNPCGreeting(420, 230) -- Crag Hack greeting: I just want to say again that you've done a good thing. Not only have we kept our promise to Queen Catherine, but we have rid the world of another monster. Thank you.
    ClearQBit(QBit(618)) -- Investigate the Wine Cellar in Tatalia and return to Crag Hack in Castle Lambent in Celeste.
    SetQBit(QBit(628)) -- Finished Wizard Task 3 - Wine Cellar
end)

RegisterGlobalEvent(903, nil, function()
    evt.SetMessage("计划涉及偷走死灵法师赖以求延残生的灵魂罐。\n他们把它藏在公会城堡某处，大概没料到会遭到你们这种人擅长的小规模突袭。\n快进快出的一击就该奏效。\n别在城堡附近逗留太久，否则增援会到；而且争取一次成功，否则他们会永久加倍巡逻。\n拿到灵魂罐后带回这里，好让我们妥善处置。")
    SetQBit(QBit(620)) -- Retrieve the Case of Soul Jars from Castle Gloaming in the Pit and return to Sir Caneghem in Celeste.
    evt.SetNPCTopic(421, 0, 904) -- Sir Caneghem topic 0: Soul Jars
end)
RegisterCanShowTopic(903, function()
    evt._BeginCanShowTopic(903)
    local visible = true
    if IsQBitSet(QBit(626)) then -- Finished Wizard Proving Grounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(904, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1404) then -- Case of Soul Jars
        evt.SetMessage("你们去取罐子时要准备充分。\n你们若被迫撤退再回来，他们的警戒就不会这么松了。\n")
        return
    end
    evt.SetMessage("[卡内格姆爵士好奇地打量着那些罐子，像隔着玻璃观察一条毒蛇]原来这就是灵魂罐。\n我以为会更……了不起一点，大概吧。\n干得好！\n[他接过那罐箱]我会确保这些罐子再也不见天日。")
    RemoveItem(1404) -- Case of Soul Jars
    ClearQBit(QBit(743)) -- Lich Jar Case - I lost it
    AddValue(History(11), 0)
    AddValue(Experience, 50000)
    ClearQBit(QBit(620)) -- Retrieve the Case of Soul Jars from Castle Gloaming in the Pit and return to Sir Caneghem in Celeste.
    SetQBit(QBit(629)) -- Finished Wizard Task 4 - Soul Jars
    evt.SetNPCTopic(421, 0, 0) -- Sir Caneghem topic 0 cleared
    evt.SetNPCGreeting(421, 233) -- Sir Caneghem greeting 233
    SetAward(Award(24)) -- Retrieved Soul Jars
    evt.ForPlayer(Players.Current)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.SetNPCGreeting(427, 251) -- Archibald Ironfist greeting: Find what you're looking for? Don't worry--I'm not too angry that you invaded. Most of my minions will regenerate, one way or the other. There's not even much treasure left.[Sigh] Well, if you're here to fight us in the name of the Light, don't bother. I've given up the conquest business. My former allies [Archibald spits on the ground] have abandoned our great achievements in the arts of Necromancy, and now seek merely to conquer the world. I have little doubt they will succeed. It won't go well for you and your masters if they do.[Archibald looks at you more closely, now] Then again, perhaps they won't. You have the smell of fate about you, as though you are destined for great things. Perhaps you will stop them. But smart money still bets against you.
    evt.MoveNPC(427, 0) -- Archibald Ironfist -> removed
    evt.SetNPCTopic(427, 1, 0) -- Archibald Ironfist topic 1 cleared
end)

RegisterGlobalEvent(905, nil, function()
    evt.SetMessage("我们的对手、阿基巴德从前的顾问们，每人随身带着一枚叫指令立方体的信物，我们必须弄到它才能完成目标。\n他们谁也不会自愿交出立方体，这意味着我们得用别的办法弄到手。\n你们得从其中一人手里夺来，我们认为最容易的是托尔伯蒂。\n与其余人不同，他不屑于正经安保，住在深渊的一间公寓里。\n我需要你们再潜入深渊，从他那儿拿到立方体。\n小心——他武装精良，比看上去难对付得多。\n拿到立方体就回来找我。\n我们距目标只剩一小段路，一切很快揭晓。")
    SetQBit(QBit(621)) -- Assassinate Tolberti in his house in the Pit and return his control cube to Robert the Wise in Celeste.
    evt.SetNPCTopic(422, 0, 906) -- Robert the Wise topic 0: Tolberti
end)
RegisterCanShowTopic(905, function()
    evt._BeginCanShowTopic(905)
    local visible = true
    if IsQBitSet(QBit(626)) then -- Finished Wizard Proving Grounds
        if IsQBitSet(QBit(627)) then -- Finished Wizard Task 2 - Temple of Dark
            if IsQBitSet(QBit(628)) then -- Finished Wizard Task 3 - Wine Cellar
                if IsQBitSet(QBit(629)) then -- Finished Wizard Task 4 - Soul Jars
                    visible = true
                    return visible
                else
                    visible = false
                    return visible
                end
            else
                visible = false
                return visible
            end
        else
            visible = false
            return visible
        end
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(906, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1477) then -- Control Cube
        evt.SetMessage("继续找他的公寓。\n托尔伯蒂从不相信自己会出事，而到目前为止他一直是对的。\n我们要证明他错了。\n无论如何把立方体弄到手。\n能不流血最好。\n必须杀他，那也没关系。\n拿到立方体就行。")
        return
    end
    evt.SetMessage("[罗伯特接过立方体]又一次，你们成功了！\n目标近在咫尺！\n我知道你们有许多问题，而你们再替复活特拉完成一项任务后，我敢说她会一一解答。\n你们会在 光辉城堡觐见厅里找到她和格文·马格努斯。")
    RemoveItem(1477) -- Control Cube
    AddValue(History(22), 0)
    AddValue(Experience, 250000)
    ClearQBit(QBit(621)) -- Assassinate Tolberti in his house in the Pit and return his control cube to Robert the Wise in Celeste.
    SetQBit(QBit(631)) -- Killed Evil MM3 Person
    SetAward(Award(25)) -- Assassinated Tolberti
    evt.SetNPCTopic(419, 3, 973) -- Resurectra topic 3: Ancient Weapon Grandmaster
    evt.SetNPCTopic(420, 1, 972) -- Crag Hack topic 1: Ancient Weapon Master
    evt.SetNPCTopic(421, 1, 971) -- Sir Caneghem topic 1: Ancient Weapon Expert
    evt.SetNPCGreeting(422, 0) -- Robert the Wise greeting cleared
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.MoveNPC(419, 220) -- Resurectra -> Throne Room
    evt.SetNPCTopic(422, 0, 950) -- Robert the Wise topic 0: Ancient Weapon
end)

RegisterGlobalEvent(907, nil, function()
    evt.SetMessage("我们需要你们帮忙，从我们的敌人法师手里取回一把通往极重要之地的钥匙的一半。\n和我们一样，他们把自己那半钥匙安奉在他们最高的神庙——光明神庙。\n这会是小菜一碟。\n大多数所谓好人花在自卫和治疗上的时间比造成伤害还多。\n不打架怎么赢？\n总之，慢慢来，准备好再行动。\n另外，也把我们那半钥匙给我们带回来。\n它安奉在黑暗神庙。\n既然你是我们的盟友，你去取钥匙时没人会为难你。\n可你要是觉得需要练练手，也不妨揍他们几个。\n他们不怎么重要，而且大多受再重的伤都能再生。\n试试吧——好玩得很！")
    SetQBit(QBit(634)) -- Retrieve the altar piece from the Temple of Light in Celeste and the Temple of Dark in the Pit and return them to Kastore in the Pit.
    evt.SetNPCTopic(423, 0, 908) -- Kastore topic 0: Temple of the Light
end)
RegisterCanShowTopic(907, function()
    evt._BeginCanShowTopic(907)
    local visible = true
    if IsQBitSet(QBit(622)) then -- Finished Necro Proving Grounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(908, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(1478) then -- Altar Piece
        if not HasItem(1479) then -- Altar Piece
            evt.SetMessage("好吧，我很高兴你们找到了我们那半钥匙，可你们还需要他们那半。\n先拿着它，等凑齐另一半。\n两半都齐了再回来，我来把它们修好。")
            return
        end
        evt.SetMessage("好极！\n[卡斯托拿过两半钥匙，把它们一撞。\n一道耀眼白光闪过，它们无缝拼合]\n计划第一部分完成。\n我就知道我们，呃，阿基巴德信任你们是做对了！\n")
        RemoveItem(1478) -- Altar Piece
        RemoveItem(1479) -- Altar Piece
        ClearQBit(QBit(744)) -- Altar Piece (Good) - I lost it
        ClearQBit(QBit(745)) -- Altar Piece (Evil) - I lost it
        AddValue(History(20), 0)
        AddValue(Experience, 50000)
        evt.SetNPCTopic(423, 0, 0) -- Kastore topic 0 cleared
        ClearQBit(QBit(634)) -- Retrieve the altar piece from the Temple of Light in Celeste and the Temple of Dark in the Pit and return them to Kastore in the Pit.
        SetQBit(QBit(623)) -- Finished Necro Task 2 - Temple of Light
        SetAward(Award(19)) -- Retrieved Both Temple Pieces
        evt.SetNPCGreeting(423, 227) -- Kastore greeting: Once again, thanks for completing the key for us. We are in your debt for that act alone. I'm sure we will be even more in your debt in the near future.
    elseif HasItem(1479) then -- Altar Piece
        evt.SetMessage("终于！\n我都开始怀疑你们是不是已经把自己弄死了。\n算了，无所谓。\n你们忘了从黑暗神庙取钥匙，那就上路吧。\n拿到后回来找我，我好把两半重新合为一体。")
    else
        evt.SetMessage("还没拿到钥匙？\n呸！\n我希望你们比眼下看起来能干！\n这能有多难？\n你们只需撞开前门，动手就打。\n人杀光了，你们就可以从容把他们的地方洗劫一空。\n赶紧把两半钥匙都给我们带来。")
    end
end)

RegisterGlobalEvent(909, nil, function()
    evt.SetMessage("我们的计划很快就要结果，但在准备就绪前还有几个细节要处理。\n克里根人，又称恶魔，与我们共享这个世界。\n我们之所以共享，只是因为他们如今弱小。\n他们一旦变强，就会杀光世上每一个人。\n总之，统治一个满是死人的世界没什么意思，所以我们必须在恶魔杀我们之前先杀掉他们。\n我们的计划是：你们潜入恶魔巢穴，摧毁他们的领袖泽诺费克斯。\n尼根的巫师们从他们的火山挖了一条隧道通到巨人领地——恶魔之地。\n你们大概可以利用那条隧道赶到那儿。")
    SetQBit(QBit(635)) -- Go to Colony Zod in the Land of the Giants and slay Xenofex then return to Kastore in the Pit.
    evt.SetNPCTopic(423, 1, 910) -- Kastore topic 1: Strike the Devils
end)
RegisterCanShowTopic(909, function()
    evt._BeginCanShowTopic(909)
    local visible = true
    if IsQBitSet(QBit(630)) then -- Killed Good MM3 Person
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(910, nil, function()
    if not IsQBitSet(QBit(617)) then -- Slayed Xenofex
        evt.SetMessage("你们能不能赶紧攻打恶魔？\n阿基巴德答应了兵力，可他们不会永远待命。\n更糟的是，恶魔繁殖得比兔子还快。\n你们等得越久，要打的就越多。")
        return
    end
    evt.ShowMovie("\"mm3 people evil\"", true)
    evt.SetMessage("太棒了！\n你们做到了！\n如今我们计划的最大单一威胁消失了！\n我们将成为世界之王！\n[卡斯托把头一仰，狂笑道]啊哈哈哈！！！！！！啊哈，哈。对。\n好了，干得不错。\n我甚至会原谅你们放跑那个叫罗兰的国王——你知道，我们本可以拿他当筹码。\n[他耸耸肩]我猜你们也是别无选择。\n无论如何，今天是个快乐的日子！\n")
    AddValue(Gold, 50000)
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 500000)
    ClearQBit(QBit(635)) -- Go to Colony Zod in the Land of the Giants and slay Xenofex then return to Kastore in the Pit.
    SetQBit(QBit(632)) -- Got Hive part
    evt.SetNPCTopic(423, 1, 921) -- Kastore topic 1: Final Task
    SetAward(Award(21)) -- Slayed Xenofex
end)

RegisterGlobalEvent(911, nil, function()
    evt.SetMessage("阿基巴德要我们替他的死灵法师找一处灵魂罐来源。\n举行赋予他们永生的仪式就需要这些罐子，而我们快用光了。\n想当巫妖的人远比我们的罐子多，所以一些死灵法师正面临真死的惨淡可能。\n罐子的制造者是巫师。\n去找他们，说服他们把罐子给我们。\n他们若不肯交出来，就动强夺——我已经受够了跟他们讨价还价。")
    SetQBit(QBit(636)) -- Retrieve the Case of Soul Jars from the Warlocks in Thunderfist Mountain and bring them to Maximus in the Pit.
    evt.SetNPCTopic(424, 0, 912) -- Maximus topic 0: Soul Jars
end)
RegisterCanShowTopic(911, function()
    evt._BeginCanShowTopic(911)
    local visible = true
    if IsQBitSet(QBit(622)) then -- Finished Necro Proving Grounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(912, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1404) then -- Case of Soul Jars
        evt.SetMessage("从他们手里拿罐子不必客气——无论如何把罐子弄来就行。\n必要时我们可以与他们重谈和平，就像每次采购灵魂罐时我们都要重谈价格一样。")
        return
    end
    evt.SetMessage("[马克西莫斯接过罐箱，喜形于色]干得漂亮。\n我都不问你们为弄到它付出了什么。\n成功本身就是说明。\n")
    RemoveItem(1404) -- Case of Soul Jars
    ClearQBit(QBit(743)) -- Lich Jar Case - I lost it
    AddValue(History(18), 0)
    AddValue(Experience, 50000)
    ClearQBit(QBit(636)) -- Retrieve the Case of Soul Jars from the Warlocks in Thunderfist Mountain and bring them to Maximus in the Pit.
    SetQBit(QBit(624)) -- Finished Necro Task 3 - Soul Jars
    SetAward(Award(24)) -- Retrieved Soul Jars
    evt.SetNPCTopic(424, 0, 0) -- Maximus topic 0 cleared
    evt.SetNPCGreeting(424, 242) -- Maximus greeting: I really can't thank you enough for bringing those jars back to us. The Necromancers have been clamoring for their delivery for months! This will improve morale around here 100%! Once again, thanks!
    evt.ForPlayer(Players.Current)
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(913, nil, function()
    evt.SetMessage("阿基巴德领主还有一个请求——占据了科兰克实验室的那些生物必须被驱逐——并把传送护盾打下来。\n实验室在图拉林森林皮尔庞特以东的一座岛上。\n小心——那实验室里的怪物是科兰克亲手造的，其中一些比世上别处常见的同类强大得多。\n那地方的东西你们随便拿。\n阿基巴德领主只对房产和实验室设备感兴趣。\n护盾一倒，阿基巴德领主就能通过劳埃德信标把死灵法师和设备搬进去了。")
    SetQBit(QBit(637)) -- Destroy the magical defenses inside Clanker's Laboratory and return to Dark Shade in the Pit.
    evt.SetNPCTopic(425, 0, 914) -- Dark Shade topic 0: Clanker's Laboratory
end)
RegisterCanShowTopic(913, function()
    evt._BeginCanShowTopic(913)
    local visible = true
    if IsQBitSet(QBit(622)) then -- Finished Necro Proving Grounds
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(914, nil, function()
    if not IsQBitSet(QBit(638)) then -- Destroyed the magical defenses in Clanker's Lab
        evt.SetMessage("这是个简单任务——动作快点！\n再重复一遍，实验室在图拉林森林皮尔庞特以东的岛上。\n把护盾打下来，你们那部分活儿就完成了。")
        return
    end
    evt.SetMessage("看到我们能指望你们，真好。\n我们的盟友里，像你们这样可靠又能干的太少。\n非常感谢你们的帮助。")
    AddValue(History(21), 0)
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 50000)
    ClearQBit(QBit(637)) -- Destroy the magical defenses inside Clanker's Laboratory and return to Dark Shade in the Pit.
    SetQBit(QBit(625)) -- Finished Necro Task 4 - Clanker's Lab
    evt.SetNPCTopic(425, 0, 0) -- Dark Shade topic 0 cleared
    evt.SetNPCGreeting(425, 245) -- Dark Shade greeting: Excellent work at Clanker's Laboratory! I know I already congratulated you on a job well done, but I just can't get over how well executed that entire plan was! The boys in the lab tell me they've already got most of old Clanker's body back together again, and they've animated the reassembled corpse. They've got him on Soul Jar research, but he's not quite as clever as he used to be, I'm told. Oh well, at least we don't need to fear him turning on us, eh?
    SetAward(Award(26)) -- Cleaned out Clanker's Laboratory
end)

RegisterGlobalEvent(915, nil, function()
    evt.SetMessage("正如阿基巴德有我们，布拉卡达的马格努斯国王也有他的顾问。\n而且，和我们一样，他们每人都戴着一枚叫指令立方体的小信物。\n我们需要他们一枚立方体，他们可不会白白交出来。\n我们必须夺他们一枚，而我们决定让智者罗伯特来遭这份殃。\n我们在他们城堡的一个间谍弄坏了他房间的锁。\n他们迟迟没换锁，所以你们进门应该不会有麻烦。\n我不在乎你们杀不杀他——拿到立方体立刻回来找我就行。")
    SetQBit(QBit(639)) -- Assassinate Robert the Wise in his house in Celeste and return to Tolberti in the Pit.
    evt.SetNPCTopic(426, 0, 916) -- Tolberti topic 0: Robert the Wise
end)
RegisterCanShowTopic(915, function()
    evt._BeginCanShowTopic(915)
    local visible = true
    if IsQBitSet(QBit(622)) then -- Finished Necro Proving Grounds
        if IsQBitSet(QBit(623)) then -- Finished Necro Task 2 - Temple of Light
            if IsQBitSet(QBit(624)) then -- Finished Necro Task 3 - Soul Jars
                if IsQBitSet(QBit(625)) then -- Finished Necro Task 4 - Clanker's Lab
                    visible = true
                    return visible
                else
                    visible = false
                    return visible
                end
            else
                visible = false
                return visible
            end
        else
            visible = false
            return visible
        end
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(916, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1477) then -- Control Cube
        evt.SetMessage("怎么了？\n别告诉我你们临阵退缩了？\n他是难对付，可不是不死之身。\n你们能拿下他！\n我要是觉得你们应付不来，就不会派你们执行这项任务。")
        return
    end
    evt.SetMessage("[托尔伯蒂拿过立方体]这让我们离完成计划非常近了。\n我知道卡斯托还没告诉你们计划到底是什么，可你们会喜欢的，我敢说！\n我不能多说，但我可以告诉你们，你们的地位会远不止哈蒙代尔领主那么简单，这点尽管放心！\n你们会在黄昏城堡王座上他的位子上找到卡斯托。")
    RemoveItem(1477) -- Control Cube
    AddValue(History(23), 0)
    AddValue(Experience, 250000)
    ClearQBit(QBit(639)) -- Assassinate Robert the Wise in his house in Celeste and return to Tolberti in the Pit.
    SetQBit(QBit(630)) -- Killed Good MM3 Person
    SetAward(Award(27)) -- Assassinated Robert the Wise
    evt.SetNPCTopic(423, 3, 973) -- Kastore topic 3: Ancient Weapon Grandmaster
    evt.SetNPCTopic(424, 1, 972) -- Maximus topic 1: Ancient Weapon Master
    evt.SetNPCTopic(425, 1, 971) -- Dark Shade topic 1: Ancient Weapon Expert
    evt.SetNPCGreeting(426, 0) -- Tolberti greeting cleared
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.SetNPCTopic(426, 0, 950) -- Tolberti topic 0: Ancient Weapon
end)

RegisterGlobalEvent(917, nil, function()
    evt.SetMessage("好，试炼。\n很简单。\n城市中心附近有个地方，我们叫繁殖区。\n深渊里有一大堆恶臭怪物，而且不断再生。\n这是奴隶、备件和打靶练习的好来源。\n我们所有死灵法师想升到入门以上级别时，都在那里试炼。\n我相信你们会通过试炼。\n跳进深渊，找条路出来。\n下面想杀什么就杀什么。\n毫不留情。\n逃出来后，爬出深渊再来见我。\n你们若完成此事，我就授予你们黑暗公会成员资格。*前提是*你们真完成……")
    SetQBit(QBit(640)) -- Complete the Breeding Zone and return to Archibald in the Pit.
    ClearQBit(QBit(663)) -- Enter the Pit from the Hall of the Pit in the Deyja Moors, then talk to Archibald in Castle Gloaming in the Pit.
    evt.SetNPCTopic(427, 0, 918) -- Archibald Ironfist topic 0: Breeding Pit
end)
RegisterCanShowTopic(917, function()
    evt._BeginCanShowTopic(917)
    local visible = true
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(918, nil, function()
    if not IsQBitSet(QBit(641)) then -- Completed Breeding Pit.
        evt.SetMessage("我开始怀疑我的盟友们说你们的话是对的。\n这么简单的试炼都过不了？\n你们是太害怕，还是太虚弱而成不了事？\n也许我们该找新盟友了？")
        return
    end
    evt.SetMessage("朋友们，你们很有前途。\n漂亮的表现。\n我想这足以向我的顾问们证明你们的本领。\n他们如今很想派任务给你们；他们在深渊西侧的四座宅子里。\n别担心。\n奖赏自然会跟着来。")
    AddValue(History(17), 0)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 50000)
    SetAward(Award(28)) -- Completed Necromancer Breeding Pit
    ClearQBit(QBit(640)) -- Complete the Breeding Zone and return to Archibald in the Pit.
    SetQBit(QBit(622)) -- Finished Necro Proving Grounds
    evt.SetNPCTopic(427, 0, 0) -- Archibald Ironfist topic 0 cleared
    evt.SetNPCGreeting(427, 252) -- Archibald Ironfist greeting: Welcome back, allies. My advisors are eager to speak with you.
    evt.MoveNPC(423, 1079) -- Kastore -> Hostel
    evt.MoveNPC(424, 1071) -- Maximus -> Hostel
    evt.MoveNPC(425, 1078) -- Dark Shade -> Hostel
    evt.MoveNPC(426, 1070) -- Tolberti -> Hostel
    evt.SetNPCGreeting(423, 238) -- Kastore greeting: So you passed the test! Good! Now we can get down to business. You'll find that working for us�[Kastore shakes his head, and starts over] No. You'll find that working with us will advance our mutual goals and interests very quickly. We have big plans--plans big enough to include aggressive people like yourselves. As time passes, we will reveal our biggest plans to you.
    evt.SetNPCGreeting(424, 241) -- Maximus greeting: Hello! I am Maximus. Good to have you on our side. I'm glad you survived the Test. I'm against wasting good talent on that test, but my associates insist. [sigh] What can you do?
    evt.SetNPCGreeting(425, 244) -- Dark Shade greeting: I knew you would pass that Test! It really isn't that hard, if you are properly determined. You just have to harden your heart and do what must be done. The mission I have in mind for you will require that same resolve. After you passed that test, I'm sure you're up to it!
    evt.SetNPCGreeting(426, 247) -- Tolberti greeting: I, too, have a task for you in mind, but it will have to wait until you are done with my associates' missions. Return to me once you have finished their tasks.
    SetQBit(QBit(1606)) -- Joined the Dark Guild
end)

RegisterGlobalEvent(919, nil, function()
    evt.SetMessage("实现目标的时刻到了。\n我们派你们执行这许多任务，原因很简单：\n我们一直在忙于收集开启通往远古者之门所需的零件——那些远古者在久远以前殖民了这个世界。\n不幸的是，我们从前的同袍也在为他们自己的黑暗梦想寻觅这些零件。\n他们想重建沉寂时代之前的天炉，用它复制我们当年带到你们世界的武器。\n我们一直在与他们争夺这些零件，但我们终于凑齐了所需之物。\n只缺一样。\n我们在你们的世界上一直找不到振荡过载器。\n本会前功尽弃，可林肯号上恰好有一台——就是载我们来到你们世界的那艘飞行器。\n它在埃里以西的海里，且封闭着不让进入，连我们自己也不行。\n现在你们必须穿上我们的环境服，进入飞船，带着过载器回来；你们会在这觐见厅外的箱子里找到这些衣服。\n衣服要正常运作，你们身上就不能穿任何装备。\n至于我们，必须守在门边，与从前的同志作战。\n")
    SetQBit(QBit(642)) -- Go to the Lincoln in the sea west of Avlee and retrieve the Oscillation Overthruster and return it to Resurectra in Celeste.
    evt.SetNPCTopic(419, 1, 920) -- Resurectra topic 1: Final Task
end)

RegisterGlobalEvent(920, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(783)) then -- Finished MM7 Story
        evt.SetMessage("你们回来了！\n终于！\n我们拿到过载器了。\n现在，跟我们来，我们开启通往远古者的路！")
        return
    elseif HasItem(1407) then -- Oscillation Overthruster
        SetQBit(QBit(783)) -- Finished MM7 Story
        RemoveItem(1407) -- Oscillation Overthruster
        ClearQBit(QBit(747)) -- Wetsuit - I lost it
        ClearQBit(QBit(748)) -- Final Part - I lost it
        evt.SetNPCTopic(419, 1, 0) -- Resurectra topic 1 cleared
        evt.ShowMovie("\"Endgame 1 Good\"", true)
        evt.SetNPCGroupNews(61, 84) -- NPC group 61 "Southern Village Group in Harmondy" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(62, 84) -- NPC group 62 "Main village in Harmondy" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(63, 84) -- NPC group 63 "Tent camp in Erathia" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(64, 84) -- NPC group 64 "Stedwick Group" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(65, 84) -- NPC group 65 "Stilt city dwellers in the Tularean Forest" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(66, 84) -- NPC group 66 "Group walkers in the Tularean forest" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(67, 84) -- NPC group 67 "Northern town on Deyja" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(68, 84) -- NPC group 68 "Southern town in Deyja" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(69, 86) -- NPC group 69 "Stable and Tele dwellers in Bracada" -> news 86: "Congratulations on completing the gate!  Erathia is in your debt!"
        evt.SetNPCGroupNews(70, 86) -- NPC group 70 "Eastern village and boat dwellers in Bracada" -> news 86: "Congratulations on completing the gate!  Erathia is in your debt!"
        evt.SetNPCGroupNews(71, 86) -- NPC group 71 "Ridge walkers in Bracada" -> news 86: "Congratulations on completing the gate!  Erathia is in your debt!"
        evt.SetNPCGroupNews(72, 86) -- NPC group 72 "Peasents up till town fountain in Celeste" -> news 86: "Congratulations on completing the gate!  Erathia is in your debt!"
        evt.SetNPCGroupNews(73, 86) -- NPC group 73 "Peasents after town fountain in Celeste" -> news 86: "Congratulations on completing the gate!  Erathia is in your debt!"
        evt.SetNPCGroupNews(74, 84) -- NPC group 74 "Peasents in first area of the pit" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(75, 84) -- NPC group 75 "Peasents in the second area of the pit" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(76, 84) -- NPC group 76 "Peasents in the third area of the pit" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(77, 84) -- NPC group 77 "Peasents in main town of nighon" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(78, 84) -- NPC group 78 "Peasents in western town of Nighon" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(79, 84) -- NPC group 79 "Peasents in Eastern village of Nighon" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(80, 84) -- NPC group 80 "Peasents in the Mercenary guild village" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(81, 84) -- NPC group 81 "Peasents in the wharf town" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(82, 84) -- NPC group 82 "Peasents in the village area" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
        evt.SetNPCGroupNews(83, 84) -- NPC group 83 "Peasents in the Dock area" -> news 84: "I heard there was a gate built to the Ancients!  I wonder what they look like."
    else
        evt.SetMessage("别忘了去林肯号需要潜水服。\n这些衣服在这觐见厅外的箱子里，林肯号在埃里以西的海里。\n尽快带着过载器回来。")
    end
end)

RegisterGlobalEvent(921, nil, function()
    evt.SetMessage("我们最光辉的时刻到了。\n你们忙着处理那些重要任务时，我和同袍一直在与从前的朋友争夺重建传说中天炉所需的零件。\n所谓从前的朋友，我指的是法师马格努斯国王的四位首席顾问。\n他们有一个建造通往远古者之门的计划。\n他们本可以与我们站在一起，却为了“更美好未来”这种渺茫希望把一切都抛弃了。\n可是你们！\n你们一直与我们站在一起。\n只剩一项任务——我们需要从我们的老飞船林肯号上取来振荡过载器。\n我们在你们世界上一直找不到。\n飞船在埃里以西的海里，封闭着不让进入，连我们自己也不行。\n现在你们必须穿上我们的环境服，进入飞船，带着过载器回来。\n我们的旧环境服已在这觐见厅外的箱子里为你们备好。\n衣服要正常运作，你们身上就不能穿任何装备。\n我们将镇守天炉，抵御敌人。\n朋友们，把过载器给我们带来，我们就一起统治世界！")
    AddValue(History(27), 0)
    SetQBit(QBit(643)) -- Go to the Lincoln in the sea west of Avlee and retrieve the Oscillation Overthruster and return it to Kastore in the Pit.
    evt.SetNPCTopic(423, 1, 922) -- Kastore topic 1: Final Task
end)

RegisterGlobalEvent(922, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1407) then -- Oscillation Overthruster
        evt.SetMessage("别忘了去林肯号需要环境服。\n这些衣服在觐见厅外的箱子里，林肯号在埃里以西的海里。\n你们还需要知道什么？")
        return
    end
    RemoveItem(1407) -- Oscillation Overthruster
    ClearQBit(QBit(643)) -- Go to the Lincoln in the sea west of Avlee and retrieve the Oscillation Overthruster and return it to Kastore in the Pit.
    ClearQBit(QBit(748)) -- Final Part - I lost it
    evt.SetNPCTopic(423, 1, 0) -- Kastore topic 1 cleared
    SetQBit(QBit(783)) -- Finished MM7 Story
    evt.ShowMovie("\"Endgame 2 Evil\"", true)
    evt.SetNPCGroupNews(61, 85) -- NPC group 61 "Southern Village Group in Harmondy" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(62, 85) -- NPC group 62 "Main village in Harmondy" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(63, 85) -- NPC group 63 "Tent camp in Erathia" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(64, 85) -- NPC group 64 "Stedwick Group" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(65, 85) -- NPC group 65 "Stilt city dwellers in the Tularean Forest" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(66, 85) -- NPC group 66 "Group walkers in the Tularean forest" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(67, 87) -- NPC group 67 "Northern town on Deyja" -> news 87: "Congratulations on completing the forge!  Victory will surely be ours!"
    evt.SetNPCGroupNews(68, 87) -- NPC group 68 "Southern town in Deyja" -> news 87: "Congratulations on completing the forge!  Victory will surely be ours!"
    evt.SetNPCGroupNews(69, 85) -- NPC group 69 "Stable and Tele dwellers in Bracada" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(70, 85) -- NPC group 70 "Eastern village and boat dwellers in Bracada" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(71, 85) -- NPC group 71 "Ridge walkers in Bracada" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(72, 85) -- NPC group 72 "Peasents up till town fountain in Celeste" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(73, 85) -- NPC group 73 "Peasents after town fountain in Celeste" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(74, 87) -- NPC group 74 "Peasents in first area of the pit" -> news 87: "Congratulations on completing the forge!  Victory will surely be ours!"
    evt.SetNPCGroupNews(75, 87) -- NPC group 75 "Peasents in the second area of the pit" -> news 87: "Congratulations on completing the forge!  Victory will surely be ours!"
    evt.SetNPCGroupNews(76, 87) -- NPC group 76 "Peasents in the third area of the pit" -> news 87: "Congratulations on completing the forge!  Victory will surely be ours!"
    evt.SetNPCGroupNews(77, 85) -- NPC group 77 "Peasents in main town of nighon" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(78, 85) -- NPC group 78 "Peasents in western town of Nighon" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(79, 85) -- NPC group 79 "Peasents in Eastern village of Nighon" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(80, 85) -- NPC group 80 "Peasents in the Mercenary guild village" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(81, 85) -- NPC group 81 "Peasents in the wharf town" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(82, 85) -- NPC group 82 "Peasents in the village area" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
    evt.SetNPCGroupNews(83, 85) -- NPC group 83 "Peasents in the Dock area" -> news 85: "I've heard rumors of goblins and undead armed with ancient weapons threatening to conquer Erathia!  How dreadful!"
end)

RegisterGlobalEvent(923, nil, function()
    evt.MoveToMap(-6784, -2832, 1649, 512, 0, 0, 0, 0, "t01.blv") -- Temple of the Light
end)

RegisterGlobalEvent(924, nil, function()
    evt.MoveToMap(0, -4059, 513, 512, 0, 0, 0, 0, "t02.blv") -- Temple of the Dark
end)

RegisterGlobalEvent(925, nil, function()
    evt.SetMessage("托马斯·格雷掌管巫术学校。\n你们想晋升法师或荣誉法师，就找他。\n他的房间就在我身后那扇门进去。")
end)

RegisterGlobalEvent(926, nil, function()
    evt.SetMessage("想办理巫术学校卷轴商店会员吗？\n会员可免费使用我们图书馆里的卷轴。\n六个月会员费 5000 金币，不过商店每周才补货一次。")
    evt.SetNPCTopic(620, 1, 927) -- Eric Swarrel topic 1: Book Shop
end)
RegisterCanShowTopic(926, function()
    evt._BeginCanShowTopic(926)
    local visible = true
    if IsQBitSet(QBit(657)) then -- Membership to the School of Sorcery Scroll Shop
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(927, nil, function()
    if not IsAtLeast(Gold, 5000) then
        evt.SetMessage("你的金币不够——想骗法师是没用的。")
        return
    end
    evt.SetMessage("这是会员卡，记住只有效六个月。\n看看这儿前厅的架子上有什么。")
    SetQBit(QBit(657)) -- Membership to the School of Sorcery Scroll Shop
    if not IsAtLeast(Gold, 5000) then
        return
    end
    SubtractValue(Gold, 5000)
    evt.SetNPCTopic(620, 1, 0) -- Eric Swarrel topic 1 cleared
end)

RegisterGlobalEvent(928, nil, function()
    evt.SetMessage("你们想把佐卡尔四世的遗骨葬进我们的古墓？\n这儿没有矮人愿冒这个险，可佐卡尔理应入土为安在正确的地方。\n找那座秘密古墓，只有一个入口的那座。\n里面有口棺材，正等着佐卡尔的遗骨。")
    AddValue(InventoryItem(1428), 1428) -- Zokarr IV's Skull
    SetQBit(QBit(740)) -- Dwarf Bones - I lost it
    evt.SetNPCTopic(398, 1, 0) -- Hothfarr IX topic 1 cleared
end)
RegisterCanShowTopic(928, function()
    evt._BeginCanShowTopic(928)
    local visible = true
    if IsQBitSet(QBit(566)) then -- Retrieve the bones of the Dwarf King from the tunnels between Stone City and Nighon and place them in their proper resting place in the Barrow Downs, then return to Anthony Green in the Tularean Forest.
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(929, nil, function()
    evt.SetMessage("除了你们这些哈蒙代尔新领主，我们无人可求。光明之灯是一件珍贵的圣物，埃拉西亚各神庙都在使用。\n它的价值更多是象征性而非力量——没有它，神庙仆从就会失去信仰。\n这盏灯从石头城神庙被送来本神庙途中失踪了。\n我们相信它遗失在迷宫般的古墓群某处。\n请找到它，还给我们。")
    evt.SetNPCTopic(432, 0, 930) -- Tarin Withern topic 0: Quest
    SetQBit(QBit(667)) -- Retrieve the Lantern of Light from the Barrow Downs and return it to Tarin Withern in Harmondale. - Barrow Lantern Quest
end)

RegisterGlobalEvent(930, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1450) then -- Lantern of Light
        evt.SetMessage("你们找到光明之灯了吗？\n我们确信它遗失在拜尔德斯的古墓迷宫里。")
        return
    end
    evt.SetMessage("谢谢你们，哈蒙代尔的领主们。\n神灯归来将重振我们的信仰，让我们能继续侍奉。\n请收下这一点薄酬，聊表我们的感激。")
    RemoveItem(1450) -- Lantern of Light
    SetAward(Award(30)) -- Returned Withern's Lantern
    AddValue(Experience, 5000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 1000)
    ClearQBit(QBit(667)) -- Retrieve the Lantern of Light from the Barrow Downs and return it to Tarin Withern in Harmondale. - Barrow Lantern Quest
    evt.SetNPCTopic(432, 0, 0) -- Tarin Withern topic 0 cleared
    evt.SetNPCGreeting(432, 267) -- Tarin Withern greeting 267
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(931, nil, function()
    evt.SetMessage("我兄弟哈尔达上个月过世了。\n家人把他的遗骸送来给我，让他最终安息。\n给我送遗骸的人出了事；他们在尼根失踪，此后音讯全无。我担心找不到他们，我兄弟的灵魂永远不得安宁！\n你们要是找到哈尔达，请把他送回给我？我会重谢你们！")
    evt.SetNPCTopic(433, 0, 932) -- Mazim Dusk topic 0: Quest
    SetQBit(QBit(668)) -- Retrieve Haldar's Remains from the Maze in Nighon and return them to Mazim Dusk in Nighon. - Haldar's Remains Quest
end)

RegisterGlobalEvent(932, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1430) then -- Haldar's Remains
        evt.SetMessage("你们找到哈尔达的遗骸了吗？\n他的灵魂一定在受剧痛！\n请找到装他遗骸的罐子！")
        return
    end
    evt.SetMessage("谢谢你们归还我“兄弟”的遗骸！\n他本是个有前途的巫师，生命结束得太早。\n如今有了他的遗骸，我会设法把他以巫妖之身召回来，我们一起追求更伟大的力量与荣耀！")
    RemoveItem(1430) -- Haldar's Remains
    SetAward(Award(32)) -- Returned Haldar's Remains
    AddValue(Experience, 50000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 35000)
    ClearQBit(QBit(668)) -- Retrieve Haldar's Remains from the Maze in Nighon and return them to Mazim Dusk in Nighon. - Haldar's Remains Quest
    evt.SetNPCTopic(433, 0, 0) -- Mazim Dusk topic 0 cleared
    evt.SetNPCGreeting(433, 269) -- Mazim Dusk greeting: My thanks for returning Haldar's remains!
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(933, nil, function()
    evt.SetMessage("各位大人，我从埃里回来时被一群恶匪袭击，他们抢走了我从精灵那里带来的一切。\n他们连我的图章戒指都拿走了！\n没有它我做不了生意，因为我无法在自己与其他商人的合同上盖章。\n我听说匪徒以埃拉西亚一个营地为据点，可我不是武士——跟他们交手撑不过一分钟。\n请去埃拉西亚，替我伸张正义！")
    evt.SetNPCTopic(434, 0, 934) -- Davrik Peladium topic 0: Quest
    SetQBit(QBit(669)) -- Retrieve Davrik's Signet ring from the Bandit Caves in the northeast of Erathia and return it to Davrik Peladium in Harmondale. - Davrik's Ring Quest
end)

RegisterGlobalEvent(934, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1408) then -- Signet Ring
        evt.SetMessage("你还没拿到我的戒指？\n匪徒在埃拉西亚格芬哈特城堡南边。\n请帮帮我，我没有别人可求了。")
        return
    end
    evt.SetMessage("我的戒指！\n谢谢领主们。\n我如今可以重操旧业、弥补损失了，而你们还让所有商人的商路更安全了！")
    RemoveItem(1408) -- Signet Ring
    SetAward(Award(34)) -- Returned Lord Davrik's signet Ring
    AddValue(Experience, 5000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    ClearQBit(QBit(669)) -- Retrieve Davrik's Signet ring from the Bandit Caves in the northeast of Erathia and return it to Davrik Peladium in Harmondale. - Davrik's Ring Quest
    evt.SetNPCTopic(434, 0, 0) -- Davrik Peladium topic 0 cleared
    evt.MoveNPC(434, 0) -- Davrik Peladium -> removed
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(935, nil, function()
    evt.SetMessage("这么说你们就是哈蒙代尔领主，嗯？\n你们看着不怎么样；历史会怎么评判你们，我们走着瞧！\n我本人是位历史学家，也是稀有历史物件收藏家。\n马克姆勋爵也收藏这类有趣物件，而有一件尤其能补全我的收藏——帕森的羽毛笔——就是签署结束第一次木材战争的《皮尔庞特条约》用的那支。\n我知道你们以前和马克姆勋爵打过交道，毕竟你们就是这样成为这片土地领主的；你们若把这封信带给泰塔利亚的马克姆勋爵，我相信他会爽快回应。\n马克姆勋爵若把这件东西让你们带回来，我就更加欠你们的情！\n我一定会好好记录你们的英勇事迹！")
    evt.SetNPCTopic(435, 0, 936) -- Norbert Thrush topic 0: Thrush's Letter
    SetQBit(QBit(670)) -- Take Sealed Letter to Lord Markham in Lord Markham's Manor in Tatalia for collector Norbert Thrush.
    AddValue(InventoryItem(1416), 1416) -- Letter from Norbert Thrush to Lord Markham
end)

RegisterGlobalEvent(936, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1405) then -- Parson's Quill
        evt.SetMessage("是马克姆勋爵不肯给你们羽毛笔，还是你们还没去见他？\n他的庄园在泰塔利亚，请别忘了帮我。")
        return
    end
    evt.SetMessage("真是签署《皮尔庞特条约》用的那根孔雀羽毛。\n我的收藏齐了！\n我一定会正确公正地记录你们的作为与事迹，让所有人都知道你们是哈蒙代尔真正的领主！")
    RemoveItem(1405) -- Parson's Quill
    SetAward(Award(38)) -- Returned Parson's Quill to Norbert Thrush
    AddValue(Experience, 5000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 2000)
    ClearQBit(QBit(671)) -- Return Parson's Quill to Norbert Thrush in Erathia.
    evt.SetNPCTopic(435, 0, 0) -- Norbert Thrush topic 0 cleared
    evt.SetNPCGreeting(435, 273) -- Norbert Thrush greeting 273
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(937, nil, function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("历史学家诺伯特·思拉什的来信？让我看看。\n[马克姆勋爵匆匆扫过信]嗯……他想要那根签署《皮尔庞特条约》用的孔雀羽毛，是吧。\n好吧，既然他手里有所谓条约原件，我想羽毛该归他。\n他答应给我收藏里任何别的东西。\n把这个带给他，告诉他我很快会亲自去他那儿取货！")
    RemoveItem(1416) -- Letter from Norbert Thrush to Lord Markham
    evt.ForPlayer(Players.Current)
    AddValue(InventoryItem(1405), 1405) -- Parson's Quill
    ClearQBit(QBit(670)) -- Take Sealed Letter to Lord Markham in Lord Markham's Manor in Tatalia for collector Norbert Thrush.
    SetQBit(QBit(671)) -- Return Parson's Quill to Norbert Thrush in Erathia.
    evt.SetNPCTopic(340, 4, 0) -- Lord Markham topic 4 cleared
end)
RegisterCanShowTopic(937, function()
    evt._BeginCanShowTopic(937)
    local visible = true
    evt.ForPlayer(Players.All)
    if HasItem(1416) then -- Letter from Norbert Thrush to Lord Markham
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(938, nil, function()
    evt.SetMessage("我听说你们这些人是哈蒙代尔的新领主，嗯？\n也许你们能帮我一个大忙，顺便也帮帮你们自己。\n北边埃里有座山下厅堂，是仙灵之王的领地。\n他欠我一份从前效劳的人情，我想去讨回来。\n不幸的是，厅堂里的仙灵和他们的把戏把我吓得半死。\n你们若肯把这封信送给仙灵之王，再把他给的东西带回来给我，我将非常感激。\n你们也会有机会亲自见见仙灵之王。")
    SetQBit(QBit(691)) -- Take the sealed letter to the Faerie King in the Hall under the Hill in Avlee.
    AddValue(InventoryItem(1409), 1409) -- Letter from Johann Kerrid to the Faerie King
    evt.SetNPCTopic(436, 0, 940) -- Johann Kerrid topic 0: Quest
end)

RegisterGlobalEvent(939, nil, function()
    evt.ForPlayer(Players.All)
    evt.SetMessage("这么说，约翰是想要仙灵笛，嗯？\n我倒不意外——他自己不敢来，那个胆小鬼。\n不过笛子要你们付出代价……你们全部的食物。\n当然，你们要想补充行囊，我下面有些可口的食物。")
    RemoveItem(1409) -- Letter from Johann Kerrid to the Faerie King
    AddValue(Experience, 2000)
    evt.ForPlayer(Players.Current)
    AddValue(InventoryItem(1435), 1435) -- Faerie Pipes
    evt.SetNPCTopic(391, 1, 0) -- Faerie King topic 1 cleared
    ClearQBit(QBit(691)) -- Take the sealed letter to the Faerie King in the Hall under the Hill in Avlee.
    SetQBit(QBit(692)) -- Take the Faerie Pipes to Johann Kerrid in the Tularean Forest.
    SetValue(Food, 0)
end)
RegisterCanShowTopic(939, function()
    evt._BeginCanShowTopic(939)
    local visible = true
    evt.ForPlayer(Players.All)
    if HasItem(1409) then -- Letter from Johann Kerrid to the Faerie King
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(940, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1435) then -- Faerie Pipes
        evt.SetMessage("别忘了把信交给仙灵之王。\n没有它，他多半根本不想搭理你们。")
        return
    end
    evt.SetMessage("好极！\n笛子！\n你们不知道这对我意味着什么。\n来，拿这个当奖赏，再次感谢你们帮我这件事！")
    RemoveItem(1435) -- Faerie Pipes
    AddValue(Experience, 5000)
    SetAward(Award(39)) -- Returned Faerie Pipes to Johann Kerrid
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 1000)
    ClearQBit(QBit(692)) -- Take the Faerie Pipes to Johann Kerrid in the Tularean Forest.
    evt.SetNPCTopic(436, 0, 0) -- Johann Kerrid topic 0 cleared
    evt.SetNPCGreeting(436, 275) -- Johann Kerrid greeting 275
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(941, nil, function()
    evt.SetMessage("我们只请你们帮一个小忙。\n光辉城堡里存着一块珍贵的挂毯，是三年前从攻打瞭望塔的行动中缴获的。\n我想请你们替我把挂毯弄来，因为你们肯定多少能进那座城堡——我平时的同伙连那地方都靠近不了。\n我听说附近有一大帮地精和叛逃剑士出没……他们要是碰巧摸到哈蒙代尔就可惜了。\n你们有一个月时间弄到挂毯。\n别迟到。")
    SetQBit(QBit(694)) -- Steal the Tapestry from your associate's Castle and return it to Niles Stantley in the Mercenary Guild in Tatalia. - Do the Merc Guild Quest
    SetValue(Counter(5), 0)
    evt.SetNPCTopic(438, 0, 943) -- Niles Stantley topic 0: Quest
end)
RegisterCanShowTopic(941, function()
    evt._BeginCanShowTopic(941)
    local visible = true
    if IsQBitSet(QBit(695)) then -- Failed either goto or do guild quest
        visible = false
        return visible
    else
        if IsQBitSet(QBit(611)) then -- Chose the path of Light
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(942, nil, function()
    evt.SetMessage("我们请你们帮一个忙。\n黄昏城堡里存着一块稀有珍贵的挂毯，是沉寂时代前夕的古物，从前从法师那里偷走的。\n我想请你们替我把挂毯弄来，因为我平时的同伙进不了黄昏城堡。\n作为回报，我会确保哈蒙代尔附近那一大帮叛逃剑士和地精不会偶然摸到你们安静的小村子。\n你们有一个月；别迟到。")
    SetQBit(QBit(694)) -- Steal the Tapestry from your associate's Castle and return it to Niles Stantley in the Mercenary Guild in Tatalia. - Do the Merc Guild Quest
    SetValue(Counter(5), 0)
    evt.SetNPCTopic(438, 1, 943) -- Niles Stantley topic 1: Quest
end)
RegisterCanShowTopic(942, function()
    evt._BeginCanShowTopic(942)
    local visible = true
    if IsQBitSet(QBit(695)) then -- Failed either goto or do guild quest
        visible = false
        return visible
    else
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(943, nil, function()
    evt.ForPlayer(Players.All)
    if IsAtLeast(Counter(5), 672) then
        evt.SetMessage("这样啊。\n看来那帮叛逃者确实发现了你们的小镇，已经开始抢劫了。\n你们也许会发现银行账户有点，嗯，缩水。\n把这当成守时的一课吧。\n去吧，祝你们过个愉快、愉快的一天。")
        SetQBit(QBit(695)) -- Failed either goto or do guild quest
        return
    elseif HasItem(1422) then -- Big Tapestry
        evt.SetMessage("好极！\n我看有事找你们时，你们靠得住、干得漂亮。\n下次我需要办事时会记住这点。\n你们的奖赏不过是维持现状——事情本来可能比现在糟得多。\n去吧，我没空陪你们了。")
        RemoveItem(1422) -- Big Tapestry
        AddValue(ReputationInCurrentLocation, 5)
        SetQBit(QBit(702)) -- Finished with Malwick & Assc.
        ClearQBit(QBit(694)) -- Steal the Tapestry from your associate's Castle and return it to Niles Stantley in the Mercenary Guild in Tatalia. - Do the Merc Guild Quest
        evt.SetNPCTopic(438, 0, 0) -- Niles Stantley topic 0 cleared
        evt.SetNPCTopic(438, 1, 0) -- Niles Stantley topic 1 cleared
        evt.SetNPCTopic(438, 2, 0) -- Niles Stantley topic 2 cleared
    else
        evt.SetMessage("你们还没拿到挂毯，时间却在流逝。\n明智点就专心干手头的事，别拿废话来烦我。")
        return
    end
end)

RegisterGlobalEvent(944, nil, function()
    evt.SetMessage("几年前，我们在石头城底下采矿时，发现了一件相当惊人的事。\n看来尼根的巫师曾挖穿海底，想偷袭埃拉西亚海岸。\n他们粗心的隧道工程使这一带地面下沉，直到如今，古老矮人古墓周围、当然还有石头城，都高悬于地形之上。\n我们在矿区发现了一队穴居人，还有一条通回尼根的隧道。\n你们若能帮我们清掉隧道里的穴居人，我们就能恢复采矿。\n你们能帮我们吗？")
    SetQBit(QBit(698)) -- Kill all the Troglodytes underneath Stone City and return to Spark Burnkindle in Stone City.
    evt.SetNPCTopic(439, 0, 945) -- Spark Burnkindle topic 0: Quest
end)

RegisterGlobalEvent(945, nil, function()
    if not evt.CheckMonstersKilled(ActorKillCheck.MonsterId, 411, 0, false) then -- monster 411 "Troglodyte Drone"; all matching actors defeated
        evt.SetMessage("下层矿层里还有穴居人在游荡。\n请把他们清除掉！")
        return
    end
    if not evt.CheckMonstersKilled(ActorKillCheck.MonsterId, 412, 0, false) then -- monster 412 "Troglodyte Soldier"; all matching actors defeated
        evt.SetMessage("下层矿层里还有穴居人在游荡。\n请把他们清除掉！")
        return
    end
    if not evt.CheckMonstersKilled(ActorKillCheck.MonsterId, 413, 0, false) then -- monster 413 "Troglodyte Queen"; all matching actors defeated
        evt.SetMessage("下层矿层里还有穴居人在游荡。\n请把他们清除掉！")
        return
    end
    evt.SetMessage("他们走了？\n被赶回通尼根的连接隧道了！\n好极！\n我们可以立刻恢复采矿了！\n非常感谢你们的帮助；拿这个当酬谢吧。")
    AddValue(Gold, 2500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 5000)
    ClearQBit(QBit(698)) -- Kill all the Troglodytes underneath Stone City and return to Spark Burnkindle in Stone City.
    SetAward(Award(40)) -- Troglodyte Slayer
    evt.SetNPCTopic(439, 0, 0) -- Spark Burnkindle topic 0 cleared
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.SetNPCGreeting(439, 279) -- Spark Burnkindle greeting: Thank you for helping us by getting rid of those nasty Troglodytes!
end)

RegisterGlobalEvent(946, nil, function()
    evt.SetMessage("我最近得到消息，凯瑟琳女王在埃拉西亚的军队已开始集结攻打迪雅。\n由于地形险恶，他们开始繁育训练狮鹫协助进攻。\n这些狮鹫在埃拉西亚和布拉卡达沙漠两地饲养。\n我需要你们杀光这两个地区的所有狮鹫，好迫使埃拉西亚人大幅推迟进攻计划。")
    SetQBit(QBit(699)) -- Kill all the Griffins in Erathia and the Bracada Desert and return to Seth Drakkson in the Deyja Moors.
    evt.SetNPCTopic(623, 0, 947) -- Seth Drakkson topic 0: Quest
end)
RegisterCanShowTopic(946, function()
    evt._BeginCanShowTopic(946)
    local visible = true
    if IsQBitSet(QBit(612)) then -- Chose the path of Dark
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(947, nil, function()
    if IsQBitSet(QBit(700)) then -- Killed all Erathian Griffins
        if not IsQBitSet(QBit(701)) then -- Killed all Bracada Desert Griffins
            evt.SetMessage("你们杀掉了斯坦德威克附近的狮鹫，可还没对付布拉卡达沙漠的狮鹫。\n把两边都了结，回来见我。")
            return
        end
        evt.SetMessage("好极！\n你们干得漂亮。\n来，拿这个当奖赏，并记住你们以大胆的成功赢得了迪雅的敬重。")
        ClearQBit(QBit(699)) -- Kill all the Griffins in Erathia and the Bracada Desert and return to Seth Drakkson in the Deyja Moors.
        AddValue(Gold, 5000)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 10000)
        SubtractValue(ReputationInCurrentLocation, 10)
        SetAward(Award(51)) -- Griffin Slayer
        evt.SetNPCTopic(623, 0, 0) -- Seth Drakkson topic 0 cleared
        evt.SetNPCGreeting(623, 281) -- Seth Drakkson greeting: Good work on those griffins, my lords. It is always a pleasure to see you.
    elseif IsQBitSet(QBit(701)) then -- Killed all Bracada Desert Griffins
        if not IsQBitSet(QBit(700)) then -- Killed all Erathian Griffins
            evt.SetMessage("你们杀掉了斯皮尔镇附近的狮鹫，可还没对付埃拉西亚的狮鹫。\n把两边都了结，回来见我。")
            return
        end
        evt.SetMessage("好极！\n你们干得漂亮。\n来，拿这个当奖赏，并记住你们以大胆的成功赢得了迪雅的敬重。")
        ClearQBit(QBit(699)) -- Kill all the Griffins in Erathia and the Bracada Desert and return to Seth Drakkson in the Deyja Moors.
        AddValue(Gold, 5000)
        evt.ForPlayer(Players.All)
        AddValue(Experience, 10000)
        SubtractValue(ReputationInCurrentLocation, 10)
        SetAward(Award(51)) -- Griffin Slayer
        evt.SetNPCTopic(623, 0, 0) -- Seth Drakkson topic 0 cleared
        evt.SetNPCGreeting(623, 281) -- Seth Drakkson greeting: Good work on those griffins, my lords. It is always a pleasure to see you.
    else
        evt.SetMessage("埃拉西亚和布拉卡达沙漠的狮鹫你们都还没杀光。\n务必完成这项任务，阻止他们入侵。")
        return
    end
end)

RegisterGlobalEvent(948, nil, function()
    evt.SetMessage("我兄弟埃尔隆是个阿卡牌迷。\n你们玩过阿卡牌吗？\n要说的话，这游戏上瘾得可怕。\n总之，有牌组才能玩，而牌组很难弄到……我猜你们大概还没玩。\n不管怎样，埃尔隆想研究些战术，好赢更多局。\n不幸的是，他不想待在镇上，因为他不想让别人偷看到、学去他的招数，于是他去了镇东南不远处的白崖洞穴。\n埃尔隆快一个星期没回来了。\n我敢说他出了可怕的事，可他要是还活着，我也想知道。\n你们愿意帮我找找他吗？\n我没多少钱酬谢你们，可我会大大欠你们的情。")
    SetQBit(QBit(706)) -- Find the fate of Darron's brother in the White Cliff Caves, then return to Darron Temper in Harmondale.
    evt.SetNPCTopic(624, 0, 949) -- Darron Temper topic 0: Quest
end)

RegisterGlobalEvent(949, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1453) then -- Arcomage Deck
        evt.SetMessage("还是没有他的踪影？\n我理解。\n你们要是碰巧查到他出了什么事，请告诉我。")
        return
    end
    evt.SetMessage("死了？\n哦天哪！\n不过那些确实是他的牌。\n我不要那些牌；你们拿去吧——那游戏如今让我破费够多了。\n哦，可怜的埃尔隆！\n我有点钱你们留着谢你们帮忙，也谢谢你们查明埃尔隆出了什么事。")
    AddValue(Experience, 2000)
    evt.ForPlayer(Players.Current)
    ClearQBit(QBit(706)) -- Find the fate of Darron's brother in the White Cliff Caves, then return to Darron Temper in Harmondale.
    AddValue(Gold, 750)
    evt.SetNPCTopic(624, 0, 0) -- Darron Temper topic 0 cleared
    SubtractValue(ReputationInCurrentLocation, 5)
end)

RegisterGlobalEvent(1063, nil, function()
    evt.SetMessage("布拉卡达沙漠这里的巫术学校收藏着不少古怪的魔法器具。\n几年前，一件格外重要的器物被迪雅的劫掠者从学校偷走。\n这件器物——四季披肩，曾由太阳牧师在季节更替的宗教仪式上披戴。\n作为巫术学校的代表，我获权为它的归还奖赏你们。\n我们最新的情报说，被盗的披肩在深渊之厅；我建议先去那儿查。")
    SetQBit(QBit(707)) -- Retrieve the Seasons' Stole from the Hall of the Pit and return it to Gary Zimm in the Bracada Desert.
    evt.SetNPCTopic(625, 0, 1064) -- Gary Zimm topic 0: Quest
end)
RegisterCanShowTopic(1063, function()
    evt._BeginCanShowTopic(1063)
    local visible = true
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1064, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1440) then -- Season's Stole
        evt.SetMessage("别忘了，你若能找到四季披肩并还给我，是有赏的。")
        return
    end
    evt.SetMessage("好极！\n这毫无疑问就是四季披肩。\n这是你的奖赏；你为巫术学校和我都立了大功。")
    RemoveItem(1440) -- Season's Stole
    AddValue(Experience, 7500)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 7500)
    ClearQBit(QBit(707)) -- Retrieve the Seasons' Stole from the Hall of the Pit and return it to Gary Zimm in the Bracada Desert.
    SetAward(Award(52)) -- Retrieved the Seasons' Stole
    SubtractValue(ReputationInCurrentLocation, 5)
    evt.SetNPCTopic(625, 0, 0) -- Gary Zimm topic 0 cleared
end)

RegisterGlobalEvent(1065, nil, function()
    evt.SetMessage("手杖大师导师埃尔西·佩德顿，可在布拉卡达沙漠西南地区的一道山脊上找到。")
    SetAutonote(323) -- The Master instructor of the Staff, Elsie Pederton, can be found in the Bracada Desert, on a ridge in the southwest region.
end)

RegisterGlobalEvent(1066, nil, function()
    evt.SetMessage("手杖之道的至高导师吉莉安·米斯里特，可在精灵领地埃里找到。\n她的家在东北部的城里。")
    SetAutonote(324) -- The ultimate teacher in the ways of the Staff, Jillian Mithrit, can be found in the elven territory of Avlee. Her home is in the city in the northeast.
end)

RegisterGlobalEvent(1067, nil, function()
    evt.SetMessage("剑术大师导师图戈尔·切片者，住在迪雅西部地区的一座小村里。")
    SetAutonote(325) -- The Master instructor of the Sword, Tugor Slicer, maintains his residence in a small village in the western region of Deyja.
end)

RegisterGlobalEvent(1068, nil, function()
    evt.SetMessage("剑术宗师查德里克·城镇守卫者，可在威尔宁、哈蒙代尔城正南方的一座小村里找到。")
    SetAutonote(326) -- The Grandmaster of the Sword, Chadric Townsaver, can be found in a small village in Welnin, just south of the city of Harmondale.
end)

RegisterGlobalEvent(1069, nil, function()
    evt.SetMessage("匕首大师导师阿兹诺格·劈砍者，可在尼根北部地区找到。")
    SetAutonote(327) -- The Master tutor of the Dagger, Aznog Slasher, can be found in the northern region of Nighon.
end)

RegisterGlobalEvent(1070, nil, function()
    evt.SetMessage("匕首宗师托克·拳，可在泰塔利亚的潮水城找到。\n传闻首都斯坦德威克下方埃拉西亚下水道深处的神偷大师，也能教到这个级别。")
    SetAutonote(328) -- The Grandmaster of the Dagger, Token Fist, can be found in city of Tidewater in Tatalia. Rumor has it that the Master Thief in the depths of the Erathian Sewers beneath the capitol city of Steadwick can also instruct at this level.
end)

RegisterGlobalEvent(1071, nil, function()
    evt.SetMessage("斧术大师导师达林·锐边，可在石头城东北角找到。")
    SetAutonote(329) -- The Master Instructor of all that is the Axe, Dalin Keenedge, can be found in the northeast corner of Stone City.
end)

RegisterGlobalEvent(1072, nil, function()
    evt.SetMessage("斧术至高导师卡恩·断石者，可在泰塔利亚东北部的雪山高处找到。")
    SetAutonote(330) -- The ultimate teacher of the uses of the Axe, Karn Stonecleaver, can be found in the snowy heights of the northeast region of Tatalia.
end)

RegisterGlobalEvent(1073, nil, function()
    evt.SetMessage("大师导师克拉德林·银尖，可在图拉林森林精灵地区皮尔庞特城的东北部找到。他会在那里进一步传授你长矛之道。")
    SetAutonote(331) -- The Master teacher, Claderin Silverpoint, can be found in the northeast section of the city of Pierpont in the elven region of the Tularean Forest. There he will further you knowledge of the Spear.
end)

RegisterGlobalEvent(1074, nil, function()
    evt.SetMessage("长矛宗师塞勒涅·隼眼，把家安在石头城东北角。")
    SetAutonote(332) -- The Grandmaster of the Spear, Selene Falconeye, makes her home in the northeast corner of Stone City.
end)

RegisterGlobalEvent(1075, nil, function()
    evt.SetMessage("神箭手导师兰希·鸦视，住在尼根北部地区。")
    SetAutonote(333) -- The Master tutor of the Bow, Lanshee Ravensight, lives in the northern regions of Nighon.
end)

RegisterGlobalEvent(1076, nil, function()
    evt.SetMessage("弓箭宗师卡德里克·沉稳者，可在哈蒙代尔城城堡东南不远处找到。")
    SetAutonote(334) -- The Grandmaster of the Bow, Cardric the Steady, can be found just to the southeast of the castle in the city of Harmondale.
end)

RegisterGlobalEvent(1077, nil, function()
    evt.SetMessage("钉锤大师导师罗特汉兄弟，可在泰塔利亚沼泽南部地区找到。")
    SetAutonote(335) -- The Master instructor of the Mace, Brother Rothham, can be found in the southern region of the swamps of Tatalia.
end)

RegisterGlobalEvent(1078, nil, function()
    evt.SetMessage("钉锤宗师帕特温·炎烧者，在他位于迪雅东部地区地精村的家中授徒。")
    SetAutonote(336) -- The Grandmaster of the Mace, Patwin Felburn, teaches from his home in the goblin village found in the eastern area of Deyja.
end)

RegisterGlobalEvent(1079, nil, function()
    evt.SetMessage("我的导师伊斯兰姆·绞刑井，可在泰塔利亚东北部的雪山高处找到。你会在那里进一步学习盾牌之道。")
    SetAutonote(337) -- My Master, Isram Gallowswell, can be found in the snowy heights of the northeast area of Tatalia. You will gain further instruction in the Shield there.
end)

RegisterGlobalEvent(1080, nil, function()
    evt.SetMessage("盾牌宗师费德温·史密斯森，可在埃弗蒙群岛的东岛上找到。")
    SetAutonote(338) -- The Grandmaster of the Shield, Fedwin Smithson, can be found on the eastern island of the Evenmorn Islands.
end)

RegisterGlobalEvent(1081, nil, function()
    evt.SetMessage("皮甲大师导师拉比莎·内尔登，住在尼根北部地区。")
    SetAutonote(339) -- The Master tutor of Leather Armor, Rabisa Neldon, lives in the northern regions of Nighon.
end)

RegisterGlobalEvent(1082, nil, function()
    evt.SetMessage("皮甲宗师敏捷的米永，可在图拉林森林精灵地区皮尔庞特城的东部找到。")
    SetAutonote(340) -- The Grandmaster of Leather Armor, Miyon the Quick, can be found in the eastern section of the city of Pierpont in the elven region of the Tularean Forest.
end)

RegisterGlobalEvent(1083, nil, function()
    evt.SetMessage("锁甲大师导师梅德瓦里·追龙者，可在精灵领地埃里找到。\n他的家在东北部的城里。")
    SetAutonote(341) -- The Master instructor of uses of Chain Armor, Medwari Dragontracker, can be found in the elven territory of Avlee. His home is in the city in the northeast.
end)

RegisterGlobalEvent(1084, nil, function()
    evt.SetMessage("锁甲宗师导师哈利安·永逝，住在迪雅西北地区的一座大城市里。")
    SetAutonote(342) -- The Grandmaster instructor of Chain Armor, Halian Nevermore, maintains his residence in a large city in the northwest region of Deyja.
end)

RegisterGlobalEvent(1085, nil, function()
    evt.SetMessage("我的导师德基安·锻权，把家安在埃拉西亚首都斯坦德威克。他能进一步传授你板甲之道。")
    SetAutonote(343) -- My Master, Dekian Forgewright, makes his home in Erathia in the capitol city of Steadwick. He can provide further instruction in the uses of Plate Armor.
end)

RegisterGlobalEvent(1086, nil, function()
    evt.SetMessage("板甲宗师布兰德·制造者，可在布拉卡达沙漠中部地区的一道山脊上找到。")
    SetAutonote(344) -- The Grandmaster of Plate Armor, Brand the Maker, can be found in the Bracada desert, on a ridge in the central region.
end)

RegisterGlobalEvent(1087, nil, function()
    evt.SetMessage("火系魔法大师导师灰烬·脾气，可在哈蒙代尔城马厩附近找到。")
    SetAutonote(345) -- The Master tutor of Fire Magic, Ashen Temper, can be found in the city of Harmondale near the stables.
end)

RegisterGlobalEvent(1088, nil, function()
    evt.SetMessage("火系魔法宗师布莱兹，把家安在埃拉西亚首都斯坦德威克。")
    SetAutonote(346) -- The Grandmaster of Fire Magic, Blayze, makes his home in Erathia in the capitol city of Steadwick.
end)

RegisterGlobalEvent(1089, nil, function()
    evt.SetMessage("气系魔法大师导师里斯林·绿风暴，住在精灵领地埃里。\n他的家在东北部的城里。")
    SetAutonote(347) -- The Master tutor of Air Magic, Rislyn Greenstorm, lives in the elven territory of Avlee. His home is in the city in the northeast.
end)

RegisterGlobalEvent(1090, nil, function()
    evt.SetMessage("气系魔法宗师盖尔，可在布拉卡达沙漠北部地区一道山脊上的一座塔里找到。")
    SetAutonote(348) -- The Grandmaster of Air Magic, Gayle, can be found in a tower in the Bracada desert, on a ridge in the northern region.
end)

RegisterGlobalEvent(1091, nil, function()
    evt.SetMessage("水系魔法大师导师托布伦·雨盾，住在尼根西南地区。")
    SetAutonote(349) -- The Master tutor of the uses of Water Magic, Tobren Rainshield, lives in the southwest region of Nighon.
end)

RegisterGlobalEvent(1092, nil, function()
    evt.SetMessage("水系魔法宗师洪流，住在哈蒙代尔南边一道俯瞰全城的山脊上。")
    SetAutonote(350) -- The Grandmaster of Water Magic, Torrent, lives on a ridge, south of Harmondale, overlooking the city.
end)

RegisterGlobalEvent(1093, nil, function()
    evt.SetMessage("土系魔法大师导师劳拉·石匠，把家安在图拉林森林的精灵领地。\n她的住处皮尔庞特城。")
    SetAutonote(351) -- The Master tutor of Earth Magic, Lara Stonewright, makes her home in the elven territory of the Tularean Forest. Her residence is in the city of Pierpont.
end)

RegisterGlobalEvent(1094, nil, function()
    evt.SetMessage("土系魔法宗师导师雪崩，住在迪雅西部地区。")
    SetAutonote(352) -- The Grandmaster instructor of Earth Magic, Avalanche, maintains his residence in the western region of the Deyja.
end)

RegisterGlobalEvent(1095, nil, function()
    evt.SetMessage("教过我的导师希瑟·梦匠，把家安在埃拉西亚首都斯坦德威克某处。\n在那里可进一步学习精神魔法。")
    SetAutonote(353) -- The Master who taught me, Heather Dreamwright, makes her home in Erathia, somewhere in the capitol city of Steadwick. Further knowledge of Spirit Magic can be gained there.
end)

RegisterGlobalEvent(1096, nil, function()
    evt.SetMessage("精神魔法之道的至高导师中庸者本杰明，可在图拉林森林的精灵领地找到。\n他的家在皮尔庞特城。")
    SetAutonote(354) -- The ultimate teacher in the ways of Spirit Magic, Benjamin the Balanced, can be found in the elven territory of the Tularean Forest. His home is in the city of Pierpont.
end)

RegisterGlobalEvent(1097, nil, function()
    evt.SetMessage("心智魔法之道的大师导师迈尔斯·羽风，可在精灵领地埃里找到。\n他的家在东北方向的城里。")
    SetAutonote(355) -- The Master teacher in the ways of Mind Magic, Myles Featherwind, can be found in the elven territory of Avlee. His home is in the city to the northeast.
end)

RegisterGlobalEvent(1098, nil, function()
    evt.SetMessage("心智魔法宗师泽维尔·不来梅，可在泰塔利亚东北部的雪山高处找到。")
    SetAutonote(356) -- The Grandmaster of Mind Magic, Xavier Bremen, can be found in the snowy heights of the northeast area of Tatalia.
end)

RegisterGlobalEvent(1099, nil, function()
    evt.SetMessage("肢体魔法之道的大师导师邦巴兄弟，可在泰塔利亚的沼泽地区找到。\n他的家在南部某处。")
    SetAutonote(357) -- The Master teacher in the ways of Body Magic, Brother Bombah, can be found in the swampy regions of Tatalia. His home is somewhere in the southern region.
end)

RegisterGlobalEvent(1100, nil, function()
    evt.SetMessage("肢体魔法之道的宗师导师坦珀斯，可在精灵领地埃里找到。\n他的家在中部海湾某座岛上。")
    SetAutonote(358) -- The Grandmaster teacher in the ways of Body Magic, Tempus, can be found in the elven territory of Avlee. His home is on an island somewhere in the central bay.
end)

RegisterGlobalEvent(1101, nil, function()
    evt.SetMessage("鉴定物品技能大师塞缪尔·本森，可在布拉卡达沙漠中部地区的一道山脊上找到。")
    SetAutonote(359) -- The Master of the Identify Item skill, Samuel Benson, can be found on a ridge in the central region of the Bracada desert.
end)

RegisterGlobalEvent(1102, nil, function()
    evt.SetMessage("鉴定物品技能宗师佩奇·蓝天鹅，可在精灵领地埃里找到。\n他的家就在精灵城斯波沃德西北不远处。")
    SetAutonote(360) -- The Grandmaster of the Identify Item skill, Payge Blueswan, can be found in the elven territory of Avlee. His home is just northwest of the elven city of Spaward.
end)

RegisterGlobalEvent(1103, nil, function()
    evt.SetMessage("商人技能大师伯托尔德·洞山，可在埃弗蒙群岛最东端的岛上找到。")
    SetAutonote(361) -- The Master of the Merchant skill, Berthold Caverhill, can be found on the eastern most island of the Evenmorn Islands.
end)

RegisterGlobalEvent(1104, nil, function()
    evt.SetMessage("商人技能宗师节俭者布里格姆，可在布拉卡达沙漠北部地区一道山脊上的一座塔里找到。")
    SetAutonote(362) -- The Grandmaster of the Merchant skill, Brigham the Frugal, can be found in a tower in the Bracada desert, on a ridge in the northern region.
end)

RegisterGlobalEvent(1105, nil, function()
    evt.SetMessage("修理物品技能大师导师托马斯·摩尔，可在泰塔利亚南部地区的沼泽三角洲找到。")
    SetAutonote(363) -- The Grandmaster of the Merchant skill, Brigham the Frugal, can be found in a tower in the Bracada desert, on a ridge in the northern region.
end)

RegisterGlobalEvent(1106, nil, function()
    evt.SetMessage("修理物品技能宗师修理工加雷斯，在他埃拉西亚首都斯坦德威克的家中授徒。")
    SetAutonote(364) -- The Grandmaster of the Repair Item Skill, Gareth the Fixer, teaches from his home in the capitol city of Steadwick in Erathia.
end)

RegisterGlobalEvent(1107, nil, function()
    evt.SetMessage("健体之道大师旺达·森林击，可在迪雅荒原东部的地精村找到。")
    SetAutonote(365) -- The Master of the of the art of Body Building, Wanda Foestryke, can be found in the goblin village in eastern Deyja.
end)

RegisterGlobalEvent(1108, nil, function()
    evt.SetMessage("健体技能宗师埃万德·托马斯，把家安在尼根东部地区。")
    SetAutonote(366) -- The Grandmaster of the Body Building skill, Evander Thomas, makes his home in the eastern regions of Nighon.
end)

RegisterGlobalEvent(1109, nil, function()
    evt.SetMessage("冥想大师泰莎·绿地，可在布拉卡达沙漠东南地区的一道山脊上找到。")
    SetAutonote(367) -- The Master of Meditation, Tessa Greensward, can be found on a ridge in the southeast region of the Bracada desert.
end)

RegisterGlobalEvent(1110, nil, function()
    evt.SetMessage("冥想宗师凯恩，可在精灵领地埃里找到。\n他的家在中部海湾某座岛上。")
    SetAutonote(368) -- The Grandmaster of Meditation, Kaine, can be found in the elven territory of Avlee. His home is on an island somewhere in the central bay.
end)

RegisterGlobalEvent(1111, nil, function()
    evt.SetMessage("感知技能大师加雷特·多特，可在图拉林森林的精灵地区找到。\n他的家在精灵城皮尔庞特。")
    SetAutonote(369) -- The Master of the Perception Skill, Garret Dotes, can be found in the elven area of the Tularean Forest. His home is in the Elven city of Pierpont.
end)

RegisterGlobalEvent(1112, nil, function()
    evt.SetMessage("感知技能宗师佩特拉·明眼，可在迪雅西北地区的城里找到。")
    SetAutonote(370) -- The Grandmaster of the Skill of Perception, Petra Cleareye, can be found in the city in the northwest region of Deyja.
end)

RegisterGlobalEvent(1113, nil, function()
    evt.SetMessage("解除陷阱技能大师莱诺德·剥皮者，住在哈蒙代尔南边一道俯瞰全城的山脊上。")
    SetAutonote(371) -- The Master of Disarm Trap Skill, Lenord Skinner, lives on a ridge, south of Harmondale, overlooking the city.
end)

RegisterGlobalEvent(1114, nil, function()
    evt.SetMessage("解除陷阱技能宗师西尔克·快舌，把家安在尼根南部地区。")
    SetAutonote(372) -- The Grandmaster of the Disarm Trap Skill, Silk Quicktoungue, makes his home in the southern region of Nighon.
end)

RegisterGlobalEvent(1115, nil, function()
    evt.SetMessage("闪避技能大师奥伯里克·鹤，可在埃弗蒙群岛最东端的岛上找到。")
    SetAutonote(373) -- The Master of the Dodging Skill, Oberic Crane, can be found on the eastern most island of the Evenmorn Islands
end)

RegisterGlobalEvent(1116, nil, function()
    evt.SetMessage("闪避技能宗师肯尼思·韦恩，可在埃拉西亚首都斯坦德威克找到。")
    SetAutonote(374) -- The Grandmaster of the Dodging Skill, Kenneth Wain, can be found in the capitol city of Steadwick, in Erathia.
end)

RegisterGlobalEvent(1117, nil, function()
    evt.SetMessage("徒手格斗大师斗殴者乌尔布雷希特，可在埃弗蒙群岛最东端的岛上找到。")
    SetAutonote(375) -- The Master of Unarmed Combat, Ulbrecht the Brawler, can be found on the eastern most island of the Evenmorn Islands.
end)

RegisterGlobalEvent(1118, nil, function()
    evt.SetMessage("徒手格斗宗师诺里斯，可在埃拉西亚首都斯坦德威克找到。")
    SetAutonote(376) -- The Grandmaster of Unarmed Combat, Norris, can be found in the capitol city of Steadwick, in Erathia.
end)

RegisterGlobalEvent(1119, nil, function()
    evt.SetMessage("鉴定怪物技能大师导师杰尼·快足，住在精灵领地埃里。\n她的家在东北部的城里。")
    SetAutonote(377) -- The Master instructor of the Identify Monster Skill, Jeni Swiftfoot, lives in the elven territory of Avlee. Her home is in the city in the northeast.
end)

RegisterGlobalEvent(1120, nil, function()
    evt.SetMessage("鉴定怪物技能宗师猎人雷文，可在哈蒙代尔南边一座小村里找到。")
    SetAutonote(378) -- The Grandmaster of the Identify Monster Skill, Raven the Hunter, can be found in a small village to the south of Harmondale.
end)

RegisterGlobalEvent(1121, nil, function()
    evt.SetMessage("武器精通技能大师导师葆拉·亮矛，住在精灵领地埃里。\n她的家在东北部的城里。")
    SetAutonote(379) -- The Master tutor of the Armsmaster Skill, Paula Brightspear, lives in the elven territory of Avlee. Her home is in the city in the northeast.
end)

RegisterGlobalEvent(1122, nil, function()
    evt.SetMessage("武器精通技能宗师斩杀者拉西特，把家安在埃奥法东部地区。")
    SetAutonote(380) -- The Grandmaster of the Armsmaster Skill, Lasiter the Slayer, makes his home in the eastern region of Eeofol.
end)

RegisterGlobalEvent(1123, nil, function()
    evt.SetMessage("偷窃技能大师导师莱安·影行者，把家安在迪雅东部地区的地精村。")
    SetAutonote(381) -- The Master tutor of the Stealing Skill, Leane Shadowrunner, makes her home in the goblin village in the eastern region of the Deyja.
end)

RegisterGlobalEvent(1124, nil, function()
    evt.SetMessage("偷窃之道宗师导师埃弗里尔·夜行者，可在泰塔利亚南部地区的沼泽三角洲找到。")
    SetAutonote(382) -- The Grandmaster teacher of the art of Stealing, Everil Nightwalker, can be found in the swampy delta of the southern region of Tatalia.
end)

RegisterGlobalEvent(1125, nil, function()
    evt.SetMessage("炼金术大师埃尔兹贝特·冬勺，可在尼根西部地区找到。")
    SetAutonote(383) -- The Master of Alchemy, Elzbet Winterspoon, can be found in the western region of Nighon.
end)

RegisterGlobalEvent(1126, nil, function()
    evt.SetMessage("炼金术宗师导师露西德·苹果，可在精灵领地埃里找到。\n他的家在中部海湾某座岛上。")
    SetAutonote(384) -- The Grandmaster instructor of Alchemy, Lucid Apple, can be found in the elven territory of Avlee. His home is on an island somewhere in the central bay.
end)

RegisterGlobalEvent(1127, nil, function()
    evt.SetMessage("学习技能大师多萝西·森雅克，可在尼根东南地区找到。")
    SetAutonote(385) -- The Master of Learning, Dorothy Senjac, can be found in the southeast region of Nighon.
end)

RegisterGlobalEvent(1128, nil, function()
    evt.SetMessage("学习技能宗师威廉·史密斯森，在埃弗蒙群岛东岛的家中授徒。")
    SetAutonote(386) -- The Grandmaster of Learning, William Smithson, instructs from his home on the eastern island of the Evenmorn Islands.
end)

RegisterGlobalEvent(1129, nil, function()
    evt.SetMessage("光明魔法大师海伦娜·晨星，可在云城塞莱斯特找到！")
    SetAutonote(387) -- The Master of Light Magic, Helena Mornigstar, can be found in the cloud city of Celeste!
end)

RegisterGlobalEvent(1130, nil, function()
    evt.SetMessage("光明魔法宗师可在法师城堡 光辉城堡找到。")
    SetAutonote(388) -- The Grand Master of Light Magic can be found in the wizards castle, Castle Lambent.
end)

RegisterGlobalEvent(1131, nil, function()
    evt.SetMessage("黑暗魔法大师塞思·暗影，可在迪雅下方的深渊找到！")
    SetAutonote(389) -- The Master of Dark, Seth Darkenmore, can be found in The Pit beneath Deyja!
end)

RegisterGlobalEvent(1132, nil, function()
    evt.SetMessage("黑暗魔法宗师可在死灵法师城堡黄昏城堡找到。\n有时人们会见到阿基巴德动身前往科兰克实验室。")
    SetAutonote(390) -- The Grand Master of Dark Magic can be found in the necromancer castle, Castle Gloaming. At times Archibald has been know to take the journey to Clankers Lab.
end)

RegisterGlobalEvent(1133, nil, function()
    evt.StatusText("空酒桶")
end)

RegisterGlobalEvent(1134, nil, function()
    evt.StatusText("力量 +2（永久）")
    AddValue(BaseMight, 2)
    SetAutonote(289) -- Red liquid grants Might.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1135, nil, function()
    evt.StatusText("精准 +2（永久）")
    AddValue(BaseAccuracy, 2)
    SetAutonote(293) -- Yellow liquid grants Accuracy.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1136, nil, function()
    evt.StatusText("个性 +2（永久）")
    AddValue(BasePersonality, 2)
    SetAutonote(291) -- Blue liquid grants Personality.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1137, nil, function()
    evt.StatusText("智力 +2（永久）")
    AddValue(BaseIntellect, 2)
    SetAutonote(290) -- Orange liquid grants Intellect.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1138, nil, function()
    evt.StatusText("耐力 +2（永久）")
    AddValue(BaseEndurance, 2)
    SetAutonote(292) -- Green liquid grants Endurance.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1139, nil, function()
    evt.StatusText("速度 +2（永久）")
    AddValue(BaseSpeed, 2)
    SetAutonote(294) -- Purple liquid grants Speed.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1140, nil, function()
    evt.StatusText("幸运 +2（永久）")
    AddValue(BaseLuck, 2)
    SetAutonote(295) -- White liquid grants Luck.
    evt.ChangeEvent(1133)
end)

RegisterGlobalEvent(1141, nil, function()
    evt.StatusText("空锅")
end)

RegisterGlobalEvent(1142, nil, function()
    evt.StatusText("火系抗性 +2（永久）")
    AddValue(FireResistance, 2)
    SetAutonote(296) -- Steaming liquid grants Fire Resistance.
    evt.ChangeEvent(1141)
end)

RegisterGlobalEvent(1143, nil, function()
    evt.StatusText("水系抗性 +2（永久）")
    AddValue(WaterResistance, 2)
    SetAutonote(297) -- Frosty liquid grants Water Resistance.
    evt.ChangeEvent(1141)
end)

RegisterGlobalEvent(1144, nil, function()
    evt.StatusText("气系抗性 +2（永久）")
    AddValue(AirResistance, 2)
    SetAutonote(298) -- Shocking liquid grants Air Resistance.
    evt.ChangeEvent(1141)
end)

RegisterGlobalEvent(1145, nil, function()
    evt.StatusText("土系抗性 +2（永久）")
    AddValue(EarthResistance, 2)
    SetAutonote(299) -- Dirty liquid grants Earth Resistance.
    evt.ChangeEvent(1141)
end)

RegisterGlobalEvent(1146, nil, function()
    local randomStep = PickRandomOption(1146, 1, {1, 6, 11})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(1, ItemType.Armor_)
    elseif randomStep == 6 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(2, ItemType.Armor_)
    elseif randomStep == 11 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(3, ItemType.Armor_)
    end
    evt.ChangeEvent(1161)
end)

RegisterGlobalEvent(1147, nil, function()
    local randomStep = PickRandomOption(1147, 1, {1, 6, 11})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(1, ItemType.Weapon_)
    elseif randomStep == 6 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(2, ItemType.Weapon_)
    elseif randomStep == 11 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(3, ItemType.Weapon_)
    end
    evt.ChangeEvent(1161)
end)

RegisterGlobalEvent(1148, nil, function()
    local randomStep = PickRandomOption(1148, 1, {1, 6, 11})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(1, ItemType.Misc)
    elseif randomStep == 6 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(2, ItemType.Misc)
    elseif randomStep == 11 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
            evt.StatusText("染病！")
        end
        evt.GiveItem(3, ItemType.Misc)
    end
    evt.ChangeEvent(1161)
end)

RegisterGlobalEvent(1161, nil, function()
    local randomStep = PickRandomOption(1161, 1, {1, 5})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("染病！")
            return
        end
        evt.StatusText("这里什么也没有")
    elseif randomStep == 5 then
        evt.StatusText("这里什么也没有")
    end
end)

RegisterGlobalEvent(1162, nil, function()
    AddValue(Food, 2)
    if not IsAtLeast(DisarmTrapSkill, 1) then
        evt.ChangeEvent(0)
        return
    end
    evt.GiveItem(2, ItemType.Ring_)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1163, nil, function()
    AddValue(Food, 1)
    if not IsAtLeast(DisarmTrapSkill, 1) then
        evt.ChangeEvent(0)
        return
    end
    evt.GiveItem(1, ItemType.Ring_)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1164, nil, function()
    AddValue(InventoryItem(1432), 1432) -- Red Apple
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1165, nil, function()
    evt.StatusText("空木桶")
end)

RegisterGlobalEvent(1166, nil, function()
    local randomStep = PickRandomOption(1166, 1, {1, 1, 1, 8, 8, 8})
    if randomStep == 1 then
        local randomStep = PickRandomOption(1166, 2, {2, 2, 2, 5, 5, 5})
        if randomStep == 2 then
            SetValue(PoisonedYellow, 0)
            evt.StatusText("中毒！")
        elseif randomStep == 5 then
            SetValue(PoisonedGreen, 0)
            evt.StatusText("喝醉了！")
        end
    elseif randomStep == 8 then
        local randomStep = PickRandomOption(1166, 9, {9, 9, 11, 11, 13, 15})
        if randomStep == 9 then
            AddValue(InventoryItem(1004), 1004) -- Vial of Troll Blood
        elseif randomStep == 11 then
            AddValue(InventoryItem(1019), 1019) -- Vial of Ooze Endoplasm
        elseif randomStep == 13 then
            AddValue(InventoryItem(1020), 1020) -- Mercury
        elseif randomStep == 15 then
            AddValue(InventoryItem(1016), 1016) -- Vial of Devil Ichor
        end
    end
    evt.ChangeEvent(1165)
end)

RegisterGlobalEvent(1167, nil, function()
    AddValue(InventoryItem(1017), 1017) -- Mushroom
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1168, nil, function()
    evt.SetMessage("原来你们就是赢了马克姆勋爵比赛的那伙人！\n到目前为止，你们觉得赢来的东西怎么样？\n赢够了吗？\n我要是你们，就非去骂他一顿不可！\n他的庄园在泰塔利亚码头附近。")
end)

RegisterGlobalEvent(1169, nil, function()
    evt.SetMessage("朋友们，在这儿看好钱包——斯坦德威克盗贼遍地。\n说真的，我们是世界盗贼之都！\n神偷大师比尔·拉斯克住在斯坦德威克下方的下水道里，这是常识。")
end)

RegisterGlobalEvent(1170, nil, function()
    if not IsQBitSet(QBit(708)) then -- Find second entrance to Watchtower6
        evt.SetMessage("我还在军队时，被派去侦察迪雅的瞭望塔。\n<轻笑>从前门进去是没用的，所以我通常另找出路。\n那些死灵法师胆小得很，总留着一条逃生路。\n而出路也是一条进路……")
        return
    end
    evt.SetMessage("很高兴你们找到了后门。\n你们大概因此躲过了一场非常凶险的伏击。\n希望我的建议有用！")
end)
RegisterCanShowTopic(1170, function()
    evt._BeginCanShowTopic(1170)
    local visible = true
    if IsQBitSet(QBit(708)) then -- Find second entrance to Watchtower6
        visible = true
        return visible
    else
        if IsQBitSet(QBit(531)) then -- Go to Watchtower 6 in the Deyja Moors, and move the weight from the top of the tower to the bottom of the tower. Then return to William Lasker in the Erathian Sewers.
            visible = true
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(1171, nil, function()
    evt.SetMessage("比尔·拉斯克也许是个罪犯，可他不时为王室效力。\n特殊任务、官方否认参与、间谍活动……那一类事。\n不少不寻常的事件都能扯到比尔头上，却扯不到王室。\n说真的，你难道不觉得，就算一个人躲在下水道里，女王的人也找得到、抓得到他吗？")
end)

RegisterGlobalEvent(1172, nil, function()
    if HasItem(1342) then -- Lady Carmine's Dagger
        evt.SetMessage("这么说……一报还一报，嗯？\n对付卡迈恩那个叛徒干得漂亮！")
    elseif IsQBitSet(QBit(1564)) then -- Promoted to Assassin
        evt.SetMessage("这么说……一报还一报，嗯？\n对付卡迈恩那个叛徒干得漂亮！")
    elseif IsQBitSet(QBit(1565)) then -- Promoted to Honorary Assassin
        evt.SetMessage("这么说……一报还一报，嗯？\n对付卡迈恩那个叛徒干得漂亮！")
    else
        evt.SetMessage("你想知道那个叛徒卡迈恩的事？\n她以前在外交团效力，后来心软了，投靠了那些假正经的法师。\n如今她在塞莱斯特街头自由行走，毫不挂念被她抛下的人。\n她很快会遭报应的，记住我的话！")
        return
    end
end)
RegisterCanShowTopic(1172, function()
    evt._BeginCanShowTopic(1172)
    local visible = true
    if IsQBitSet(QBit(1564)) then -- Promoted to Assassin
        visible = true
        return visible
    else
        if IsQBitSet(QBit(1565)) then -- Promoted to Honorary Assassin
            visible = true
            return visible
        else
            if IsQBitSet(QBit(533)) then -- Go to the Celestial Court in Celeste and kill Lady Eleanor Carmine. Return with proof to Seknit Undershadow in the Deyja Moors.
                visible = true
                return visible
            else
                visible = false
                return visible
            end
        end
    end
end)

RegisterGlobalEvent(1173, nil, function()
    evt.SetMessage("找“活儿”？\n你可以在深渊某处找到刺客大师。\n他会有活儿给你。\n反正总有什么人或什么东西需要杀掉，那是一定的。")
end)

RegisterGlobalEvent(1174, nil, function()
    if IsQBitSet(QBit(1564)) then -- Promoted to Assassin
        evt.SetMessage("龙已陨落——而且死在你们手里！\n你们是英雄！")
    elseif IsQBitSet(QBit(1565)) then -- Promoted to Honorary Assassin
        evt.SetMessage("龙已陨落——而且死在你们手里！\n你们是英雄！")
    else
        evt.SetMessage("直到不久前，我们本地的龙“无情者弗罗思拉克斯”还只是劫掠南边的山丘——吃羊、家畜和野狗。\n可他尝出了精灵血的味道，如今连我们也猎。\n你们若想去会他，他的洞在北边山上、雇佣兵公会以西。\n他不总在那儿。\n小心——他很强。")
        return
    end
end)
RegisterCanShowTopic(1174, function()
    evt._BeginCanShowTopic(1174)
    local visible = true
    if IsQBitSet(QBit(1590)) then -- Promoted to Crusader
        visible = true
        return visible
    else
        if IsQBitSet(QBit(1591)) then -- Promoted to Honorary Crusader
            visible = true
            return visible
        else
            if IsQBitSet(QBit(534)) then -- Kill Wromthrax the Heartless in his cave in Tatalia, then talk to Sir Charles Quixote.
                visible = true
                return visible
            else
                visible = false
                return visible
            end
        end
    end
end)

RegisterGlobalEvent(1175, nil, function()
    evt.SetMessage("怎么，你也想当十字军？\n这镇子快被他们挤爆了，我发誓！\n好吧，镇中心附近一栋建筑后头住着个疯子。\n人们不断想报名跟他，他不断拒绝。\n祝好运。")
end)

RegisterGlobalEvent(1176, nil, function()
    evt.SetMessage("稍等，让我查查。\n魔镜魔镜挂墙上……<女巫对着镜子凝视几分钟，然后叹气>还是艾丽斯·哈格里夫斯。\n她住在格芬哈特城堡。\n那姑娘真是贵族美人！\n她让我想起了年轻的时候。")
end)

RegisterGlobalEvent(1177, nil, function()
    evt.SetMessage("我们最优秀、最正直的市民之一是威廉·塞塔格，有人认为他是当今最黑心的恶棍。\n说真的，他是我们最好的特工之一。\n法师之流抱怨，是因为他们在他的计谋里吃过太多亏——可在他这一行，他差不多是最顶尖的。\n你们想找活儿干，就去见他。\n他的塔在迪雅北岸一处相当难到的地方。\n他不喜欢访客，可看到更多学生出现在他门口，他应该会高兴。")
end)

RegisterGlobalEvent(1178, nil, function()
    evt.SetMessage("你想找位老师开始正式的武僧训练，就去找巴塞洛缪·休姆——你可以在哈蒙代尔镇南边的村子里找到他。")
end)

RegisterGlobalEvent(1179, nil, function()
    evt.SetMessage("红矮人矿里栖居着一种对魔法免疫的蛇怪。\n这些怪物真是恐怖！\n我只能感谢众神它们还没逃出矿去。\n真逃出来我们怎么办，用棍子把它们打死吗？")
end)

RegisterGlobalEvent(1180, nil, function()
    if HasItem(1332) then -- Cloak of the Sheep
        evt.SetMessage("羊鸣教团没了？\n这可真是好消息！\n每个人都欠你们的情，不管他们知不知道。\n")
    elseif IsQBitSet(QBit(1574)) then -- Promoted to Master
        evt.SetMessage("羊鸣教团没了？\n这可真是好消息！\n每个人都欠你们的情，不管他们知不知道。\n")
    elseif IsQBitSet(QBit(1575)) then -- Promoted to Honorary Master
        evt.SetMessage("羊鸣教团没了？\n这可真是好消息！\n每个人都欠你们的情，不管他们知不知道。\n")
    else
        evt.SetMessage("几年前，一个叫羊鸣教神庙的古怪教团搬进了这一带。\n起初他们似乎很受欢迎，免费提供治疗嘛，可很快就看出他们献身于黑暗。\n如今没什么人上去那边了，而当初支持他们的邪神似乎也撤回了支持。\n可他们还在上头，潜伏在阴影里。\n瘆人。")
        return
    end
end)
RegisterCanShowTopic(1180, function()
    evt._BeginCanShowTopic(1180)
    local visible = true
    if IsQBitSet(QBit(1574)) then -- Promoted to Master
        visible = true
        return visible
    else
        if IsQBitSet(QBit(1575)) then -- Promoted to Honorary Master
            visible = true
            return visible
        else
            if IsQBitSet(QBit(540)) then -- Go to the Temple of Baa in Avlee and kill the High Priest of Baa, then return to Bartholomew Hume in Harmondale.
                visible = true
                return visible
            else
                visible = false
                return visible
            end
        end
    end
end)

RegisterGlobalEvent(1181, nil, function()
    if HasItem(1332) then -- Cloak of the Sheep
        evt.SetMessage("听说羊鸣教团不见了，而不是我的羊不见了，我真高兴！\n干得好！")
    elseif IsQBitSet(QBit(1574)) then -- Promoted to Master
        evt.SetMessage("听说羊鸣教团不见了，而不是我的羊不见了，我真高兴！\n干得好！")
    elseif IsQBitSet(QBit(1575)) then -- Promoted to Honorary Master
        evt.SetMessage("听说羊鸣教团不见了，而不是我的羊不见了，我真高兴！\n干得好！")
    else
        evt.SetMessage("自从羊鸣教团搬进来，丢了好多羊——我是说好多。\n毫无疑问，它们被抓到羊鸣教神庙献祭了。\n没人来管管那些教团分子，我就要破产了！")
        return
    end
end)
RegisterCanShowTopic(1181, function()
    evt._BeginCanShowTopic(1181)
    local visible = true
    if IsQBitSet(QBit(1574)) then -- Promoted to Master
        visible = true
        return visible
    else
        if IsQBitSet(QBit(1575)) then -- Promoted to Honorary Master
            visible = true
            return visible
        else
            if IsQBitSet(QBit(540)) then -- Go to the Temple of Baa in Avlee and kill the High Priest of Baa, then return to Bartholomew Hume in Harmondale.
                visible = true
                return visible
            else
                visible = false
                return visible
            end
        end
    end
end)

RegisterGlobalEvent(1182, nil, function()
    evt.SetMessage("朋友，这种地方到处都是间谍。\n你若想让信件和公报保密，写信时就该用密码。\n城堡图书馆里有一本书会把一切讲清楚，朋友。")
end)

RegisterGlobalEvent(1183, nil, function()
    evt.SetMessage("八年前，我们派了一队学者去如今的红矮人矿，研究偶尔出现在那里的奇怪生物。\n我们首先注意到，软泥外质是极好的药水催化剂。\n其次，软泥根本没法用物理手段伤害——它们会裂开或压扁，然后又流到一起。你想杀一只，就得用魔法。")
end)

RegisterGlobalEvent(1184, nil, function()
    evt.SetMessage("红矮人矿里栖居着一种对魔法免疫的蛇怪。\n这些怪物真是恐怖！\n我只能感谢众神它们还没逃出矿去。\n真逃出来我们怎么办，用棍子把它们打死吗？")
end)

RegisterGlobalEvent(1185, nil, function()
    evt.SetMessage("你要是往南走过双足飞龙平原，千万别去敲那座巨大堡垒的门——它立在水中央。\n那是泰坦要塞，他们可不怎么欢迎访客。")
end)

RegisterGlobalEvent(1186, nil, function()
    evt.SetMessage("竞技场格斗对任何想拿各类对手练手的人开放。\n你可以在某个星期天去任意一家马厩，请他们送你过去。\n")
end)

RegisterGlobalEvent(1187, nil, function()
    evt.SetMessage("竞技场锦标赛每个星期天举行。\n对所有人开放——不过小心！\n你的对手由竞技场方挑选，不是你！")
end)

RegisterGlobalEvent(1188, nil, function()
    evt.SetMessage("每处墓地或祖坟附近似乎都有一座鬼宅——我们这儿也不例外。\n西北地表某座高原附近有一座宅邸。\n它肯定闹鬼。")
end)

RegisterGlobalEvent(1189, nil, function()
    evt.SetMessage("要像怕死一样怕鬼魂的触碰。\n它造成可怕的精神创伤，还当着你的面吸干你的青春！")
end)

RegisterGlobalEvent(1190, nil, function()
    evt.SetMessage("几次战争前，我曾祖父参与挖了一条从精灵城堡通到图拉林洞穴的逃生隧道。\n我想它从没被用过——从未有对城堡的进攻把它逼出来——可它确实是段有趣的历史，你不觉得吗？")
end)

RegisterGlobalEvent(1191, nil, function()
    if not IsQBitSet(QBit(709)) then -- Entered Faerie Mound
        evt.SetMessage("人们说精灵就是仙灵，可实际上我们只是远亲。\n真正的仙灵不文明社会里生活，他们就像故事说的那样——顽皮、残忍、会魔法、危险。\n可你若真想见他们，可以去他们所谓的山下厅堂找他们。\n它就在村子西北方不远处。\n要摸到前门可有得你挑战……")
        return
    end
    evt.SetMessage("我佩服——很少有人真能进到仙灵丘里，或走得很远。")
end)

RegisterGlobalEvent(1192, nil, function()
    if HasItem(1402) then -- Heart of the Wood
        evt.SetMessage("森林如今安全多了，多亏你们！\n最老的树对你们非常满意，已把你们写进它的历史咏唱里。")
    elseif IsQBitSet(QBit(1580)) then -- Promoted to Ranger Lord
        evt.SetMessage("森林如今安全多了，多亏你们！\n最老的树对你们非常满意，已把你们写进它的历史咏唱里。")
    elseif IsQBitSet(QBit(1581)) then -- Promoted to Honorary Ranger Lord
        evt.SetMessage("森林如今安全多了，多亏你们！\n最老的树对你们非常满意，已把你们写进它的历史咏唱里。")
    elseif HasAward(Award(23)) then -- Retrieved the Heart of the Wood
        evt.SetMessage("森林如今安全多了，多亏你们！\n最老的树对你们非常满意，已把你们写进它的历史咏唱里。")
    else
        evt.SetMessage("前阵子，我看见一些人夜里带着斧头和火把来到图拉林森林，照着某种地图走。\n他们离开时又笑又开心。\n看样子他们抬着一块绿色的大石头。\n我兄弟说那是一伙从泰塔利亚来的雇佣兵。\n总之，第二天森林就疯了。\n现在去那儿太危险。")
        return
    end
end)

RegisterGlobalEvent(1193, nil, function()
    evt.SetMessage("图拉林森林古老得生出了意识……大概算吧。\n森林模糊地知道谁从它身上走过，可只有一部分森林能与人交流。\n那就是最老的树。\n你若想进行一次漫长而缓慢的对话，它很乐意奉陪。\n去森林东南方一座岛上找它。\n它比其余树都大。\n你不会错过的。")
end)

RegisterGlobalEvent(1194, nil, function()
    evt.SetMessage("谁想挣点外快，可以去任意大城市的市政厅接赏金任务。\n市议会总是怕最新的食人怪物、匪徒或疯狂法师，本月谁最烦他们，他们就悬赏谁。\n他们的选择毫无道理，别想去弄明白。\n报酬往往相当丰厚。")
end)

RegisterGlobalEvent(1195, nil, function()
    evt.SetMessage("你要是厌倦了业余赏金狩猎、想在这行上进阶，就去找埃里的埃比尼泽·播种者。\n不过他只教暗影之路的追随者。")
end)

RegisterGlobalEvent(1196, nil, function()
    evt.SetMessage("海盗在潮穴里活动二十年了。\n他们不是雷格那人，也不是比尔·拉斯克的人，可仍然相当凶。\n你想进去，就往西边那些岛去。")
end)

RegisterGlobalEvent(1197, nil, function()
    if HasItem(1485) then -- Map to Evenmorn Island
        evt.SetMessage("哦，地图找到了？\n你打算怎么处理新得的宝藏？\n但愿会分享！")
    elseif IsQBitSet(QBit(1607)) then -- Promoted to Priest
        evt.SetMessage("哦，地图找到了？\n你打算怎么处理新得的宝藏？\n但愿会分享！")
    elseif IsQBitSet(QBit(1608)) then -- Promoted to Honorary Priest
        evt.SetMessage("哦，地图找到了？\n你打算怎么处理新得的宝藏？\n但愿会分享！")
    else
        evt.SetMessage("埃弗蒙岛说不上失踪，只是难到。\n它被凶险的暗礁、浅滩、漩涡和鲨鱼环绕。\n要说危险，这岛四周全是。\n安全的进出路只有一两条，而那些路的地图在近来战乱中被海盗偷走了。\n地图多半还在他们洞里。\n")
        return
    end
end)

RegisterGlobalEvent(1198, nil, function()
    if HasItem(1485) then -- Map to Evenmorn Island
        evt.SetMessage("既然你拿到了地图，我想你很快就会去那儿。\n小心——他们说这座岛被诅咒了！")
    elseif IsQBitSet(QBit(1607)) then -- Promoted to Priest
        evt.SetMessage("既然你拿到了地图，我想你很快就会去那儿。\n小心——他们说这座岛被诅咒了！")
    elseif IsQBitSet(QBit(1608)) then -- Promoted to Honorary Priest
        evt.SetMessage("既然你拿到了地图，我想你很快就会去那儿。\n小心——他们说这座岛被诅咒了！")
    else
        evt.SetMessage("船长们很乐意载任何付钱的客人去埃弗蒙岛，可他们没有像样的地图。\n除非有地图，否则没人会冒险把船开进岛周围的暗礁！")
        return
    end
end)

RegisterGlobalEvent(1199, nil, function()
    evt.SetMessage("你若不介意沼泽和雾，埃弗蒙岛是个宜居的好地方。\n当然，诅咒帮不上忙——鬼魂和骷髅在岛上自由游荡——但除此之外，邻居们都各过各的。\n太阳教会和月亮教会如今连架都不怎么打了。\n<嘿！>这大概说明他们的信徒快用光了……")
end)

RegisterGlobalEvent(1200, nil, function()
    evt.SetMessage("我嘛，没有魔像零件——那门课我从没选过——可布拉卡达到处都有学生手头攒着多余的魔像零件。\n凑不齐它们就一文不值，所以他们多半会白送给你。")
end)

RegisterGlobalEvent(1201, nil, function()
    evt.SetMessage("你看见布拉卡达到处走的那些魔像了吗？\n每一个都是学校造的。\n对学生来说不错吧？\n它们话不多，却是强悍的守卫，还能察觉黑暗追随者靠近。\n你真该看看，那些死灵法师或巫师晃进我们土地时，它们是什么样子。\n哇噢噢噢噢！")
end)

RegisterGlobalEvent(1202, nil, function()
    if HasItem(1289) then -- Divine Intervention
        evt.SetMessage("神之恩典被找到并抄录了？\n奇迹！\n我从没想过有生之年能见到它！\n")
    elseif IsQBitSet(QBit(1621)) then -- Promoted to Archmage
        evt.SetMessage("神之恩典被找到并抄录了？\n奇迹！\n我从没想过有生之年能见到它！\n")
    elseif IsQBitSet(QBit(1622)) then -- Promoted to Honorary Archmage
        evt.SetMessage("神之恩典被找到并抄录了？\n奇迹！\n我从没想过有生之年能见到它！\n")
    else
        evt.SetMessage("我们的占星师断定，失踪的《神之恩典》文本就在地下深处某处。\n确切地说，在迪雅下方。\n他们怕这一版文本落进了繁殖深渊——死灵法师版的试炼场。\n噢，我们到底做了什么冒犯众神？\n我们永远别想从那个被遗弃之地取回文本了！")
        return
    end
end)

RegisterGlobalEvent(1203, nil, function()
    if HasItem(1289) then -- Divine Intervention
        evt.SetMessage("所有宗师都对你们非常满意。\n你们为我们这一行立了大功！")
    elseif IsQBitSet(QBit(1621)) then -- Promoted to Archmage
        evt.SetMessage("所有宗师都对你们非常满意。\n你们为我们这一行立了大功！")
    elseif IsQBitSet(QBit(1622)) then -- Promoted to Honorary Archmage
        evt.SetMessage("所有宗师都对你们非常满意。\n你们为我们这一行立了大功！")
    else
        evt.SetMessage("《神之恩典》法术，光明魔法学派的最高法术，已失踪几个世纪。\n我们相信这是因我们对光明缺乏虔诚与信仰而降下的诅咒。\n我们挣扎着，不时派人出去寻找法术，可无一成功。\n每次他们找到，命运又残忍地从我们手里夺走。\n我们的宗师们失去这最后一门伟大法术，已有有生之年那么久。")
        return
    end
end)

RegisterGlobalEvent(1204, nil, function()
    evt.SetMessage("世界上唯一制造灵魂罐的，是尼根的巫师。\n这是他们行当的秘密——这倒奇怪，因为他们根本用不上它。\n尽管如此，我们为了精进技艺，不得不为这些罐子讨价还价。\n当然，我们不时也会从他们手里硬夺罐子……可他们随后就报复性抬高价格。\n我们注定要受这份苦。")
end)

RegisterGlobalEvent(1205, nil, function()
    evt.SetMessage("每个死灵法师都渴望有朝一日成为巫妖。\n你只需要一个灵魂罐、仪式的知识，以及活着往返死者之地的魔法本领。\n肉身枯萎，灵魂则在摆脱饥饿、疾病和伤痛的荣耀状态中长存。\n只有肤浅的人才会介意仪式对容貌的改变。\n真正的修行者几乎注意不到。")
end)

RegisterGlobalEvent(1206, nil, function()
    if IsQBitSet(QBit(1613)) then -- Promoted to Great Druid
        evt.SetMessage("既然你们自己发现了石圈，它们已对你施了魔法。\n我希望你们别把它们的位置告诉别人，就像我当初为你们做的那样。")
    elseif IsQBitSet(QBit(1614)) then -- Promoted to Honorary Great Druid
        evt.SetMessage("既然你们自己发现了石圈，它们已对你施了魔法。\n我希望你们别把它们的位置告诉别人，就像我当初为你们做的那样。")
    else
        evt.SetMessage("三座石圈是德鲁伊很久以前建的。\n既然说出位置会毁掉有志高级德鲁伊的升阶尝试，我只能给你一个笼统线索——它们都在露天，毫无遮蔽，光秃秃的，而且都远离聚落。\n再多说就会破坏你的升阶了。")
        return
    end
end)

RegisterGlobalEvent(1207, nil, function()
    evt.SetMessage("原本有四座石圈，对应四个正方向和四季，但东圈在太阳教会与月亮教会战争期间于尼根某处被毁。")
end)

RegisterGlobalEvent(1208, nil, function()
    evt.SetMessage("墓地里确实埋着古代国王的遗骨，可这片神圣土地会诅咒任何打扰它的人。\n这任务我不同情你。\n你每挖开一座坟，都会放出它的诅咒，也许还有别的陷阱。\n开挖前最好确认挖的是正确的坟。")
end)

RegisterGlobalEvent(1209, nil, function()
    evt.SetMessage("古墓虽为防盗贼而建，可安葬和仪式时也需要一条通行路。\n每道门附近你都会找到一块铭牌。\n这些铭牌含义隐晦，可只要你用，它们就不会让你迷路。\n还没有哪个盗贼察觉它们的重要性，所以一旦进了古墓，就再没出来过。")
end)

RegisterGlobalEvent(1210, nil, function()
    evt.SetMessage("战争期间，我们从桑达非斯山脉挖了一条隧道通到巨人领地。\n就在那里，我们发现了克里根人，还有多到你想象不出的泰坦和龙。\n我想一个熟悉龙的人，能在那片恐怖土地的某个龙穴里找到蛋。\n小心龙妈妈……")
end)

RegisterGlobalEvent(1211, nil, function()
    evt.SetMessage("我听过传说，巨人领地有一条前所未有的巨龙。\n弱小的龙和泰坦在它洞穴所在的山坡上交战。\n这条龙如此庞大、如此强大，其余龙都喂它，生怕它有朝一日离开洞穴、盛怒之下把它们全吞了。\n龙们把它奉为神。\n若真如此，想想它的宝藏吧……")
end)

RegisterGlobalEvent(1212, nil, function()
    evt.SetMessage("太阳与月亮神庙战争期间，布拉卡达沙漠、泰塔利亚和埃里的圣坛各丢了一座小雕像。\n我代表一群德鲁伊，想让这些圣坛恢复原样——这对他们的礼拜至关重要。\n为此，我愿出重赏，请谁找到小雕像并把它们放回圣坛。")
    SetQBit(QBit(712)) -- Retrieve the three statuettes and place them on the shrines in the Bracada Desert, Tatalia, and Avlee, then return to Thom Lumbra in the Tularean Forest.
    evt.SetNPCTopic(627, 0, 1213) -- Thom Lumbra topic 0: Quest
end)

RegisterGlobalEvent(1213, nil, function()
    if IsQBitSet(QBit(713)) then -- Placed item 617 in out14(statue)
        if IsQBitSet(QBit(714)) then -- Place item 618 in out13(statue)
            if not IsQBitSet(QBit(715)) then -- Place item 619 in out06(statue)
                evt.SetMessage("三座小雕像还没全放好。\n我不奖励半途而废。\n三座都放好再回来。")
                return
            end
            evt.SetMessage("干得漂亮！\n德鲁伊们太高兴了，为你们出色的表现额外加了一点。\n拿上……这你们完全当得起。")
            AddValue(Gold, 50000)
            SubtractValue(ReputationInCurrentLocation, 10)
            evt.ForPlayer(Players.All)
            ClearQBit(QBit(712)) -- Retrieve the three statuettes and place them on the shrines in the Bracada Desert, Tatalia, and Avlee, then return to Thom Lumbra in the Tularean Forest.
            AddValue(Experience, 50000)
            SetAward(Award(53)) -- Found and placed all the statuettes
            evt.SetNPCGreeting(627, 289) -- Thom Lumbra greeting: Excellent work; my associates are quite pleased.
            evt.SetNPCTopic(627, 0, 0) -- Thom Lumbra topic 0 cleared
            return
        end
    end
    evt.SetMessage("三座小雕像还没全放好。\n我不奖励半途而废。\n三座都放好再回来。")
end)

RegisterGlobalEvent(1214, nil, function()
    evt.SetMessage("你们也许已经猜到，我是美术收藏家。\n眼下我在找一套画：一幅罗兰国王，一幅他弟弟阿基巴德，还有一幅铁拳城堡庭院里的天使雕像。\n这一套价值不菲，作为收藏家，我愿出高价收购。\n你们若能凑齐全套画带回来，我一定好好酬谢你们的努力。")
    SetQBit(QBit(716)) -- Retrieve the three paintings and return them to Ferdinand Visconti in Tatalia.
    evt.SetNPCTopic(628, 0, 1215) -- Ferdinand Visconti topic 0: Quest
end)

RegisterGlobalEvent(1215, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(1423) then -- Angel Statue Painting
        if HasItem(1424) then -- Archibald Ironfist Painting
            if not HasItem(1425) then -- Roland Ironfist Painting
                evt.SetMessage("记住，我要全套画——单张不值多少钱。\n凑齐全套后都带来给我。")
                return
            end
            evt.SetMessage("好极了！\n这套东西我追了多年！\n你完全当得起我答应的奖赏；拿着，希望这够。")
            RemoveItem(1423) -- Angel Statue Painting
            RemoveItem(1424) -- Archibald Ironfist Painting
            RemoveItem(1425) -- Roland Ironfist Painting
            evt.ForPlayer(Players.Current)
            AddValue(Gold, 50000)
            SubtractValue(ReputationInCurrentLocation, 10)
            evt.ForPlayer(Players.All)
            ClearQBit(QBit(716)) -- Retrieve the three paintings and return them to Ferdinand Visconti in Tatalia.
            AddValue(Experience, 50000)
            SetAward(Award(55)) -- Retrieved the complete set of paintings
            evt.SetNPCGreeting(628, 291) -- Ferdinand Visconti greeting 291
            evt.SetNPCTopic(628, 0, 0) -- Ferdinand Visconti topic 0 cleared
            return
        end
    end
    evt.SetMessage("记住，我要全套画——单张不值多少钱。\n凑齐全套后都带来给我。")
end)

RegisterGlobalEvent(1216, nil, function()
    evt.SetMessage("要被封为阿卡牌大法师勇士，你必须在埃拉西亚大陆上、大陆内、大陆下的每一家酒馆赢一局阿卡牌。\n赞助阿卡牌赛事的酒馆共有 13 家。\n完成后回来找我领奖。")
    SetQBit(QBit(717)) -- Win a game of Arcomage in all thirteen taverns, then return to Gina Barnes in Erathia.
    evt.SetNPCTopic(629, 0, 1217) -- Gina Barnes topic 0: Quest
end)

RegisterGlobalEvent(1217, nil, function()
    if not IsQBitSet(QBit(750)) then -- Won all Arcomage games
        evt.SetMessage("你必须在全部 13 家酒馆都取得胜利。\n在此之前，你不能被封为阿卡牌大法师勇士。")
        return
    end
    evt.SetMessage("恭喜！\n你已成为阿卡牌大法师勇士！\n奖品就在我家门外的箱子里等着。")
    ClearQBit(QBit(717)) -- Win a game of Arcomage in all thirteen taverns, then return to Gina Barnes in Erathia.
    AddValue(Gold, 100000)
    SubtractValue(ReputationInCurrentLocation, 10)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 50000)
    SetQBit(QBit(756)) -- Finished ArcoMage Quest - Get the treasure
    SetAward(Award(1632))
    evt.SetNPCGreeting(629, 293) -- Gina Barnes greeting: Welcome ArcoMage Champions!
    evt.SetNPCTopic(629, 0, 0) -- Gina Barnes topic 0 cleared
end)

RegisterGlobalEvent(1218, nil, function()
    evt.SetMessage("人们说矮人住在哈蒙代尔南边的不毛之地，可这不完全对——他们住在地底下。\n去拜尔德斯中央三桥交汇之处找他们的前门。")
end)

RegisterGlobalEvent(1219, nil, function()
    evt.SetMessage("自从尼根的巫师从他们的岛挖穿石头城，旅人就不断要求穿城去尼根。\n矮人国王讨厌这一点，想对进入石头城的人收重费。\n不过他还没开始收，怕引起与尼根巫师的政治、甚至暴力后果。")
end)

RegisterGlobalEvent(1220, nil, function()
    evt.SetMessage("尼根的巫师住在桑达非斯山脉——那是距大陆几英里的一座大岛上的死火山。\n近来战争期间，巫师挖穿石头城，把军队运过海峡。\n那些隧道如今还通着，可以走。")
end)

RegisterGlobalEvent(1221, nil, function()
    evt.SetMessage("战争期间，巫师从尼根挖隧道穿过石头城，来到大陆抢占领土。\n尽管他们被埃拉西亚打回岛上，隧道还在。")
end)

RegisterGlobalEvent(1222, nil, function()
    evt.SetMessage("矮人住在拜尔德斯地下——那是一片贫瘠的古墓群，几百年前由他们种族修建，纪念阵亡的国王与英雄。\n并非所有古墓都能从地表到达——许多古墓通过一套传送器与陷阱系统彼此魔法相连，保护坟墓免遭盗墓者侵扰。\n你仔细看墙，应该能看到或许有助你辨路的记号。")
end)

RegisterGlobalEvent(1223, nil, function()
    if not IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        evt.SetMessage("我们在红矮人矿本可以发财，直到蛇怪来了！\n我们不得不在它们把人全变成石头之前逃走。\n没了采矿，我们几乎没法谋生。\n我说，这哪是正派矮人的活法！")
        return
    end
    evt.SetMessage("哈蒙代尔的领主们！\n英雄，我说！\n我表弟就是你们救出来的人之一！\n我们欠你们的情！")
end)

RegisterGlobalEvent(1224, nil, function()
    if not IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        evt.SetMessage("布拉卡达几年前把我们开红矮人矿的地租给了我们。\n直到蛇怪来，从我们族人手里夺走了矿。\n如今里面在发生什么恐怖的事，只有天知道。\n矿在布拉卡达东北角。")
        return
    end
    evt.SetMessage("谢谢你们把我们族人从蛇怪手里救出来！\n石头城的矮人不会忘记你们！")
end)

RegisterGlobalEvent(1225, nil, function()
    if not IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        evt.SetMessage("蛇怪从我们手里夺走红矮人矿时，并非人人都逃了出来。\n矿里还有好几尊石像。\n它们的像若还没碎，就能救回来，可你们得一路杀过蛇怪才行。")
        return
    end
    evt.SetMessage("你们大胆救了我们族人，我们欠你们良多。\n重修你们的城堡，是我们最起码能做的。")
end)

RegisterGlobalEvent(1226, nil, function()
    evt.SetMessage("喜欢我们的城吗？\n它不只是地上一个洞——是地上的一个家！\n矮人在这座山里干了几个世纪！\n不过这儿没剩多少矿了，而且剩下的都在不稳、不安全的隧道里。\n你要是去下层，小心。")
end)

RegisterGlobalEvent(1227, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("日安，各位大人。\n我得说，民众对你们能否活下去的看法正在改变。\n人人都说城堡里有了稳定的统治者，真是太好了！")
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("日安，各位大人。\n我得说，民众对你们能否活下去的看法正在改变。\n人人都说城堡里有了稳定的统治者，真是太好了！")
    else
        evt.SetMessage("恕我直言，各位大人，没人指望你们撑多久，因为哈蒙代尔别的领主都没撑久。\n埃拉西亚与埃里之间的争斗和政治迟早会吞噬你们。\n多半是早。")
        return
    end
end)

RegisterGlobalEvent(1228, nil, function()
    evt.SetMessage("哈蒙代尔的叛乱很少见，可我们也闹过几起大的！\n大多数时候，这儿的领主活不到可被人反叛的地步，不过也有几个恶名昭著的！\n倒不是说我觉得你们恶，各位大人。")
end)

RegisterGlobalEvent(1229, nil, function()
    if not IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        evt.SetMessage("很高兴又见到哈蒙代尔有人了，各位大人。\n战争以来，城堡一直空着，除了地精。\n不过我想他们不算数。")
        return
    end
    evt.SetMessage("看到城堡重修、那些可憎的地精匪徒被赶走，真好。\n自从你们接手，这一带光景好多了！")
end)

RegisterGlobalEvent(1230, nil, function()
    evt.SetMessage("埃里老是卷进战争，税又重，我就搬到哈蒙代尔长住了。\n哈蒙代尔暴力不少，可至少他们不强征入伍。\n你知道，埃里战争太多，有位国王甚至从城堡挖了条隧道通到北边的洞穴，以防城堡再次被攻破。")
end)

RegisterGlobalEvent(1231, nil, function()
    evt.SetMessage("哈蒙代尔城外一段路，有一片洞穴，一直是匪徒、怪物和其他歹人的窝。\n人们叫它白崖洞穴。\n你要是被抢了，或想找些作恶者来惩，只管上那儿去。\n你铁定能打上一架！")
end)

RegisterGlobalEvent(1232, nil, function()
    if not IsQBitSet(QBit(595)) then -- Gave false Loren to Catherine (betray)
        evt.SetMessage("你们注意到从哈蒙代尔到斯坦德威克路上那座廊桥了吗？\n它叫利文斯德要塞，保护我们免遭精灵借道哈蒙代尔突袭。\n里面陷阱和机关多得很，据说不靠背叛它永远不会陷落。\n")
        return
    end
    evt.SetMessage("我听说利文斯德要塞是靠背叛才被攻破的！\n那些可怜虫竟然能以归还本就属于我们的东西为交换，从女王那里榨出让步，真丢人！")
end)

RegisterGlobalEvent(1233, nil, function()
    if IsQBitSet(QBit(596)) then -- Gave artifact to humans
        evt.SetMessage("看来战利品落入了埃拉西亚手中。\n我听说为它打得可凶了！")
        return
    elseif IsQBitSet(QBit(597)) then -- Gave artifact to elves
        evt.SetMessage("看来战利品落入了埃里手中。\n我听说为它打得可凶了！")
        return
    elseif IsQBitSet(QBit(659)) then -- Gave artifact to arbiter
        evt.SetMessage("看来战利品落入了仲裁者手中。\n我听说为它打得可凶了！")
    else
        evt.SetMessage("有一件宝物，埃里和埃拉西亚争了几十年。\n双方都声称它是自己人造的，又在彼此的突袭中多次把它弄丢。\n它甚至不是魔法物——只是件战利品。\n十五年前，战利品在一次突袭中失踪，没人知道它去了哪儿。\n近来谣言四起，大家都在查它的下落。\n他们找到的话——小心！\n要见血了。")
        return
    end
end)
RegisterCanShowTopic(1233, function()
    evt._BeginCanShowTopic(1233)
    local visible = true
    if IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1234, nil, function()
    if not IsQBitSet(QBit(646)) then -- Arbiter Messenger only happens once
        evt.SetMessage("由于空气里满是紧张气氛，埃拉西亚和埃里雇了一位仲裁者帮他们解决分歧。\n他住在哈蒙代尔领地东缘的“星之家”。\n也许他能给你们些建议。")
        return
    end
    evt.SetMessage("格雷法官之死对我们所有人都是打击。\n我希望他的继任者不辜负他的遗业。")
end)
RegisterCanShowTopic(1234, function()
    evt._BeginCanShowTopic(1234)
    local visible = true
    if IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1235, nil, function()
    evt.SetMessage("你要是觉得需要人指点下一步做什么，或丢了重要东西，就去哈蒙代尔领地东缘星之家找仲裁者。\n他常常知道失物的下落，或对你该做什么有建议。\n我敢说你会觉得他有用。")
end)

RegisterGlobalEvent(1236, nil, function()
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        evt.SetMessage("看来你们选择的后果才刚刚开始，各位大人。\n希望你们选得明智。")
    elseif IsQBitSet(QBit(612)) then -- Chose the path of Dark
        evt.SetMessage("看来你们选择的后果才刚刚开始，各位大人。\n希望你们选得明智。")
    else
        evt.SetMessage("哈蒙代尔仲裁者格雷法官之死，使战争搁置了。\n整个世界仿佛都在屏息，等你们做出选择。\n选谁可要当心——这听起来是件大事，各位大人。")
        return
    end
end)
RegisterCanShowTopic(1236, function()
    evt._BeginCanShowTopic(1236)
    local visible = true
    if IsQBitSet(QBit(646)) then -- Arbiter Messenger only happens once
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1237, nil, function()
    evt.SetMessage("试炼场叫迷雾之墙，是塞莱斯特所有法师在学习高等技艺前必须去的地方。\n我听说它与其说是身体考验，不如说是道德考验。\n迷宫里的怪物一个也不许杀。")
end)

RegisterGlobalEvent(1238, nil, function()
    evt.SetMessage("塞莱斯特作为光明的家园已有几个世纪。\n它由马格努斯二世国王于 499 年建立，既是布拉卡达王国的核心，也是给世界其余地方的希望灯塔。\n")
end)

RegisterGlobalEvent(1239, nil, function()
    evt.SetMessage("你在迪雅地表看到的，只是死亡王国真正面貌的一小部分。\n有一座地下城，他们叫深渊。\n从地表只能经由迪雅北部的深渊之厅到达。\n")
end)

RegisterGlobalEvent(1240, nil, function()
    evt.SetMessage("塞莱斯特是布拉卡达法师们几个世纪前建的魔法城，一半嵌在山里，一半悬在布拉卡达高空的雾中。\n你必须用他们的传送器才能到那儿——传送器在布拉卡达中心附近能找到。")
end)

RegisterGlobalEvent(1241, nil, function()
    if not IsQBitSet(QBit(619)) then -- Slayed the vampire
        evt.SetMessage("近来又有一桩谋杀，成了全镇的谈资。\n又一具尸体——我听说是年轻女子——在下水道附近被发现。\n血都被抽干了，光明在上！\n我告诉你，就是那些住在下水道里的贼干的！\n一群老鼠。\n该有人下去断了他们的活路！")
        return
    end
    evt.SetMessage("原来杀人的是个吸血鬼！\n我听说就是你们除掉它的！\n谢谢！\n如今大家都安心多了。")
end)
RegisterCanShowTopic(1241, function()
    evt._BeginCanShowTopic(1241)
    local visible = true
    if IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1242, nil, function()
    evt.SetMessage("战争期间，巫师在埃里以南的山里与一种叫“克里根”的奇怪生物有过往来。\n从大陆没法到那儿，但巫师从他们的岛挖了一条海底隧道，通到克里根人的家。")
end)

RegisterGlobalEvent(1243, nil, function()
    evt.SetMessage("我们……在战争中高估了自己的牌，没能在大陆赢得任何领土。\n我们的“盟友”克里根人，结果非常不可靠。\n恩洛斯的人叫他们恶魔——如今我们知道为什么了。\n就在我们最需要他们的时候，他们掉头就跑，留我们独自面对埃拉西亚和埃里军队的怒火。\n下次，我们不会这么轻信了。")
end)

RegisterGlobalEvent(1244, nil, function()
    evt.SetMessage("人们说迪雅近来相当热闹。\n似乎迪雅的领袖（兼恩洛斯前国王）阿基巴德·铁拳已离开深渊，去了埃里东海岸外一座岛。\n一大批死灵法师跟着他去了那儿——看来内部起了某种分裂。")
end)
RegisterCanShowTopic(1244, function()
    evt._BeginCanShowTopic(1244)
    local visible = true
    if IsQBitSet(QBit(710)) then -- Archibald in Clankers Lab now
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1245, nil, function()
    if not IsQBitSet(QBit(752)) then -- Talked to Roland
        evt.SetMessage("有传闻从尼根传出，说恩洛斯的罗兰国王也许还活着。\n一些巫师说，他们与恶臭的克里根人会面时亲眼见过他。\n传闻还说克里根人把他关在笼子里，虐待得很惨。")
        return
    end
    evt.SetMessage("人们说营救罗兰国王的功劳记在了你们头上！\n各位大人，这可真是你们帽子上一根了不起的羽毛！\n了不起的羽毛！")
end)
RegisterCanShowTopic(1245, function()
    evt._BeginCanShowTopic(1245)
    local visible = true
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        return visible
    else
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(1246, nil, function()
    evt.SetMessage("灵魂罐，是死灵法师完成仪式、成为巫妖所需之物——巫妖是一种不朽的不死怪物，保留着生前的心智与记忆。\n很显然，对大多数人来说这不是理想状态，所以这类宝物市场不怎么样。\n尽管如此，死灵法师为弄到更多罐子几乎什么都肯干——他们行当的存在本身就靠它。")
end)

RegisterGlobalEvent(1247, nil, function()
    evt.SetMessage("严格说巫师是黑暗的仆从，可他们通常不暴力。\n被攻击时他们当然会自卫，可除非你先动手，他们不会挑起争斗。\n说真的，他们相当讲道理，而且认真做生意。\n我发现跟他们打交道挺愉快。")
end)

RegisterGlobalEvent(1248, nil, function()
    if not IsQBitSet(QBit(637)) then -- Destroy the magical defenses inside Clanker's Laboratory and return to Dark Shade in the Pit.
        evt.SetMessage("科兰克造的地下复合体防御好得惊人。\n前门能挡住一切魔法攻击，岛屿地形又让任何大部队难以登陆。\n到目前为止，科兰克深居简出，没人认真试探过他的防御，可他最好的防护来自复合体内部的一系列传送阻挡器。\n不先打掉这些阻挡器，任何魔法入侵部队都无法传送越过前门。")
        return
    end
    evt.SetMessage("了不起的防御也就这样了。\n传闻说，阿基巴德·铁拳率领的死灵法师直接传送到科兰克实验室，占领了它。\n不过我听说，这跟内部的背叛有点关系。")
end)
RegisterCanShowTopic(1248, function()
    evt._BeginCanShowTopic(1248)
    local visible = true
    if IsQBitSet(QBit(611)) then -- Chose the path of Light
        return visible
    else
        if IsQBitSet(QBit(612)) then -- Chose the path of Dark
            return visible
        else
            visible = false
            return visible
        end
    end
end)

RegisterGlobalEvent(1249, nil, function()
    evt.SetMessage("想找某项技能的专家指导？\n大多数技能的专家老师在哈蒙代尔、埃拉西亚和图拉林森林都能找到。")
end)

RegisterGlobalEvent(1250, nil, function()
    evt.SetMessage("近来不断有人失踪。\n不是一两个，而是每天好几个！\n他们夜里上床，第二天就没人见着，家也空了！\n真希望有人查清楚到底怎么回事！")
end)

RegisterGlobalEvent(1251, nil, function()
    evt.SetMessage("布拉卡达中部的传送器能送你去沙漠里许多地方。\n只要查看传送器前的石柱，上面写着它会送你去哪儿。\n不过小心，有些传送器出了故障，不会显示目的地！")
end)

RegisterGlobalEvent(1252, nil, function()
    if HasAward(Award(28)) then -- Completed Necromancer Breeding Pit
        evt.SetMessage("各位大人！\n阿基巴德领主派工程师和工匠来升级哈蒙代尔城堡了！\n如今我们有楼上楼下了！\n阿基巴德领主还在这些新区的箱子里留了礼物。\n工匠们正在门厅开店，会卖许多好东西！\n哦对了，工人们还发现了城堡更古老的区域——一间酷刑室和地牢！\n我们真幸运！\n我从没想过哈蒙代尔能享受到这种奢华，各位大人！")
        return
    elseif HasAward(Award(6)) then -- Completed Wizard Proving Grounds
        evt.SetMessage("各位大人！\n格文·马格努斯派工程师和工匠来升级哈蒙代尔城堡了！\n如今我们有楼上楼下了！\n格文·马格努斯还在这些新区的箱子里留了礼物。\n工匠们正在门厅开店，会卖许多好东西！\n不过工人们还发现了城堡更古老的区域——一间酷刑室和地牢。\n恐怕景象不太好看。")
    else
        evt.SetMessage("各位大人。哈蒙代尔城堡已准备就绪。")
        return
    end
end)
RegisterCanShowTopic(1252, function()
    evt._BeginCanShowTopic(1252)
    local visible = true
    if IsQBitSet(QBit(610)) then -- Built Castle to Level 2 (rescued dwarf guy)
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1253, nil, function()
    evt.SetMessage("大地上散落着一些台座，能给你暂时抵御某类魔法的保护。")
end)

RegisterGlobalEvent(1254, nil, function()
    evt.SetMessage("各位大人::鞠躬:: 既然你们已把哈蒙代尔城堡里的地精和害兽清干净，就该专心清除哈蒙代尔周边地区的地精。\n这里以东是争议地区的中心。\n那里曾爆发精灵王埃尔德里奇与埃拉西亚凯瑟琳女王军队之间的许多大战。\n地精占了这地区那座废墟堡，用它袭击任何想进哈蒙代尔的旅人！")
end)

RegisterGlobalEvent(1255, nil, function()
    evt.SetMessage("各位大人，记住哈蒙代尔城堡是你们的。\n在这儿尽管放松。\n你的睡眠永远不会被怪物打扰，你决定存进城堡箱子的任何东西也永远不会被偷走或挪走。\n你们到家了。")
end)

RegisterGlobalEvent(1256, nil, function()
    evt.SetMessage("你们若想向埃拉西亚求援，就在通往拜尔德斯、埃拉西亚和图拉林森林各条道路附近点燃烽火。\n这附近的埃拉西亚军队看到火光就会赶来援助你们！")
end)

RegisterGlobalEvent(1257, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1496) then return end -- Crate of Tularean Wood
    evt.SetMessage("啊，我朋友罗伯特·贝尔克纳普发来的一船图拉林木材。\n希望他一切都好。这是你的报酬。")
    RemoveItem(1496) -- Crate of Tularean Wood
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 294)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 241)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 251)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 237)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 273)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 255)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 286)
        return
    else
        return
    end
end)

RegisterGlobalEvent(1258, nil, function()
    evt.SetMessage("这是你的一箱狮鹫羽毛。\n图拉林森林的罗伯特·贝尔克纳普收这些羽毛出价最高。\n见到他一定代我问好。")
    ClearQBit(QBit(762)) -- Bought Item 1
    if IsAtLeast(Gold, 200) then
        if not IsAtLeast(Gold, 200) then
            return
        end
        SubtractValue(Gold, 200)
        AddValue(InventoryItem(1495), 1495) -- Crate of Griffin Feathers
        SetQBit(QBit(763)) -- Bought Item 2
        SetQBit(QBit(769)) -- Can't keep buying 2
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(1258, function()
    evt._BeginCanShowTopic(1258)
    local visible = true
    if IsQBitSet(QBit(762)) then -- Bought Item 1
        visible = true
        return visible
    else
        if IsQBitSet(QBit(769)) then -- Can't keep buying 2
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(1259, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1494) then return end -- Crate of Arrowheads
    evt.SetMessage("里德里克又给我发了一船箭头。\n太好了！\n这是你的报酬。")
    RemoveItem(1494) -- Crate of Arrowheads
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 261)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 286)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 237)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 255)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 294)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 273)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 244)
        return
    else
        return
    end
end)

RegisterGlobalEvent(1260, nil, function()
    evt.SetMessage("这是你的一箱图拉林木材。\n务必把它送到哈蒙代尔的里德里克手里。\n他会出好价钱的。")
    ClearQBit(QBit(763)) -- Bought Item 2
    if IsAtLeast(Gold, 200) then
        if not IsAtLeast(Gold, 200) then
            return
        end
        SubtractValue(Gold, 200)
        AddValue(InventoryItem(1496), 1496) -- Crate of Tularean Wood
        SetQBit(QBit(764)) -- Bought Item 3
        SetQBit(QBit(770)) -- Can't keep buying 3
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(1260, function()
    evt._BeginCanShowTopic(1260)
    local visible = true
    if IsQBitSet(QBit(763)) then -- Bought Item 2
        visible = true
        return visible
    else
        if IsQBitSet(QBit(770)) then -- Can't keep buying 3
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(1261, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1495) then return end -- Crate of Griffin Feathers
    evt.SetMessage("皮普·希利尔又发了一船狮鹫羽毛。\n这是你的报酬。\n好好享受这一天！")
    RemoveItem(1495) -- Crate of Griffin Feathers
    evt.ForPlayer(Players.Current)
    if IsAtLeast(DayOfWeek, 0) then
        AddValue(Gold, 234)
        return
    elseif IsAtLeast(DayOfWeek, 1) then
        AddValue(Gold, 267)
        return
    elseif IsAtLeast(DayOfWeek, 2) then
        AddValue(Gold, 250)
        return
    elseif IsAtLeast(DayOfWeek, 3) then
        AddValue(Gold, 291)
        return
    elseif IsAtLeast(DayOfWeek, 4) then
        AddValue(Gold, 244)
        return
    elseif IsAtLeast(DayOfWeek, 5) then
        AddValue(Gold, 285)
        return
    elseif IsAtLeast(DayOfWeek, 6) then
        AddValue(Gold, 273)
        return
    else
        return
    end
end)

RegisterGlobalEvent(1262, nil, function()
    evt.SetMessage("谢谢！\n这是你的一箱沙子。被遗弃拜尔德斯的阿文·云幕为这沙子出好价钱——他用它造精美的瓶子！")
    ClearQBit(QBit(767)) -- Bought Item 6
    if IsAtLeast(Gold, 2000) then
        if not IsAtLeast(Gold, 2000) then
            return
        end
        SubtractValue(Gold, 2000)
        AddValue(InventoryItem(1497), 1497) -- Crate of Sand
        SetQBit(QBit(765)) -- Bought Item 4
        SetQBit(QBit(771)) -- Can't keep buying 4
        SetValue(Counter(7), 0)
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(1262, function()
    evt._BeginCanShowTopic(1262)
    local visible = true
    if IsQBitSet(QBit(767)) then -- Bought Item 6
        visible = true
        return visible
    else
        if IsQBitSet(QBit(771)) then -- Can't keep buying 4
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(1263, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1499) then return end -- Crate of Enrothian Wine
    evt.SetMessage("啊，因费尔农发来的一船恩洛斯葡萄酒。\n这会温暖许多人的心！这是你的报酬。")
    RemoveItem(1499) -- Crate of Enrothian Wine
    evt.ForPlayer(Players.Current)
    if IsAtLeast(Counter(9), 24) then
        if IsAtLeast(Counter(9), 120) then
            if IsAtLeast(Counter(9), 240) then
                AddValue(Gold, 2500)
                return
            end
            AddValue(Gold, 2250)
            return
        end
        AddValue(Gold, 2750)
        return
    end
    AddValue(Gold, 3000)
end)

RegisterGlobalEvent(1264, nil, function()
    evt.SetMessage("务必把这箱玻璃瓶送到埃里的因费尔农手里。\n他装的是最上等的恩洛斯葡萄酒。")
    ClearQBit(QBit(765)) -- Bought Item 4
    if IsAtLeast(Gold, 2000) then
        if not IsAtLeast(Gold, 2000) then
            return
        end
        SubtractValue(Gold, 2000)
        AddValue(InventoryItem(1498), 1498) -- Crate of Glass Bottles
        SetQBit(QBit(766)) -- Bought Item 5
        SetQBit(QBit(772)) -- Can't keep buying 5
        SetValue(Counter(8), 0)
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(1264, function()
    evt._BeginCanShowTopic(1264)
    local visible = true
    if IsQBitSet(QBit(765)) then -- Bought Item 4
        visible = true
        return visible
    else
        if IsQBitSet(QBit(772)) then -- Can't keep buying 5
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(1265, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1497) then return end -- Crate of Sand
    evt.SetMessage("啊，卡林德拉·金视发来的一船沙子。\n这是你的报酬。")
    RemoveItem(1497) -- Crate of Sand
    evt.ForPlayer(Players.Current)
    if IsAtLeast(Counter(7), 24) then
        if IsAtLeast(Counter(7), 120) then
            if IsAtLeast(Counter(7), 240) then
                AddValue(Gold, 2500)
                return
            end
            AddValue(Gold, 2250)
            return
        end
        AddValue(Gold, 2750)
        return
    end
    AddValue(Gold, 3000)
end)

RegisterGlobalEvent(1266, nil, function()
    evt.SetMessage("这是你的一箱恩洛斯葡萄酒。\n把它送到泰塔利亚的卡林德拉·金视手里，她会付你好价钱！")
    ClearQBit(QBit(766)) -- Bought Item 5
    if IsAtLeast(Gold, 2000) then
        if not IsAtLeast(Gold, 2000) then
            return
        end
        SubtractValue(Gold, 2000)
        AddValue(InventoryItem(1499), 1499) -- Crate of Enrothian Wine
        SetQBit(QBit(767)) -- Bought Item 6
        SetQBit(QBit(773)) -- Can't keep buying 6
        SetValue(Counter(9), 0)
        return
    end
    evt.SetMessage("你的金币不够！")
end)
RegisterCanShowTopic(1266, function()
    evt._BeginCanShowTopic(1266)
    local visible = true
    if IsQBitSet(QBit(766)) then -- Bought Item 5
        visible = true
        return visible
    else
        if IsQBitSet(QBit(773)) then -- Can't keep buying 6
            visible = false
            return visible
        else
            visible = true
            return visible
        end
    end
end)

RegisterGlobalEvent(1267, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(1498) then return end -- Crate of Glass Bottles
    evt.SetMessage("阿文·云幕又给我发了一船玻璃瓶。\n该再装几瓶恩洛斯葡萄酒了。\n这是你的报酬。")
    RemoveItem(1498) -- Crate of Glass Bottles
    evt.ForPlayer(Players.Current)
    if IsAtLeast(Counter(8), 24) then
        if IsAtLeast(Counter(8), 120) then
            if IsAtLeast(Counter(8), 240) then
                AddValue(Gold, 2500)
                return
            end
            AddValue(Gold, 2250)
            return
        end
        AddValue(Gold, 2750)
        return
    end
    AddValue(Gold, 3000)
end)

RegisterGlobalEvent(1268, nil, function()
    evt.SetMessage("你可以从这个港口包船去埃拉西亚，逢周二、周四、周六开。去布拉卡达沙漠的船逢周一、周三开。去埃里的船只在周五开。你若完成了牧师任务，星期天就可以包船去埃弗蒙岛。")
end)

RegisterGlobalEvent(1269, nil, function()
    evt.SetMessage("你要是想从下面的隧道快速赶到尼根，就走尼根隧道的左岔。\n许多人走了右岔，再没音讯。\n不过，他们也许是到了尼根，结果被巫师抓了！")
end)

RegisterGlobalEvent(1270, nil, function()
    evt.SetMessage("埃拉西亚各地许多商人雇旅人送货！\n你要是缺点外快，就找个这样的商人，替他送趟货！")
end)

RegisterGlobalEvent(1271, nil, function()
    evt.CastSpell(5, 5, 4, 0, 0, 0, 0, 0, 0) -- Haste
end)

RegisterGlobalEvent(1272, nil, function()
    evt.CastSpell(36, 5, 4, 0, 0, 0, 0, 0, 0) -- Earth Resistance
end)

RegisterGlobalEvent(1273, nil, function()
    evt.CastSpell(83, 5, 4, 0, 0, 0, 0, 0, 0) -- Day of the Gods
end)

RegisterGlobalEvent(1274, nil, function()
    evt.CastSpell(17, 5, 4, 0, 0, 0, 0, 0, 0) -- Shield
end)

RegisterGlobalEvent(1275, nil, function()
    evt.CastSpell(25, 5, 4, 0, 0, 0, 0, 0, 0) -- Water Resistance
end)

RegisterGlobalEvent(1276, nil, function()
    evt.CastSpell(3, 5, 4, 0, 0, 0, 0, 0, 0) -- Fire Resistance
end)

RegisterGlobalEvent(1277, nil, function()
    evt.CastSpell(51, 5, 4, 0, 0, 0, 0, 0, 0) -- Heroism
end)

RegisterGlobalEvent(1278, nil, function()
    evt.CastSpell(8, 5, 4, 0, 0, 0, 0, 0, 0) -- Immolation
end)

RegisterGlobalEvent(1279, nil, function()
    evt.CastSpell(58, 5, 4, 0, 0, 0, 0, 0, 0) -- Mind Resistance
end)

RegisterGlobalEvent(1280, nil, function()
    evt.CastSpell(69, 5, 4, 0, 0, 0, 0, 0, 0) -- Body Resistance
end)

RegisterGlobalEvent(1281, nil, function()
    evt.CastSpell(38, 5, 4, 0, 0, 0, 0, 0, 0) -- Stone Skin
end)

RegisterGlobalEvent(1282, nil, function()
    evt.CastSpell(14, 5, 4, 0, 0, 0, 0, 0, 0) -- Air Resistance
end)

RegisterGlobalEvent(1283, nil, function()
    if IsPlayerBitSet(PlayerBit(31)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(31))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1284, nil, function()
    if IsPlayerBitSet(PlayerBit(32)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(32))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1285, nil, function()
    if IsPlayerBitSet(PlayerBit(33)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(33))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1286, nil, function()
    if IsPlayerBitSet(PlayerBit(34)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(34))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1287, nil, function()
    if IsPlayerBitSet(PlayerBit(35)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(35))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1288, nil, function()
    if IsPlayerBitSet(PlayerBit(36)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(36))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1289, nil, function()
    if IsPlayerBitSet(PlayerBit(37)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 25) then
        AddValue(SkillPoints, 3)
        evt.StatusText("你赢了！\n技能点 +3")
        SetPlayerBit(PlayerBit(37))
    else
        evt.StatusText("你未能通过游戏！")
    end
end)

RegisterGlobalEvent(1290, nil, function()
    if IsPlayerBitSet(PlayerBit(38)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(38))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1291, nil, function()
    if IsPlayerBitSet(PlayerBit(39)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(39))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1292, nil, function()
    if IsPlayerBitSet(PlayerBit(40)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(40))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1293, nil, function()
    if IsPlayerBitSet(PlayerBit(41)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(41))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1294, nil, function()
    if IsPlayerBitSet(PlayerBit(42)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(42))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1295, nil, function()
    if IsPlayerBitSet(PlayerBit(43)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(43))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1296, nil, function()
    if IsPlayerBitSet(PlayerBit(44)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 50) then
        AddValue(SkillPoints, 5)
        evt.StatusText("你赢了！\n技能点 +5")
        SetPlayerBit(PlayerBit(44))
    else
        evt.StatusText("你未能通过竞赛！")
    end
end)

RegisterGlobalEvent(1297, nil, function()
    if IsPlayerBitSet(PlayerBit(45)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(45))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1298, nil, function()
    if IsPlayerBitSet(PlayerBit(46)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(46))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1299, nil, function()
    if IsPlayerBitSet(PlayerBit(47)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(47))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1300, nil, function()
    if IsPlayerBitSet(PlayerBit(48)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(48))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1301, nil, function()
    if IsPlayerBitSet(PlayerBit(49)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(49))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1302, nil, function()
    if IsPlayerBitSet(PlayerBit(50)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(50))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1303, nil, function()
    if IsPlayerBitSet(PlayerBit(51)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 100) then
        AddValue(SkillPoints, 7)
        evt.StatusText("你赢了！\n技能点 +7")
        SetPlayerBit(PlayerBit(51))
    else
        evt.StatusText("你未能通过试炼！")
    end
end)

RegisterGlobalEvent(1304, nil, function()
    if IsPlayerBitSet(PlayerBit(52)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualMight, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(52))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1305, nil, function()
    if IsPlayerBitSet(PlayerBit(53)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualEndurance, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(53))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1306, nil, function()
    if IsPlayerBitSet(PlayerBit(54)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualIntellect, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(54))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1307, nil, function()
    if IsPlayerBitSet(PlayerBit(55)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualPersonality, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(55))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1308, nil, function()
    if IsPlayerBitSet(PlayerBit(56)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualAccuracy, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(56))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1309, nil, function()
    if IsPlayerBitSet(PlayerBit(57)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualSpeed, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(57))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1310, nil, function()
    if IsPlayerBitSet(PlayerBit(58)) then
        evt.StatusText("你已经赢过了！")
        return
    elseif IsAtLeast(ActualLuck, 200) then
        AddValue(SkillPoints, 10)
        evt.StatusText("你赢了！\n技能点 +10")
        SetPlayerBit(PlayerBit(58))
    else
        evt.StatusText("你未能通过挑战！")
    end
end)

RegisterGlobalEvent(1311, nil, function()
    evt.SetMessage("什么！\n你不会相信这种捏造吧？\n我做梦也不会去破坏你在这里的统治！\n嘎啊！\n准备受死吧！")
    evt.SetMonGroupBit(84, MonsterBits.Invisible, 1)
    evt.SetMonGroupBit(85, MonsterBits.Invisible, 0)
end)
RegisterCanShowTopic(1311, function()
    evt._BeginCanShowTopic(1311)
    local visible = true
    if HasItem(1518) then -- Letter to Hairbaugh
        visible = true
        return visible
    else
        visible = false
        return visible
    end
end)

RegisterGlobalEvent(1312, nil, function()
    evt.SetMessage("我听传闻说，这地方东南那座圣坛能把你送到巨人领地。\n我去过圣坛许多次，它从没对我起过什么特殊作用。\n还是说，是从巨人领地能到这儿？我好奇……")
end)

RegisterGlobalEvent(1313, nil, function()
    evt.SetMessage("大地上散落着各种挑战。\n你本领够强、又通过了挑战，就会获得技能点，随意支配！")
end)

RegisterGlobalEvent(1314, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2125) then -- The Letter
        evt.SetMessage("我的指示很清楚。\n我要付钱给携带盖印信件的人。\n既然你没有盖印信件，就拿不到钱！")
        return
    end
    evt.SetMessage("哦！\n印章。\n来，我该把这钱给你。\n现在，趁没人看见我们在一起，快走吧！\n会有人起疑的。")
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 1000)
    evt.SetNPCTopic(786, 0, 1315) -- Andover Potbello topic 0: The Letter
    ClearQBit(QBit(1105)) -- Show Sulman's letter to Andover Potbello in New Sorpigal. - Set when the party starts
    SetQBit(QBit(1106)) -- Bring Sulman's letter to Regent Wilbur Humphrey at Castle Ironfist. - Set by Andover after you show him the letter
end)

RegisterGlobalEvent(1315, nil, function()
    evt.SetMessage("别说我没付钱给你！\n你拿到你的金币了！\n")
end)

RegisterGlobalEvent(1316, nil, function()
    evt.SetMessage("镇南不远处有一座叫大耳怪前哨的古老要塞。\n它当初是为保护镇子免遭地精劫掠而建，可近来太太平，我们一直没维护它。\n你可以想见，当我们意识到自己要防的怪物已经搬进要塞时有多尴尬！\n他们还换掉了通往地牢层下方洞穴一扇非常重要门的锁。\n谁能弄清密码并告诉我们，我们常年悬赏 2000 金币。")
    evt.SetNPCTopic(1076, 0, 1317) -- Janice topic 0: Goblinwatch
    SetQBit(QBit(1107)) -- Find the Combination to the vault door in Goblinwatch and return to the Town Hall in New Sorpigal. - Set by Town Hall
    AddValue(InventoryItem(2109), 2109) -- Key to Goblinwatch
end)

RegisterGlobalEvent(1317, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2163) then -- Goblinwatch Code
        evt.SetMessage("你站在这儿怎么找得到那把锁的密码？\n快走！")
        return
    end
    evt.SetMessage("啊，谢谢你替我们解决了那个小麻烦。\n这是你的金币！\n你随时可以回大耳怪前哨，清完剩下的怪物。\n我们没法付你钱，但在那儿找到的东西都归你。\n")
    SetAward(Award(95)) -- Solved the Goblinwatch Combination
    AddValue(Experience, 2000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 2000)
    AddValue(131307, 2)
    ClearQBit(QBit(1107)) -- Find the Combination to the vault door in Goblinwatch and return to the Town Hall in New Sorpigal. - Set by Town Hall
    evt.SetNPCTopic(1076, 0, 1318) -- Janice topic 0: Evil Cults
    evt.MoveNPC(1081, 0) -- Urok -> removed
    evt.MoveNPC(828, 1463) -- Samson Tess -> House
end)

RegisterGlobalEvent(1318, nil, function()
    evt.SetMessage("你大耳怪前哨的活儿干得漂亮，我们想再雇你一次。\n一个教团搬进了西边几天路程外一座废弃的古神庙。\n为支付他们亵渎神灵的勾当，他们一直在大路上劫掠通往铁拳城堡的旅人。\n我们已请求摄政者对这些可怕的教团分子采取行动，可他说他所有兵力都在西部，或诸如此类的废话。\n我们要他们立刻滚蛋，所以愿付你 5000 金币，除掉他们，并把和谐钟带回来作为你办成此事的凭证。")
    evt.SetNPCTopic(1076, 0, 1319) -- Janice topic 0: Evil Cults
    SetQBit(QBit(1108)) -- Get the Chime of Harmony from the Temple of Baa and return to the New Sorpigal Town Hall. - Paul
end)

RegisterGlobalEvent(1319, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2095) then -- Chime of Harmony
        evt.SetMessage("没有和谐钟，我无权支付赏金。\n")
        return
    end
    evt.SetMessage("干得好！\n这是你的金币！\n你毁了那座神庙，我感激不尽。\n如今通往铁拳的路又能安全通行了。")
    RemoveItem(2095) -- Chime of Harmony
    AddValue(Experience, 10000)
    SetAward(Award(96)) -- Returned with the Chime of Harmony
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    AddValue(131307, 2)
    ClearQBit(QBit(1108)) -- Get the Chime of Harmony from the Temple of Baa and return to the New Sorpigal Town Hall. - Paul
    evt.SetNPCTopic(1076, 0, 1320) -- Janice topic 0: Evil Cults
end)

RegisterGlobalEvent(1320, nil, function()
    evt.SetMessage("多亏你，通往铁拳的路安全多了。\n我们感谢你。")
end)

RegisterGlobalEvent(1321, nil, function()
    evt.SetMessage("嚎叫月的店主是乔治·卡尼斯。\n那是个好地方。\n替我向他问好！")
end)

RegisterGlobalEvent(1322, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2125) then -- The Letter
        evt.SetMessage("欢迎，冒险者们！\n你们有东西要给我吗？\n我可是个大忙人，你知道的。\n")
        return
    end
    evt.SetMessage("非常感谢你们给我带来这些信！<威尔伯开始读信>我一直好担心……我看看……这不是好消息……哦，不。\n叛徒！\n到处都是叛徒和阴谋家！\n我必须立刻组织一支远征队！<威尔伯压低声音>我相信你不会把这些信的事告诉王子——他已经太沮丧不快，听不进更多坏消息了。\n现在我得去安排远征队。\n这袋金币是给你的报酬——你挣得它，也赢得我的感激。\n唉，要是我能找到人接着寻找基尔伯恩领主就好了……")
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    evt.ForPlayer(Players.All)
    SetAward(Award(100)) -- Delivered 6th Letter to Wilbur Humphry
    RemoveItem(2125) -- The Letter
    ClearQBit(QBit(1205)) -- Quest item bits for seer
    ClearQBit(QBit(1106)) -- Bring Sulman's letter to Regent Wilbur Humphrey at Castle Ironfist. - Set by Andover after you show him the letter
    ClearQBit(QBit(1105)) -- Show Sulman's letter to Andover Potbello in New Sorpigal. - Set when the party starts
    AddValue(Experience, 3000)
    evt.SetNPCTopic(789, 0, 1323) -- Wilbur Humphrey topic 0: Lord Kilburn
end)

RegisterGlobalEvent(1323, nil, function()
    evt.SetMessage("<威尔伯打了个响指>我说，你该不会有兴趣替我办件小事吧？\n基尔伯恩领主在布莱克郡附近失踪了。\n尽量查，带着消息回来见我。\n他若真的已被恶魔杀害，务必把他的盾带回来给我。\n你若需要，我会让你在高等理事会里得我关照，你的报酬也保证丰厚。")
    SetQBit(QBit(1110)) -- Find Lord Kilburn's Shield and return to Wilbur Humphrey in Castle Ironfist to report. - Paul
    evt.SetNPCTopic(789, 0, 1324) -- Wilbur Humphrey topic 0: Lord Kilburn
end)

RegisterGlobalEvent(1324, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2119) then -- Lord Kilburn's Shield
        evt.SetMessage("嗯。\n还没找到盾，是吧？\n那你继续找，好吗？\n有人查清他的下落，真的很重要。")
        return
    end
    evt.SetMessage("啊。\n如此高贵的骑士竟死于这等恶臭怪物之手，真是悲哀的一天！\n你把他的盾带给我，做了件好事。\n我会确保他和他的部下得到应有的一切荣誉。\n我欠你的情，你在理事会里有我关照。\n这是你的报酬。")
    RemoveItem(2119) -- Lord Kilburn's Shield
    ClearQBit(QBit(1206)) -- Quest item bits for seer
    AddValue(Experience, 40000)
    SetAward(Award(57)) -- Retrieved Lord Kilburn's Shield
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    AddValue(655595, 10)
    evt.SetNPCTopic(789, 0, 1325) -- Wilbur Humphrey topic 0: The High Council
    ClearQBit(QBit(1110)) -- Find Lord Kilburn's Shield and return to Wilbur Humphrey in Castle Ironfist to report. - Paul
    evt.ForPlayer(Players.All)
    if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
    if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
    if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
    if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
    if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
    if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
    if HasAward(Award(62)) then -- Ended Winter
        SetQBit(QBit(1191)) -- NPC
    end
end)

RegisterGlobalEvent(1325, nil, function()
    if not HasAward(Award(63)) then -- Exposed the Traitor on the High Council
        evt.SetMessage("好吧，在高等理事会里，你有我这一票。\n我完全信任你。\n我已派信使吩咐滑头银舌替我投你一票。\n我现在很忙，得去处理别的职责。\n我相信你能处理好此事中可能出现的任何问题和误会。\n对。\n很对。")
        return
    end
    evt.SetMessage("你揭露出那个可怕叛徒及其对王座的罪行，我感激不尽。\n我知道你在执行某项重要任务，所以为酬谢你对王室的效劳，我理应让你免费使用皇家游艇出行。\n需要的话，它可以送你一直到隐士岛。\n再一次，谢谢你！")
    evt.ForPlayer(Players.All)
    SetAward(Award(101)) -- Allowed to use the Royal Yacht
end)

RegisterGlobalEvent(1326, nil, function()
    evt.SetMessage("我是首席圣武士，因此，晋升与维护圣武士头衔和职责的责任在我。\n那些想通过任务正式晋升十字军的圣武士，必须营救一位落难少女。\n你们中间非圣武士者将被授予荣誉十字军头衔，所有人都可得一笔可观的金币报酬。\n带着那位少女回来见我，我就把参与营救的圣武士晋升为十字军。")
    SetQBit(QBit(1112)) -- Rescue a Damsel in Distress and return with her to Wilbur Humphrey in Castle Ironfist. - Paul
    evt.SetNPCTopic(789, 1, 1327) -- Wilbur Humphrey topic 1: Crusaders
end)

RegisterGlobalEvent(1327, nil, function()
    if not IsQBitSet(QBit(1699)) then -- Replacement for NPCs �11 ver. 6
        evt.SetMessage("我知道落难少女稀缺，可这任务是传统试炼。\n我在这儿实在不能通融规则。\n继续找——我相信你们会找到人的。\n要帮忙的话，我听说贵族约翰·西尔弗之女米拉达·席尔瓦，被一群暴徒囚禁在浓雾岛上。")
        return
    end
    evt.SetMessage("我听过你们大胆营救的故事，很高兴你们带着西尔弗小姐回来了。\n我会立刻安排把她送回家人身边。\n堪称楷模的工作！\n我特此正式把所有圣武士晋升为十字军，把所有非圣武士封为荣誉十字军！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 26) then
            SetValue(ClassId, 27)
            SetQBit(QBit(1635)) -- Received Promotion to Crusader
        else
            SetQBit(QBit(1636)) -- Received Promotion to Honorary Crusader
        end
    end
    AddValue(Gold, 5000)
    ClearQBit(QBit(1699)) -- Replacement for NPCs �11 ver. 6
    ClearQBit(QBit(1112)) -- Rescue a Damsel in Distress and return with her to Wilbur Humphrey in Castle Ironfist. - Paul
    AddValue(131307, 2)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    evt.SetNPCTopic(789, 1, 1328) -- Wilbur Humphrey topic 1: Heroes
end)

RegisterGlobalEvent(1328, nil, function()
    evt.SetMessage("那么！\n晋升十字军是好事，可晋升英雄更是大好事。\n你们现在大概也猜到了，英雄身份的条件是杀一条龙。\n我知道这看似很难，可传统有传统的要求。\n更糟的是，你不能随便杀一条龙，必须杀一条有名的龙。\n你的任务是杀死长牙·枯皮，带一只爪或一颗牙作凭证回来。\n幸运的是，我们知道长牙齿在黑摩尔城堡后方山里的一个洞穴里。\n他已杀了至少十二个想当英雄的人，小心！")
    SetQBit(QBit(1113)) -- Slay Longfang Witherhide in his cave near Castle Darkmoor and return to Wilbur Humphrey in Castle Ironfist. - Paul
    evt.SetNPCTopic(789, 1, 1329) -- Wilbur Humphrey topic 1: Heroes
end)

RegisterGlobalEvent(1329, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2075) then -- Dragon Claw
        evt.SetMessage("回来跟我谈你的任务没用。\n我改不了规则，也改不了你的任务。\n长牙正等着你的复仇之剑。\n现在就动手！")
        return
    end
    evt.SetMessage("干得好！\n世上少一个可怕怪物是好事。\n我特此正式把所有十字军晋升为英雄，把所有荣誉十字军封为荣誉英雄！愿你们长久不辜负这个头衔！")
    AddValue(Experience, 30000)
    RemoveItem(2075) -- Dragon Claw
    ClearQBit(QBit(1209)) -- Quest item bits for seer
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 27) then
            SetValue(ClassId, 28)
            SetQBit(QBit(1637)) -- Received Promotion to Hero
        else
            SetQBit(QBit(1638)) -- Received Promotion to Honorary Hero
        end
    end
    AddValue(327915, 5)
    ClearQBit(QBit(1113)) -- Slay Longfang Witherhide in his cave near Castle Darkmoor and return to Wilbur Humphrey in Castle Ironfist. - Paul
    evt.SetNPCTopic(789, 1, 1330) -- Wilbur Humphrey topic 1: Heroes
end)

RegisterGlobalEvent(1330, nil, function()
    evt.SetMessage("能与王国的英雄交谈总是愉快！\n等不那么忙碌的时候回来，我们围炉交换荣誉与勇气的故事！")
end)

RegisterGlobalEvent(1331, nil, function()
    evt.SetMessage("宫里沉闷得要死，人人都对我指手画脚。\n当王室其实没多大意思，父亲不在时谁也不让我出城墙。\n我好几个月没离开城堡了！\n总之，你们这些人看着挺重要。\n要不你们帮我溜出去，跟你们待上几天？\n我暂时给不了你们什么回报，可我会欠你们一个人情。\n总有一天我能报答你们。\n我毕竟是王子！\n我从密门出去，在外面跟你们会合。")
    SetQBit(QBit(1114)) -- Entertain Nicolai. - Paul
    SetQBit(QBit(1700)) -- Replacement for NPCs �13 ver. 6
    evt.SetNPCTopic(798, 0, 1332) -- Nicolai Ironfist topic 0: The Circus
end)

RegisterGlobalEvent(1332, nil, function()
    evt.SetMessage("我们去看马戏吧！")
end)

RegisterGlobalEvent(1333, nil, function(continueStep)
    if continueStep == 7 then
    end
    if continueStep ~= nil then return end
    evt.MoveNPC(798, 1595) -- Nicolai Ironfist -> Circus
    ClearQBit(QBit(1700)) -- Replacement for NPCs �13 ver. 6
    evt.SetMessage("看来尼古拉王子在你们休息时失踪了。")
    ClearQBit(QBit(1114)) -- Entertain Nicolai. - Paul
    SetQBit(QBit(1119)) -- Find and return Prince Nicolai to Castle Ironfist. - Walt
    evt.SetNPCTopic(798, 0, 1334) -- Nicolai Ironfist topic 0: Excuse me, your Highness�
    evt._PressAnyKey(1333, 7)
end)

RegisterGlobalEvent(1334, nil, function()
    evt.SetMessage("呃。\n你好。<勉强地微笑>你们会相信我迷了路，这些好心人正送我回家吗？\n不信？\n我想我也不会信。\n那我们该回城堡了。")
    SetQBit(QBit(1700)) -- Replacement for NPCs �13 ver. 6
    evt.SetNPCTopic(798, 0, 1335) -- Nicolai Ironfist topic 0: Excuse me, your Highness�
end)

RegisterGlobalEvent(1335, nil, function()
    evt.SetMessage("我们该回铁拳城堡了。")
end)

RegisterGlobalEvent(1337, nil, function()
    evt.SetMessage("谢谢你们送我回家。\n我欠你们一个人情！")
end)

RegisterGlobalEvent(1338, nil, function()
    evt.SetMessage("人人都说我阿基巴德叔叔不是好人，还差点从父亲手里篡夺王位，但我们打败了他。\n父亲让坦耐尔把他变成石头，然后锁进了图书馆。\n多年没人进去过了。")
end)

RegisterGlobalEvent(1339, nil, function()
    evt.SetMessage("你们想放阿基巴德？！\n神使让你们做的，我想我们就该照办，可他一旦脱身肯定会惹麻烦，那是一定的。\n我知道把他变成石头的那口钟在哪儿，可没有第三只眼，我打不开存放它的家族金库。\n要开金库门，你得把三颗宝石嵌进门上。\n我已有两颗——一颗在父亲王冠上，一颗在他权杖上——可父亲把第三颗藏了起来，也没告诉我在哪儿。\n你们要是能找到它，我就能打开金库，取出那口钟。")
    SetQBit(QBit(1120)) -- Find the Third Eye and bring it to Prince Nicolai in Castle Ironfist. - Walt
    evt.SetNPCTopic(798, 1, 1340) -- Nicolai Ironfist topic 1: Uncle Archibald
    evt.SetNPCTopic(793, 1, 0) -- Oracle topic 1 cleared
end)

RegisterGlobalEvent(1340, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2066) then -- The Third Eye
        evt.SetMessage("没有第三只眼，我进不了金库，取不到释放阿基巴德的钟。\n他一定是把它藏在城堡附近，因为他从前要开金库时，总是直接出去取。")
        return
    end
    evt.SetMessage("你们找到第三只眼了！\n好，在这儿等着——钟应该在金库里。\n<尼古拉跑出觐见厅，过了一小会儿回来>好了，给你！")
    RemoveItem(2066) -- The Third Eye
    ClearQBit(QBit(1220)) -- Quest item bits for seer
    ClearQBit(QBit(1120)) -- Find the Third Eye and bring it to Prince Nicolai in Castle Ironfist. - Walt
    evt.ForPlayer(Players.Current)
    AddValue(InventoryItem(2081), 2081) -- Tanir's Bell
    SetQBit(QBit(1221)) -- Quest item bits for seer
    evt.SetNPCTopic(798, 1, 1341) -- Nicolai Ironfist topic 1: Uncle Archibald
end)

RegisterGlobalEvent(1341, nil, function()
    evt.SetMessage("希望你们知道自己在做什么。\n人人都说我叔叔非常狡诈。")
end)

RegisterGlobalEvent(1343, nil, function()
    if IsQBitSet(QBit(1201)) then return end -- NPC
    evt.SetMessage("等等，坦耐尔，我让你放了我，对你大有好处……哦。<阿基巴德沉默了很久>我想我该感谢你们这些人把我从石头牢笼里放出来。\n谢谢！\n你们说需要我创造的某个法术？<伸手到书架取下一卷图书馆卷轴>那么，作为酬谢，我就给你们虚空仪式。\n拿去用，祝你们健康。\n现在，我想你们都很忙，我也一样……<阿基巴德挥挥手，渐渐消失>")
    AddValue(InventoryItem(2164), 2164) -- Ritual of the Void
    ClearQBit(QBit(1221)) -- Quest item bits for seer
    SetQBit(QBit(1201)) -- NPC
    ClearQBit(QBit(1121)) -- Walt
    ClearQBit(QBit(1259)) -- Obtain Arcane Magic from Archibald in the Royal Library in Castle Ironfist - NPC
    SetQBit(QBit(1222)) -- Quest item bits for seer
    evt.ForPlayer(Players.All)
    SubtractValue(3277035, 50)
    AddValue(Experience, 50000)
    evt.MoveNPC(797, 0) -- Archibald Ironfist -> removed
end)

RegisterGlobalEvent(1344, nil, function()
    evt.SetMessage("谢谢你们把我从那些暴徒的魔爪里救出来！\n噢，真希望我有办法报答你们！")
    SetQBit(QBit(1699)) -- Replacement for NPCs �11 ver. 6
    SetQBit(QBit(1151)) -- NPC
end)

RegisterGlobalEvent(1345, nil, function()
    evt.SetMessage("监督王国里那些，呃，不那么正派的行当，是我的传统职责。\n我的家族这样做已有几个世纪，秉持的理念是：这种行当永远存在，与其放任不管，不如监视和规范。\n近来，一个自称“盗贼亲王”的人开始在自由天堂篡夺我的权威。\n他不仅挑战我的权威，还与近来冒出来的那个可憎新教团勾结……叫什么来着？\n哞，还是咩，还是汪……不对……管它呢。\n某种动物叫声。\n总之，我的线人说，这个教团密谋推翻国王、在恩洛斯夺权。\n这是坏事，必须制止。\n你们可以先从逮捕盗贼亲王、把他铁链加身押回来开始。\n我当然会重谢你们。\n")
    SetQBit(QBit(1122)) -- Capture the Prince of Thieves and bring him to Lord Anthony Stone at Castle Stone. - NPC
    evt.SetNPCTopic(801, 0, 1346) -- Anthony Stone topic 0: The Prince of Thieves
end)

RegisterGlobalEvent(1346, nil, function()
    if not IsQBitSet(QBit(1701)) then -- Replacement for NPCs �17 ver. 6
        evt.SetMessage("我不知道他在哪儿，跟我谈也没用。\n去自由天堂四处打听吧。\n他那镇上或附近某处一定有个窝。\n<微笑>你们找到他住处时，记得查床底下和衣橱——他多半就藏在一堆衣服底下。")
        return
    end
    ClearQBit(QBit(1122)) -- Capture the Prince of Thieves and bring him to Lord Anthony Stone at Castle Stone. - NPC
    evt.SetMessage("啊！\n朋友们，你们带着包裹回来了！\n干得好！\n这是你们的酬金。\n在理事会里我全力支持你们。<看着那位亲王>欢迎光临寒舍，伟大的亲王。\n我专门为您准备了一间房。\n卫兵！\n把他带下去。")
    evt.SetNPCTopic(801, 0, 1347) -- Anthony Stone topic 0: The High Council
    AddValue(Gold, 10000)
    AddValue(655595, 10)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 30000)
    SetAward(Award(60)) -- Captured the Prince of Thieves
    ClearQBit(QBit(1701)) -- Replacement for NPCs �17 ver. 6
    evt.SetNPCTopic(802, 0, 1347) -- The Prince of Thieves topic 0: The High Council
    evt.ForPlayer(Players.All)
    if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
    if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
    if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
    if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
    if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
    if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
    if HasAward(Award(62)) then -- Ended Winter
        SetQBit(QBit(1191)) -- NPC
    end
end)

RegisterGlobalEvent(1347, nil, function()
    evt.SetMessage("你们捕获盗贼亲王一事，对我大有好处。\n在高等理事会里，我全力支持你们。")
end)

RegisterGlobalEvent(1348, nil, function()
    evt.SetMessage("除了监督无照行当的职责外，我还是恩洛斯的大祭司。\n我的工作是把牧师晋升为神甫，条件合适时再把神甫晋升为@光明主教@。\n眼下名册上神甫已满，不增设新职位我就没法晋升新人。\n那样做极不正规，但要是有人为王国立下非凡功绩，这种晋升是可以接受的。\n<揉着太阳穴>说起来，倒有件事我需要人办。\n自由天堂一座神庙几个月前毁于火灾。\n你们若能把它重建起来，我就有理由把你们中间的牧师晋升为神甫。\n既然我真的很想办成这件事，我甚至愿意把非神甫者封为荣誉神甫，并会为你们的效劳付重酬。\n你们得雇一名石匠和一名木匠，带他们看那座要修的神庙。")
    SetQBit(QBit(1129)) -- Hire a Stonecutter and a Carpenter, bring them to Temple Stone in Free Haven to repair the Temple, and then return to Lord Anthony Stone at Castle Stone. - NPC
    evt.SetNPCTopic(801, 1, 1349) -- Anthony Stone topic 1: Priests
end)

RegisterGlobalEvent(1349, nil, function()
    if not IsQBitSet(QBit(1130)) then -- NPC
        evt.SetMessage("我请你们重建的神庙仍在废墟中。\n人民被剥夺了应有的宗教慰藉，你们却空手回来见我。\n离开这儿，完成你们的任务！\n")
        return
    end
    evt.SetMessage("出色的工作！\n神庙已重建，对众神的冒犯也平息了。\n为酬谢这桩效劳，我很乐意把所有牧师晋升为神甫，并封所有非牧师为荣誉神甫。\n恭喜！")
    ClearQBit(QBit(1129)) -- Hire a Stonecutter and a Carpenter, bring them to Temple Stone in Free Haven to repair the Temple, and then return to Lord Anthony Stone at Castle Stone. - NPC
    evt.SetNPCTopic(801, 1, 1350) -- Anthony Stone topic 1: High Priests
    AddValue(131307, 2)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 4) then
            SetValue(ClassId, 5)
            SetQBit(QBit(1647)) -- Received Promotion to Priest
        else
            SetQBit(QBit(1648)) -- Received Promotion to Honorary Priest
        end
    end
end)

RegisterGlobalEvent(1350, nil, function()
    evt.SetMessage("鉴于升神甫才不久，现在就晋升大祭司似乎快了点。\n多少人等一辈子都等不到这种晋升，往往死后才被追授。\n不过，一桩非凡功绩也许能把这晋升提前到，嗯，比如就现在……而我心里正好有这么一桩事。\n住在自由天堂以东群岛上的异端武僧偷走了我们的圣杯。\n从武僧手里取回它，放进你们重建的神庙。\n然后回来见我。")
    SetQBit(QBit(1131)) -- Take the Sacred Chalice from the monks in their island temple east of Free Haven, return it to Temple Stone in Free Haven, and then return to Lord Stone at Castle Stone. - NPC
    evt.SetNPCTopic(801, 1, 1351) -- Anthony Stone topic 1: High Priests
end)

RegisterGlobalEvent(1351, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1132)) then -- NPC
        evt.SetMessage("你们成功了！\n看来我得信守诺言，多做几次不正规的提前晋升。\n我很乐意这么做。\n我特此把所有神甫晋升为大祭司，把所有荣誉神甫封为荣誉大祭司。")
        for _, player in ipairs(PartyMembers()) do
            evt.ForPlayer(player)
            if IsAtLeast(ClassId, 5) then
                SetValue(ClassId, 6)
                SetQBit(QBit(1649)) -- Received Promotion to High Priest
            else
                SetQBit(QBit(1650)) -- Received Promotion to Honorary High Priest
            end
        end
        AddValue(327915, 5)
        ClearQBit(QBit(1131)) -- Take the Sacred Chalice from the monks in their island temple east of Free Haven, return it to Temple Stone in Free Haven, and then return to Lord Stone at Castle Stone. - NPC
        evt.ForPlayer(Players.All)
        AddValue(Experience, 30000)
        evt.SetNPCTopic(801, 1, 1352) -- Anthony Stone topic 1: High Priests
    elseif HasItem(2054) then -- Sacred Chalice
        evt.SetMessage("我看到你们取回圣杯了！\n干得好，可你们还得把它安奉进神庙。\n立刻把它送去，再回来见我领晋升！")
    else
        evt.SetMessage("圣杯还在武僧手里，我们的神庙仍没有它。\n你们为何拖延？")
    end
end)

RegisterGlobalEvent(1352, nil, function()
    evt.SetMessage("尽管你们晋升@光明主教@快得几乎不成体统，可我这辈子从没见过比你们更出色的@光明主教@。\n我感激你们为我、为恩洛斯所做的一切。")
end)

RegisterGlobalEvent(1353, nil, function()
    evt.SetMessage("你好！\n你们是来铺地砖的？\n哦！\n抱歉，我一时忘了你们是谁！\n再次欢迎，大法师们！\n等你们不那么忙时，也许能帮我做一两个实验？")
end)

RegisterGlobalEvent(1354, nil, function()
    evt.SetMessage("现在是%s月，也就是%s的月份。\n前往%s之圣坛祈祷，即可获得奖赏。")
    evt.SetNPCTopic(794, 0, 1355) -- The Seer topic 0: Quest
end)

RegisterGlobalEvent(1355, nil, function()
    evt.SetMessage("你们必须等到新月才能进行朝圣。")
end)

RegisterGlobalEvent(1356, nil, function()
    evt.SetMessage("立下英勇事迹")
end)

RegisterGlobalEvent(1359, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1105)) then -- Show Sulman's letter to Andover Potbello in New Sorpigal. - Set when the party starts
        evt.SetMessage("你们大概该把那封信拿给新索匹格的安德弗·波特贝洛看。")
        SetAutonote(479) -- You should probably show the sixth letter to Andover Potbello in New Sorpigal.
        return
    elseif IsQBitSet(QBit(1106)) then -- Bring Sulman's letter to Regent Wilbur Humphrey at Castle Ironfist. - Set by Andover after you show him the letter
        evt.SetMessage("你们得把那封信交给铁拳城堡的摄政者威尔伯·汉弗里。")
        SetAutonote(478) -- You need to give The Letter to Regent Wilbur Humphrey in Ironfist Castle.
        return
    elseif IsAtLeast(BaseLevel, 25) then
        if not HasAward(Award(57)) then -- Retrieved Lord Kilburn's Shield
            evt.SetMessage("你们必须争取自由天堂六位高等理事成员的满意，才能拜访神使。\n每位领主都会要你们完成一项任务来赢得他的好感。\n逐一完成这些任务，再与该领主的理事成员交谈获得他的认可。\n等高等理事会全体成员都放行，你们才能拜访神使。")
            SetAutonote(476) -- You must satisfy the six High Council members in Free Haven to visit the Oracle. Each lord will request a task of you to earn their favor. Perform each of these tasks and then talk to the Council member of that Lord to gain their approval. Once all the members of the High Council give their permission, you will be allowed to visit the Oracle.
            return
        end
        if not HasAward(Award(58)) then -- Retrieved the Hourglass of Time
            evt.SetMessage("你们必须争取自由天堂六位高等理事成员的满意，才能拜访神使。\n每位领主都会要你们完成一项任务来赢得他的好感。\n逐一完成这些任务，再与该领主的理事成员交谈获得他的认可。\n等高等理事会全体成员都放行，你们才能拜访神使。")
            SetAutonote(476) -- You must satisfy the six High Council members in Free Haven to visit the Oracle. Each lord will request a task of you to earn their favor. Perform each of these tasks and then talk to the Council member of that Lord to gain their approval. Once all the members of the High Council give their permission, you will be allowed to visit the Oracle.
            return
        end
        if not HasAward(Award(59)) then -- Destroyed the Devil's Post
            evt.SetMessage("你们必须争取自由天堂六位高等理事成员的满意，才能拜访神使。\n每位领主都会要你们完成一项任务来赢得他的好感。\n逐一完成这些任务，再与该领主的理事成员交谈获得他的认可。\n等高等理事会全体成员都放行，你们才能拜访神使。")
            SetAutonote(476) -- You must satisfy the six High Council members in Free Haven to visit the Oracle. Each lord will request a task of you to earn their favor. Perform each of these tasks and then talk to the Council member of that Lord to gain their approval. Once all the members of the High Council give their permission, you will be allowed to visit the Oracle.
            return
        end
        if not HasAward(Award(60)) then -- Captured the Prince of Thieves
            evt.SetMessage("你们必须争取自由天堂六位高等理事成员的满意，才能拜访神使。\n每位领主都会要你们完成一项任务来赢得他的好感。\n逐一完成这些任务，再与该领主的理事成员交谈获得他的认可。\n等高等理事会全体成员都放行，你们才能拜访神使。")
            SetAutonote(476) -- You must satisfy the six High Council members in Free Haven to visit the Oracle. Each lord will request a task of you to earn their favor. Perform each of these tasks and then talk to the Council member of that Lord to gain their approval. Once all the members of the High Council give their permission, you will be allowed to visit the Oracle.
            return
        end
        if not HasAward(Award(61)) then -- Fixed the Stable Prices
            evt.SetMessage("你们必须争取自由天堂六位高等理事成员的满意，才能拜访神使。\n每位领主都会要你们完成一项任务来赢得他的好感。\n逐一完成这些任务，再与该领主的理事成员交谈获得他的认可。\n等高等理事会全体成员都放行，你们才能拜访神使。")
            SetAutonote(476) -- You must satisfy the six High Council members in Free Haven to visit the Oracle. Each lord will request a task of you to earn their favor. Perform each of these tasks and then talk to the Council member of that Lord to gain their approval. Once all the members of the High Council give their permission, you will be allowed to visit the Oracle.
            return
        end
        if not HasAward(Award(62)) then -- Ended Winter
            evt.SetMessage("你们必须争取自由天堂六位高等理事成员的满意，才能拜访神使。\n每位领主都会要你们完成一项任务来赢得他的好感。\n逐一完成这些任务，再与该领主的理事成员交谈获得他的认可。\n等高等理事会全体成员都放行，你们才能拜访神使。")
            SetAutonote(476) -- You must satisfy the six High Council members in Free Haven to visit the Oracle. Each lord will request a task of you to earn their favor. Perform each of these tasks and then talk to the Council member of that Lord to gain their approval. Once all the members of the High Council give their permission, you will be allowed to visit the Oracle.
            return
        end
        if not IsQBitSet(QBit(1192)) then -- NPC
            evt.SetMessage("看来滑头银舌是理事会里的叛徒。\n你们需要证据来说服汉弗莱摄政者，把滑舌逐出理事会。\n去克里格斯的羊鸣教高级神庙，带回把滑舌与羊鸣教神庙关联起来的证据。")
            SetAutonote(475) -- It appears that Slicker Silvertongue is a traitor on the Council. You will need proof to convince Regent Humphrey and have Slicker removed from the Council. Go to the Superior Temple of Baa in Kriegspire and return with proof associating Slicker with the Temple of Baa.
            return
        end
        if not HasAward(Award(75)) then -- Awakened the Oracle
            evt.SetMessage("自从阿基巴德对神使恶作剧之后，它就一直沉睡。\n你们需要四块记忆水晶才能唤醒神使。\n它们分别在隐士岛、阿拉莫斯城堡、克里格斯城堡和黑摩尔城堡。")
            SetAutonote(474) -- The Oracle has been asleep since Archibald performed his mischief on it. You will need the four memory crystals to revive the Oracle. They can be found on Hermit's Isle, in Castle Alamos, in Castle Kriegspire, and in Castle Darkmoor.
            return
        end
        if not HasItem(1666) then return end -- Blaster
        if not HasItem(1667) then -- Blaster Rifle
            evt.SetMessage("要进入控制中心，你们需要飞龙沙漠VARN神庙里的控制立方体。\n把立方体带回神使处，才能获准进入控制中心。\n克里根反应堆免疫一切攻击。\n唯有控制中心的古代武器能伤反应堆。\n务必带上这些武器和使用它们的本领。")
            SetAutonote(473) -- To gain access to the Control Center, you will need the Control Cube located in the Temple of VARN in Dragonsand. Bring the Cube back to the Oracle to gain admittance into the Control Center. The Kreegan reactor is immune to all attacks. Only the ancient weapons from the Control Center will harm the reactor. Make sure you have these weapons and the skill to use them.
            return
        end
        if not HasItem(2164) then -- Ritual of the Void
            evt.SetMessage("摧毁反应堆之前，你们需要一个能封住随之而来爆炸的法术。\n你们必须把阿基巴德从石头牢笼里放出来。\n去跟尼古拉谈谈，把第三只眼带给他——他会让你们用坦耐尔之钟把阿基巴德恢复原样。\n从那里，你们该能说服阿基巴德把所需知识交给你们。")
            SetAutonote(472) -- Before you destroy the reactor, you will need a spell capable of containing the resulting explosions. You must free Archibald from his stone prison. Talk to Nicolai and bring him the Third Eye� he will allow you to use Tanir's Bell to turn Archibald back to normal. From there, you should be able to convince Archibald to give you the knowledge you need.
            return
        end
        if not HasAward(Award(78)) then -- Destroyed the Hive and Saved Enroth
            evt.SetMessage("现在你们必须摧毁克里根巢穴。\n摧毁反应堆，击败他们的女王，务必带着虚空仪式逃脱，你们的任务就成功了。")
            SetAutonote(471) -- Now you must destroy the Kreegan Hive. Destroy the reactor, defeat their queen, and make sure to escape with the Ritual of the Void and you will succeed in your task.
            return
        end
        evt.SetMessage("你们不再需要我的建议了。")
    else
        evt.SetMessage("我建议你们先为恩洛斯六位领主完成晋升任务，等你们再精进一些。")
        SetAutonote(477) -- I would advise that you perform the promotion quests for the six lords of Enroth until you have advanced a little further.
        return
    end
end)

RegisterGlobalEvent(1360, nil, function()
    evt.SetMessage("1")
    SetQBit(QBit(1133)) -- NPC
    evt.SetNPCTopic(795, 0, 1361) -- Marton Ferris topic 0: Divine Intervention
end)

RegisterGlobalEvent(1361, nil, function()
    evt.SetMessage("2")
end)

RegisterGlobalEvent(1362, nil, function()
    evt.SetMessage("3")
end)

RegisterGlobalEvent(1364, nil, function()
    evt.SetMessage("我有时候记不起学过的东西，麻烦透了。\n我也不知道为什么会这样，可我找到了一个变通办法。\n我要造一面能让我回望过去的镜子，好记起我忘了的事。\n要造它，我需要时间沙漏，可我的职责和研究不让我自己去找。\n据说沙漏在某个地区附近的黑暗洞穴里……<停顿片刻>\n不对，那是黑暗长矛……\n沙漏在哪儿？\n<又停顿>\n我应该记得这个。\n<打了个响指>\n对了！\n它埋在这儿南边一座古堡里。\n你们若帮我造镜子，我就在理事会里支持你们。")
    evt.SetNPCTopic(790, 0, 1365) -- Albert Newton topic 0: Council Quest
    SetQBit(QBit(1134)) -- Find and return the Hourglass of Time to Lord Albert Newton in Mist. - NPC
end)

RegisterGlobalEvent(1365, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(2053) then -- Hourglass of Time
        evt.SetMessage("现在我要做的就是想起怎么造镜子。\n我把所有重要部分都写下来了，免得忘了怎么做。\n<停下>我把笔记放哪儿了？\n<思索了一分钟>我一定是把它们落在哪个显眼处了，也许在实验室。\n总之，你们这部分完事了，再一次谢谢你们。\n为此你们在理事会里有我全力支持。\n你们叫什么来着？")
        AddValue(Experience, 50000)
        SetAward(Award(58)) -- Retrieved the Hourglass of Time
        RemoveItem(2053) -- Hourglass of Time
        ClearQBit(QBit(1207)) -- Quest item bits for seer
        evt.ForPlayer(Players.Current)
        AddValue(655595, 10)
        ClearQBit(QBit(1134)) -- Find and return the Hourglass of Time to Lord Albert Newton in Mist. - NPC
        evt.SetNPCTopic(790, 0, 1367) -- Albert Newton topic 0: Council Quest
        evt.ForPlayer(Players.All)
        if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
        if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
        if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
        if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
        if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
        if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
        if HasAward(Award(62)) then -- Ended Winter
            SetQBit(QBit(1191)) -- NPC
        end
        return
    elseif HasItem(2107) then -- Key to Gharik's Laboratory
        evt.SetMessage("沙漏不在那儿？\n哦，对！\n我就知道我忘了什么！\n钥匙在那儿！\n你们用钥匙打开……的熔炉<停顿>\n我记不清是谁的熔炉了，可那就是时间沙漏的安息之所……我想是。\n去那儿看看没坏处，尤其是现在你们已经找到钥匙。\n<停顿>\n至少我*想*钥匙开的就是它。\n总之，那座熔炉、或实验室、或别的什么，在新索匹格以北的群岛上能找到。\n祝好运！")
    else
        evt.SetMessage("我还在找镜子。<停顿>我是说沙漏……我老把这两个搞混。\n你们试过去那黑暗洞穴吗——不对，等等，是这儿南边的古堡。\n我老是把这两个搞混。")
        return
    end
end)

RegisterGlobalEvent(1366, nil, function()
    evt.SetMessage("沙漏不在那儿？\n哦，对！\n我就知道我忘了什么！\n钥匙在那儿！\n你们用钥匙打开……的熔炉<停顿>\n我记不清是谁的熔炉了，可那就是时间沙漏的安息之所……我想是。\n去那儿看看没坏处，尤其是现在你们已经找到钥匙。\n<停顿>\n至少我*想*钥匙开的就是它。\n总之，那座熔炉、或实验室、或别的什么，在新索匹格以北的群岛上能找到。\n祝好运！")
end)

RegisterGlobalEvent(1367, nil, function()
    evt.SetMessage("再次谢谢你替我取来沙漏！\n要是我能记起把它放哪儿就好了。\n<叹气>\n在理事会里，你们需要多久，我的支持就有多久。")
end)

RegisterGlobalEvent(1368, nil, function()
    SetQBit(QBit(1135)) -- Drink from the Fountain of Magic and return to Lord Albert Newton in Mist. - NPC
    evt.SetNPCTopic(790, 1, 1369) -- Albert Newton topic 1: Wizards
    evt.ForPlayer(Players.All)
    if not IsAtLeast(ClassId, 42) then
        evt.SetMessage("我是负责晋升巫师的法师。\n你们谁都不是巫师，可我是个公正的人。\n你们若能找到魔法之泉，我就授予你们荣誉法师身份。\n你们得不到法师训练的任何好处，但在巫师和法师眼中会更受敬重。\n")
        return
    end
    evt.SetMessage("我是负责训练和晋升巫师的法师。\n巫师虽强，却不是元素法师的顶点。\n法师把巫师的知识与本领磨砺到更锋利的境界。\n他们比巫师有更大的魔法潜力，也更受人敬重。\n然而，赢得这种训练的道路并不轻松。\n找到魔法之泉，饮它的水，再回到这儿来。\n你们若能做到，我就教你们法师之道。")
end)

RegisterGlobalEvent(1369, nil, function()
    evt.SetMessage("别问我提示，我已经忘了泉在哪儿。\n我知道这任务不轻松，可要是不难，每个巫师早就是法师了。")
end)

RegisterGlobalEvent(1371, nil, function()
    evt.SetMessage("你们找到泉，干得好。\n它的位置与力量是秘密，别把它的位置传开。\n现在，让我向你们展示法师的秘密。")
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 42) then
            SetValue(ClassId, 43)
            SetQBit(QBit(1639)) -- Received Promotion to Wizard
        else
            SetQBit(QBit(1640)) -- Received Promotion to Honorary Wizard
        end
    end
    AddValue(131307, 2)
    ClearQBit(QBit(1135)) -- Drink from the Fountain of Magic and return to Lord Albert Newton in Mist. - NPC
    evt.SetNPCTopic(790, 1, 1372) -- Albert Newton topic 1: Master Wizards
end)

RegisterGlobalEvent(1372, nil, function()
    evt.SetMessage("你们的训练并不因成为法师所学的东西而结束，还有最后一步。\n大法师身份完成你们对元素魔法的掌握。\n在法师训练的基础上，大法师拥有浩瀚的魔法能力——是世间最高效、最精于运用魔法的人。\n赢得这种训练需要一件强大的宝物，它属于强大的大法师德雷尔——不对，是弗伦迪尔——不，也不对。\n其实，我好像记不起那件宝物是什么、属于谁了。\n不过我见到它就会记起来。\n我知道它能在诅咒沼泽附近的科拉贡庄园找到。\n去那儿搜出来带回来；我必须有它才能训练你们成为大法师。")
    SetQBit(QBit(1136)) -- Retrieve the Crystal of Terrax and return to Lord Albert Newton in Mist. - NPC
    evt.SetNPCTopic(790, 1, 1373) -- Albert Newton topic 1: Master Wizards
end)

RegisterGlobalEvent(1373, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2077) then -- Crystal of Terrax
        evt.SetMessage("抱歉，我还是没记起你们到底需要什么。\n我知道你们得搜科拉贡庄园。\n")
        return
    end
    evt.SetMessage("好消息！\n我记起你们要找什么了！\n德里克斯水晶！\n哦，你们好像已经找到了。\n那好极了！\n那我就能训练你们成为大法师了。\n第一位大法师德里克斯曾用这颗水晶掌握元素。\n火、土、水、风共同铸成它，他通过分析它学到了大量元素魔法知识。\n此外，它对光的效应引导他发现了光明与黑暗魔法。\n自那时起，研究这颗水晶便指引着每一位新大法师。\n让我向你们展示水晶的秘密。")
    AddValue(Experience, 30000)
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 43) then
            SetValue(ClassId, 46)
            SetQBit(QBit(1641)) -- Received Promotion to Archmage
        else
            SetQBit(QBit(1642)) -- Received Promotion to Honorary Archmage
        end
    end
    AddValue(327915, 5)
    ClearQBit(QBit(1136)) -- Retrieve the Crystal of Terrax and return to Lord Albert Newton in Mist. - NPC
    evt.ForPlayer(Players.All)
    RemoveItem(2077) -- Crystal of Terrax
    ClearQBit(QBit(1210)) -- Quest item bits for seer
    evt.SetNPCTopic(790, 1, 1353) -- Albert Newton topic 1: Arch Mages
end)

RegisterGlobalEvent(1374, nil, function()
    evt.SetMessage("我现在没多少时间谈——我有好多事要做。\n我正筹备几次战役，攻打西海岸的恶魔。\n你们必须像我一样明白，整个恩洛斯，没有什么比它们对我们安全的威胁更大。\n我只希望别的领主能出物资、出兵，或至少帮我策划这些进攻。\n他们把时间花在彼此为边境、法律和贸易拌嘴上，远多于帮我对付真正的威胁。\n恶魔在哨兵岭附近的克里格斯有一处前哨。\n他们以此为基地，进行小规模突袭、收集我军情报。\n我要你们潜入并攻击它，尽量找出恶魔据点位置和巡逻规律的情报，然后毁掉那个地方。\n别让任何恶魔逃脱！\n出其不意和隐秘是我们最大的武器。")
    SetQBit(QBit(1137)) -- Destroy the Devil's Outpost and return to Lord Osric Temper at Castle Temper. - NPC
    evt.SetNPCTopic(791, 0, 1375) -- Osric Temper topic 0: Council Quest
end)

RegisterGlobalEvent(1375, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2126) then -- Devil Plans
        evt.SetMessage("你们任务失败了？\n你们没让恶魔逃掉吧？\n要对他们发动任何大规模进攻成功，那个前哨必须被摧毁。\n只要那前哨还在，你们的任务就仍有效。")
        return
    end
    evt.SetMessage("干得好！\n有了你们带回的情报，我们如今掌握了攻打恶魔所需的情报，而且那个前哨一除，我们就能趁他们不备打过去。\n我在理事会全力支持你们——希望理事会这回真能做点什么。")
    AddValue(Experience, 40000)
    SetAward(Award(59)) -- Destroyed the Devil's Post
    RemoveItem(2126) -- Devil Plans
    ClearQBit(QBit(1208)) -- Quest item bits for seer
    evt.ForPlayer(Players.Current)
    ClearQBit(QBit(1137)) -- Destroy the Devil's Outpost and return to Lord Osric Temper at Castle Temper. - NPC
    AddValue(655595, 10)
    evt.SetNPCTopic(791, 0, 1377) -- Osric Temper topic 0: Council Quest
    evt.ForPlayer(Players.All)
    if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
    if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
    if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
    if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
    if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
    if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
    if HasAward(Award(62)) then -- Ended Winter
        SetQBit(QBit(1191)) -- NPC
    end
end)

RegisterGlobalEvent(1377, nil, function()
    evt.SetMessage("除掉那些恶魔，干得漂亮！\n再一次，谢谢你们。\n在理事会里，我的支持归你们，至少在恶魔威胁过去之前。\n希望你们能敦促理事会行动。\n对了，你们带回的情报证实了我们对敌人基地的怀疑。\n它肯定在天堂谷甜水镇附近。")
end)

RegisterGlobalEvent(1378, nil, function()
    SetQBit(QBit(1138)) -- Get Knight's nomination from Chadwick and return to Lord Osric Temper at Castle Temper. - NPC
    evt.SetNPCTopic(792, 0, 1379) -- Chadwick Blackpoole topic 0: Nomination
    evt.SetNPCTopic(791, 1, 1381) -- Osric Temper topic 1: Cavaliers
    evt.ForPlayer(Players.All)
    if not IsAtLeast(ClassId, 16) then
        evt.SetMessage("我是负责骑士晋升的武师。\n遗憾的是，你们谁都不是骑士，因此我要教你们的本领一文不值。\n不过，你们若愿意，可以去尝试有志豪侠的任务。\n去找一位权威人物——比如一位豪侠——提名，再回来见我。")
        return
    end
    evt.SetMessage("我是负责恩洛斯所有骑士晋升的武师。\n合格的骑士可以晋升为豪侠。\n豪侠体现行动的精神与目标的力量。\n在他们勇敢榜样的感召下，军队冲锋陷阵，敌人望风而逃。不过，要成为豪侠，你需要一位权威人物提名。\n你们若能拿到一位豪侠的提名，对我就够了。")
end)

RegisterGlobalEvent(1379, nil, function()
    evt.SetMessage("我说，你们是在找成为豪侠的提名？\n我当年也曾是一位英勇的骑士。\n继位战争中我与罗兰并肩作战，尽管如今我太老，在战场上派不上多大用场。\n看到奥斯里克延续骑士传统，真好。\n告诉他，我自豪地提名你们成为豪侠；他要是刁难你们，叫他自己来见我。")
    evt.SetNPCTopic(791, 1, 1382) -- Osric Temper topic 1: Cavaliers
    evt.SetNPCTopic(792, 0, 0) -- Chadwick Blackpoole topic 0 cleared
end)

RegisterGlobalEvent(1380, nil, function()
    evt.SetMessage("恭喜！\n我知道你们会成为出色的豪侠。\n我只愿能重返青春，随奥斯里克参加讨伐恶魔的战役。")
    evt.SetNPCTopic(792, 0, 0) -- Chadwick Blackpoole topic 0 cleared
end)

RegisterGlobalEvent(1381, nil, function()
    evt.SetMessage("得了吧！\n以你们的名声和地位，提名还不容易吗？\n别告诉我你们的名声是虚的——你们确定自己配得上如今的名气吗？<笑>\n我开玩笑的，冷静。\n说真的，我建议去自由天堂或罗克汉姆村找找。\n我听说有些豪侠常去那儿的酒馆。")
end)

RegisterGlobalEvent(1382, nil, function()
    evt.SetMessage("恭喜！\n提名看似不重要，可我们有这一晋升必须遵循的传统。\n作为豪侠，你必须明白，人民的传统与价值需要捍卫。\n我很乐意把你们晋升为豪侠！")
    ClearQBit(QBit(1138)) -- Get Knight's nomination from Chadwick and return to Lord Osric Temper at Castle Temper. - NPC
    AddValue(131307, 2)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 16) then
            SetValue(ClassId, 17)
            SetQBit(QBit(1643)) -- Received Promotion to Cavalier
        else
            SetQBit(QBit(1644)) -- Received Promotion to Honorary Cavalier
        end
    end
    evt.SetNPCTopic(791, 1, 1383) -- Osric Temper topic 1: Champions
    evt.SetNPCTopic(792, 0, 1380) -- Chadwick Blackpoole topic 0: Cavaliers
end)

RegisterGlobalEvent(1383, nil, function()
    evt.SetMessage("啊，合格的豪侠们，你们训练的最后一步是成为勇士。\n豪侠是勇敢高贵的战士，而勇士是一股令人敬畏的力量。\n没有任何力量能挡在勇士与胜利之间。\n整场战役的胜负，都系于勇士的勇敢、果断和强有力的榜样。\n不过，完成这一晋升的任务并不轻松。\n你们必须击败一个强大的敌人，证明自己的本领与决心。\n唯一配得上这任务的敌人，是一个人称军阀的危险而强大的战士。\n他统帅一支邪恶骑士军团，通常驻扎在冰风隘口东北。\n击败他，带回胜利的凭证，你们晋升勇士就十拿九稳。")
    SetQBit(QBit(1139)) -- Defeat the Warlord and bring proof to Osric Temper - NPC
    evt.SetNPCTopic(791, 1, 1384) -- Osric Temper topic 1: Champions
end)

RegisterGlobalEvent(1384, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2128) then -- Discharge Papers
        evt.SetMessage("你们不会怕那个军阀吧？\n他的恐怖必须终结。\n躲在床底下、或站着发呆看着墙，是成不了勇士的——你们得出去，动手干！")
        return
    end
    evt.SetMessage("干得好！\n出色！\n我没把握你们能活着回来。\n科格蒙德比我以为的更有潜力，可你们当然远胜一支科格蒙德大军。\n你们已证明自己配得上勇士军衔。你们绝不能害怕拿起武器捍卫正义。\n愿敌人畏惧你们的临近，愿盟友在你们的勇气后集结。现在，我晋升你们为勇士！")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 17) then
            SetValue(ClassId, 19)
            SetQBit(QBit(1645)) -- Received Promotion to Champion
        else
            SetQBit(QBit(1646)) -- Received Promotion to Honorary Champion
        end
    end
    AddValue(327915, 5)
    ClearQBit(QBit(1139)) -- Defeat the Warlord and bring proof to Osric Temper - NPC
    evt.ForPlayer(Players.All)
    AddValue(Experience, 40000)
    RemoveItem(2128) -- Discharge Papers
    ClearQBit(QBit(1211)) -- Quest item bits for seer
    evt.SetNPCTopic(791, 1, 1385) -- Osric Temper topic 1: Champions
end)

RegisterGlobalEvent(1385, nil, function()
    evt.SetMessage("幸会，勇士们！\n请别在这种时候浪费你们宝贵的时间和我的时间。\n把你们的本领用于恩洛斯的福祉，让我继续策划！\n等这场仗打完，我们再分享勇武与技艺的故事。")
end)

RegisterGlobalEvent(1386, nil, function()
    evt.SetMessage("记忆水晶阿尔法——隐士岛。\n记忆水晶贝塔——阿拉莫斯。\n记忆水晶德尔塔——黑沼。\n记忆水晶厄普西隆——克里格斯。")
    if IsQBitSet(QBit(1186)) then return end -- Find Memory Crystal Alpha in the Supreme Temple of Baa and restore it to a module altar at the Oracle beneath the High Council.. - NPC
    SetQBit(QBit(1186)) -- Find Memory Crystal Alpha in the Supreme Temple of Baa and restore it to a module altar at the Oracle beneath the High Council.. - NPC
    SetQBit(QBit(1187)) -- Find Memory Crystal Beta in Castle Alamos and restore it to a module altar at the Oracle beneath the High Council. - NPC
    SetQBit(QBit(1188)) -- Find Memory Crystal Delta in Castle Darkmoor and restore it to a module altar at the Oracle beneath the High Council. - NPC
    SetQBit(QBit(1189)) -- Find Memory Crystal Epsilon in Castle Kriegspire and restore it to a module altar at the Oracle beneath the High Council. - NPC
end)

RegisterGlobalEvent(1387, nil, function()
    evt.SetMessage("把记忆水晶放进上方的模块。\n四块水晶缺一不可，才能激活神使。")
end)

RegisterGlobalEvent(1389, nil, function()
    evt.ForPlayer(Players.All)
    if IsQBitSet(QBit(1190)) then -- Retrieve the Control Cube from the Tomb of Varn in Dragonsand and return to the Oracle beneath the High Council. - NPC
        if HasItem(2076) then -- Control Cube
            AddValue(Experience, 500000)
            SetAward(Award(76)) -- Gained Access to the Control Center
            ClearQBit(QBit(1190)) -- Retrieve the Control Cube from the Tomb of Varn in Dragonsand and return to the Oracle beneath the High Council. - NPC
            RemoveItem(2076) -- Control Cube
            ClearQBit(QBit(1219)) -- Quest item bits for seer
            evt.SetNPCTopic(793, 0, 1390) -- Oracle topic 0: Kreegan
            evt.SetNPCTopic(793, 1, 1391) -- Oracle topic 1: Ancients
            evt.SetMessage("你们如今可以进入控制中心了。\n只需要求传送，我就会照办。\n不过提醒一句——控制中心的守护者已不在我的掌控之下，所以造访中心时请小心。")
            return
        end
        evt.SetMessage("我是梅莉安，恩洛斯守护者。\n谢谢你们更换我的记忆模块。\n阿基巴德在继位之战中求我帮忙被拒，便把它们从这里夺走。\n你们来得正是时候。\n克里根人入侵了我们的世界，你们必须设法阻止他们。\n不幸的是，阿基巴德向我逼取情报时把我伤得太重，如今无法直接帮你们。\n我只能给你们建议。\n虽然大多数克里根人可用普通武器和法术杀死，可精英护卫和高阶繁育者皮肤更坚韧，天生的防御使他们只受极强大武器伤害。\n我下方的行星控制中心里，有你们在与敌人战斗中求生所需的武器和护甲。\n然而，我的指令只允许持控制立方体者通行。\n我的仪器显示，恩洛斯仅剩的控制立方体在飞龙沙漠地下某处。\n")
        return
    end
    SetAward(Award(75)) -- Awakened the Oracle
    SetQBit(QBit(1190)) -- Retrieve the Control Cube from the Tomb of Varn in Dragonsand and return to the Oracle beneath the High Council. - NPC
    ClearQBit(QBit(1186)) -- Find Memory Crystal Alpha in the Supreme Temple of Baa and restore it to a module altar at the Oracle beneath the High Council.. - NPC
    ClearQBit(QBit(1187)) -- Find Memory Crystal Beta in Castle Alamos and restore it to a module altar at the Oracle beneath the High Council. - NPC
    ClearQBit(QBit(1188)) -- Find Memory Crystal Delta in Castle Darkmoor and restore it to a module altar at the Oracle beneath the High Council. - NPC
    ClearQBit(QBit(1189)) -- Find Memory Crystal Epsilon in Castle Kriegspire and restore it to a module altar at the Oracle beneath the High Council. - NPC
    evt.SetMessage("我是梅莉安，恩洛斯守护者。\n谢谢你们更换我的记忆模块。\n阿基巴德在继位之战中求我帮忙被拒，便把它们从这里夺走。\n你们来得正是时候。\n克里根人入侵了我们的世界，你们必须设法阻止他们。\n不幸的是，阿基巴德向我逼取情报时把我伤得太重，如今无法直接帮你们。\n我只能给你们建议。\n虽然大多数克里根人可用普通武器和法术杀死，可精英护卫和高阶繁育者皮肤更坚韧，天生的防御使他们只受极强大武器伤害。\n我下方的行星控制中心里，有你们在与敌人战斗中求生所需的武器和护甲。\n然而，我的指令只允许持控制立方体者通行。\n我的仪器显示，恩洛斯仅剩的控制立方体在飞龙沙漠地下某处。\n")
end)

RegisterGlobalEvent(1390, nil, function()
    if IsQBitSet(QBit(1329)) then -- NPC
        evt.SetMessage("正如我说，克里根人对恩洛斯现有的大多数武器免疫，但并非全部。\n要把他们从世上清除，你们必须找到他们飞船坠毁之处，摧毁主反应堆。\n唯一的问题是，反应堆爆炸会摧毁这颗行星。\n你们需要一个强大法术阻止爆炸伤及行星，可当今世上并不存在这样的法术。\n我能想到唯一可能知道这种法术的人是阿基巴德，可他状态不适合教你们。\n更糟的是，普通武器和法术伤不了反应堆——你们需要控制中心的古代武器才能摧毁它。")
    elseif IsQBitSet(QBit(1120)) then -- Find the Third Eye and bring it to Prince Nicolai in Castle Ironfist. - Walt
        evt.SetMessage("正如我说，克里根人对恩洛斯现有的大多数武器免疫，但并非全部。\n要把他们从世上清除，你们必须找到他们飞船坠毁之处，摧毁主反应堆。\n唯一的问题是，反应堆爆炸会摧毁这颗行星。\n你们需要一个强大法术阻止爆炸伤及行星，可当今世上并不存在这样的法术。\n我能想到唯一可能知道这种法术的人是阿基巴德，可他状态不适合教你们。\n更糟的是，普通武器和法术伤不了反应堆——你们需要控制中心的古代武器才能摧毁它。")
    else
        SetQBit(QBit(1259)) -- Obtain Arcane Magic from Archibald in the Royal Library in Castle Ironfist - NPC
        evt.SetNPCTopic(798, 1, 1339) -- Nicolai Ironfist topic 1: The Third Eye
        SetQBit(QBit(1193)) -- NPC
        evt.SetMessage("正如我说，克里根人对恩洛斯现有的大多数武器免疫，但并非全部。\n要把他们从世上清除，你们必须找到他们飞船坠毁之处，摧毁主反应堆。\n唯一的问题是，反应堆爆炸会摧毁这颗行星。\n你们需要一个强大法术阻止爆炸伤及行星，可当今世上并不存在这样的法术。\n我能想到唯一可能知道这种法术的人是阿基巴德，可他状态不适合教你们。\n更糟的是，普通武器和法术伤不了反应堆——你们需要控制中心的古代武器才能摧毁它。")
    end
end)

RegisterGlobalEvent(1391, nil, function()
    evt.SetMessage("尽管我的记忆被阿基巴德损坏，我仍记得我们古老的敌人克里根人对世界构成的威胁。\n克里根人约 1500 年前首次出现，袭击边远殖民地、掠夺资源。\n当时人们以为他们只是需要某些矿物、可以理喻，事实并非如此。\n他们的生命周期迫使他们不断繁育，直到世界撑不下去，再派飞船前往其他世界重启循环。\n他们对远古者帝国的进攻打断了维系我们的航运与通信网络，导致了标志我们现代纪元元年的沉寂。\n失去母星支援，我们初生的科技崩溃，落到这步田地。\n我本想帮我们重建科技，可在许多人心里我似乎成了一尊神像，很少有人来拜访我、了解我能提供什么。\n也许我们面对的这场克里根危机能让人们醒悟——只要我们能活下来。")
end)

RegisterGlobalEvent(1392, nil, function()
    evt.SetMessage("我恰好知道，你们在少数几位想从高等理事会讨得好处的冒险者之列。\n你们要它做什么，我不知道，也不关心。\n我就直说了：\n我爱钱，我要更多。\n多得多。\n我有个计划，能让运价一时按我的心意定价，我需要能干的人去执行。\n这件事办得好，我就支持你们，更别提一大笔钱。\n计划如下：\n王国九家航运公司，每家都要说服他们，把所运物资的价格定为每磅每英里至少 48 金币。\n他们彼此竞争，心里都清楚，所以谁也不愿先动手。\n我不在乎你们怎么说服他们——把事办成，回来报我。")
    SetQBit(QBit(1140)) -- Fix the prices of all 9 stables in the Kingdom and return to Lady Fleise in Silver Cove. - NPC
    SetQBit(QBit(1706)) -- Replacement for NeedToTestIt �0 ver. 6
    evt.SetNPCTopic(799, 0, 1393) -- Loretta Fleise topic 0: Money
end)

RegisterGlobalEvent(1393, nil, function()
    if not IsQBitSet(QBit(1141)) then -- NPC
        evt.SetMessage("并非所有公司都同意涨价！\n你们怎么还好意思回来，只会报告无能？\n你们要是办成事、说服这些蠢货涨价，我本可以大赚一笔！\n非要我自己动手吗？\n要不要我另派人去？\n我为什么身边净是白痴？！\n到目前为止，因为你们没干完活，我已经亏了好多金币！\n这些损失会从你们最终报酬里扣除，这点尽管放心！")
        return
    end
    evt.SetMessage("终于！\n我还以为你们永远完不成了。\n也许你们终究有点用处。\n你们赢得了我在理事会的支持，当然，还有你们的报酬。")
    if not IsQBitSet(QBit(1707)) then -- Replacement for NeedToTestIt �31 ver. 6
        AddValue(Gold, 25000)
        ClearQBit(QBit(1140)) -- Fix the prices of all 9 stables in the Kingdom and return to Lady Fleise in Silver Cove. - NPC
        SubtractValue(655595, 10)
        evt.ForPlayer(Players.All)
        SetAward(Award(61)) -- Fixed the Stable Prices
        AddValue(Experience, 25000)
        evt.SetNPCTopic(799, 0, 1394) -- Loretta Fleise topic 0: Money
        evt.ForPlayer(Players.All)
        if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
        if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
        if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
        if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
        if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
        if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
        if HasAward(Award(62)) then -- Ended Winter
            SetQBit(QBit(1191)) -- NPC
        end
        return
    end
    AddValue(Gold, 5000)
    ClearQBit(QBit(1140)) -- Fix the prices of all 9 stables in the Kingdom and return to Lady Fleise in Silver Cove. - NPC
    SubtractValue(655595, 10)
    evt.ForPlayer(Players.All)
    SetAward(Award(61)) -- Fixed the Stable Prices
    AddValue(Experience, 25000)
    evt.SetNPCTopic(799, 0, 1394) -- Loretta Fleise topic 0: Money
    evt.ForPlayer(Players.All)
    if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
    if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
    if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
    if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
    if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
    if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
    if HasAward(Award(62)) then -- Ended Winter
        SetQBit(QBit(1191)) -- NPC
    end
end)

RegisterGlobalEvent(1394, nil, function()
    evt.SetMessage("你们要是担心我涨价让农民受苦，大可不必。\n我做这一切都是为了一个好理由。\n我得筹钱建粮仓，存我们今年多收的粮食。\n运价已经降回来了，便宜优质粮食的供应绰绰有余地补了回来。\n怎么样！\n我没那么可怕吧？")
end)

RegisterGlobalEvent(1395, nil, function()
    evt.SetMessage("说来难信，我恰好是这片土地顶尖的德鲁伊之一。\n因此，我有权把德鲁伊晋升为高级德鲁伊和大德鲁伊，前提是他们证明自己配得上。\n要晋升高级德鲁伊，你们必须举行太阳仪式。\n在任何春分或冬至——3 月 20 日、6 月 21 日、9 月 23 日或 12 月 21 日——到石圈中心祈祷。\n你们那时若在，我会以魔法联系你们，引导你们完成仪式，从而晋升你们为高级德鲁伊。\n你们中间非德鲁伊者将被授予荣誉高级德鲁伊身份，我相信这段经历会值得。")
    SetQBit(QBit(1142)) -- Visit the Altar of the Sun in the circle of stones north of Silver Cove on an equinox or solstice (HINT: March 20th is an equinox). - NPC
    evt.SetNPCTopic(799, 1, 1396) -- Loretta Fleise topic 1: Great Druids
end)

RegisterGlobalEvent(1396, nil, function()
    evt.SetMessage("你们必须在春分或冬至到石圈中心祈祷，完成太阳仪式，晋升高级德鲁伊。\n在那之前，我没法帮你们晋升。")
end)

RegisterGlobalEvent(1397, nil, function()
    evt.SetMessage("这么说，你们自认配得上大德鲁伊头衔。\n你们必须完成月亮仪式才能达到大德鲁伊身份。\n在上一代德鲁伊分裂之前，这曾相当容易，可如今你们得一路杀进神圣祭坛。\n它在月亮神庙，目前由邪恶异端塞德里克·德鲁瑟斯控制。\n他们绝不会让你们和平完成仪式，所以你们大概得打进去。\n与太阳仪式一样，月亮仪式也必须在特定时间、特定地点举行。\n每逢满月的午夜，到月亮神庙的月亮祭坛祈祷。\n你们那时若在，我会以魔法联系你们，引导你们完成仪式。")
    SetQBit(QBit(1143)) -- Visit the Altar of the Moon in the Temple of the Moon at midnight of a full moon. - NPC
    evt.SetNPCTopic(1090, 1, 1398) -- Loretta Fleise topic 1: Arch Druids
end)

RegisterGlobalEvent(1398, nil, function()
    evt.SetMessage("你们必须在任何一个满月的午夜站在月亮祭坛前，完成月亮仪式，晋升大德鲁伊。\n在那之前，我没法帮你们晋升。")
end)

RegisterGlobalEvent(1399, nil, function()
    evt.SetMessage("大地在西边受了伤。\n我感觉得到，德鲁伊同袍们，你们若把手按在地上、用心聆听，也会感觉到。\n我被职责绑在这里，可我敦促你们去查这痛楚的源头。\n我确信这创伤与流星之夜有关。\n")
end)

RegisterGlobalEvent(1400, nil, function()
    evt.SetMessage("我厌倦了冬天。\n在我的土地上，冬天似乎终年不去。\n说真的，过去几年夏天压根没来。\n我开始相信天气出了问题，而我希望有人做点什么。\n我听说过你们的名声，听说你们无所不能。\n我跟你们做笔交易。\n终结我土地上的冬天，等你们来讨取时，我就在高等理事会里支持你们。\n要是有帮助的话，我听说这地方西边某座山顶上有位隐士，曾详细研究天气。")
    SetQBit(QBit(1144)) -- End winter for Lord Stromgard at Castle Stromgard, and return to him with the good news. - NPC
    evt.SetNPCTopic(800, 0, 1401) -- Erik Von Stromgard topic 0: Winter
    evt.SetNPCTopic(804, 0, 1409) -- The Hermit on the Mountain topic 0: Winter
end)

RegisterGlobalEvent(1401, nil, function()
    evt.SetMessage("你们能不能把这奇迹的事加快点？\n地面积雪越来越厚，我们得开始把房子架在桩子上了！")
end)

RegisterGlobalEvent(1402, nil, function()
    evt.SetMessage("天气转好、雪消失时，我正望着窗外！\n奇迹！\n真正的奇迹！\n你们为我的人民和我立了大功。\n<捶胸>埃里克·冯·斯壮姆嘉德伯爵从此是你们永远的朋友！\n")
    ClearQBit(QBit(1144)) -- End winter for Lord Stromgard at Castle Stromgard, and return to him with the good news. - NPC
    SetQBit(QBit(1199)) -- NPC
    AddValue(655595, 10)
    evt.SetNPCTopic(800, 0, 1403) -- Erik Von Stromgard topic 0: Winter
    evt.ForPlayer(Players.All)
    SetAward(Award(62)) -- Ended Winter
    AddValue(Experience, 50000)
    evt.ForPlayer(Players.All)
    if not HasAward(Award(63)) then return end -- Exposed the Traitor on the High Council
    if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
    if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
    if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
    if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
    if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
    if HasAward(Award(62)) then -- Ended Winter
        SetQBit(QBit(1191)) -- NPC
    end
end)

RegisterGlobalEvent(1403, nil, function()
    evt.SetMessage("为酬谢你们的效劳，我在高等理事会里给你们我的支持！\n愿你们长生，冬天之敌啊！")
end)

RegisterGlobalEvent(1404, nil, function()
    evt.SetMessage("20 年前，我赢得了铁拳城堡年度射箭比赛，此后一直蝉联勇士。\n这让我有权按自己的判断把弓箭手晋升为高级射手和神箭手。\n你们若帮我一个小忙，我就把你们中间所有弓箭手封为高级射手。\n我需要那把旧龙塔的钥匙——恩洛斯每处主要聚落附近都建了龙塔，用来击落飞行生物。\n我想可以把它们调成只打怪物，而不是打空中飞的一切。既然这算是我的心头好项目，你们其余人我就封荣誉高级射手。\n钥匙在我土地南入口附近我的旧要塞里。\n几年前食人魔和他们的同伙把它夺走时，我只好把它留在那儿。\n带着钥匙回来领赏。\n你们若顺手杀一大批那些怪物，我也不会哭哭啼啼。\n他们占了我的要塞！")
    SetQBit(QBit(1145)) -- Retrieve the key to the Dragon Towers from Icewind Keep south of Whitecap, and bring it to Lord Stromgard at Castle Stromgard. - NPC
    evt.SetNPCTopic(800, 1, 1405) -- Erik Von Stromgard topic 1: Warrior Mages
end)

RegisterGlobalEvent(1405, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2106) then -- Dragon Tower Keys
        evt.SetMessage("没钥匙——没奖赏。\n我们的交易简单明了。\n去我旧要塞取钥匙，拿到再回来。\n")
        return
    end
    evt.SetMessage("很好！\n你们拿到了钥匙，但愿也宰了一大堆那些可憎的野兽。\n我特此把所有弓箭手晋升为高级射手，把所有非弓箭手封为荣誉高级射手。")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 0) then
            SetValue(ClassId, 1)
            SetQBit(QBit(1655)) -- Received Promotion to Battle Mage
        else
            SetQBit(QBit(1656)) -- Received Promotion to Honorary Battle Mage
        end
    end
    ClearQBit(QBit(1145)) -- Retrieve the key to the Dragon Towers from Icewind Keep south of Whitecap, and bring it to Lord Stromgard at Castle Stromgard. - NPC
    AddValue(131307, 2)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 15000)
    evt.SetNPCTopic(800, 1, 1406) -- Erik Von Stromgard topic 1: Master Archers
end)

RegisterGlobalEvent(1406, nil, function()
    evt.SetMessage("我当初要钥匙，是为了打开龙塔，调整它们别再乱打飞行物。\n有办法把塔调成只打大型目标，而我想为了王国好把它们都调好。\n魔法正变得越来越常见，年轻巫师因为不知道塔的功能而从天上被打下来的故事也一样。\n你们有了钥匙。\n你们若把所有塔调成只打大型目标，我就把你们中间所有高级射手晋升为神箭手，把荣誉高级射手封为荣誉神箭手。")
    SetQBit(QBit(1146)) -- Reset all of the Dragon Towers at each town and return to Lord Stromgard in Castle Stromgard. - NPC
    evt.SetNPCTopic(800, 1, 1413) -- Erik Von Stromgard topic 1: Master Archers
end)

RegisterGlobalEvent(1407, nil, function()
    evt.SetMessage("欢迎，神箭手们！\n你们随时可以在我炉火旁取暖！")
end)

RegisterGlobalEvent(1408, nil, function()
    evt.SetMessage("我喜欢这上面。\n仿佛我能从高处独自看着世界转动。\n宁静。\n不可触及。\n几乎……有预言感。\n我能看见云翻涌、游走、分裂、混合。\n我几乎能完美预测天气。\n<微笑>现在，我预测还有更多雪。")
end)

RegisterGlobalEvent(1409, nil, function()
    evt.SetMessage("这么说，斯特罗姆加需要天气奇迹，是吧？\n我一直以为是他在让天不停下雪。\n我能轻易打破天气上的附魔，你们赶紧回去找他，功劳尽可算在你们头上。")
    SetQBit(QBit(1252)) -- NPC
    evt.SetNPCTopic(800, 0, 1402) -- Erik Von Stromgard topic 0: Winter
    evt.SetNPCTopic(804, 0, 1410) -- The Hermit on the Mountain topic 0: Winter
end)

RegisterGlobalEvent(1410, nil, function()
    evt.SetMessage("尽管我很感谢你们陪伴，可我其实是个隐士。\n你们想必有好多要事要办，不必再在我屋里添乱了。")
end)

RegisterGlobalEvent(1411, nil, function()
    evt.SetMessage("该死！\n又被挫败了！")
end)

RegisterGlobalEvent(1413, nil, function()
    if IsQBitSet(QBit(1180)) then -- NPC
        if IsQBitSet(QBit(1181)) then -- NPC
            if IsQBitSet(QBit(1182)) then -- NPC
                if IsQBitSet(QBit(1183)) then -- NPC
                    if IsQBitSet(QBit(1184)) then -- NPC
                        if not IsQBitSet(QBit(1185)) then -- NPC
                            evt.SetMessage("嗯。\n并非所有塔都已重置。\n它们不难找，就是去的路有点长。\n最容易找的在我们西边的白帽镇。")
                            return
                        end
                        evt.SetMessage("我就知道我信任你们没信错！\n你们解决了我们王国的一个大问题，更别提还帮了自己——如今在城镇上空飞行安全了。\n我很乐意把所有高级射手晋升为神箭手，把所有荣誉高级射手封为荣誉神箭手。\n")
                        AddValue(327915, 5)
                        ClearQBit(QBit(1146)) -- Reset all of the Dragon Towers at each town and return to Lord Stromgard in Castle Stromgard. - NPC
                        evt.ForPlayer(Players.All)
                        AddValue(Experience, 40000)
                        for _, player in ipairs(PartyMembers()) do
                            evt.ForPlayer(player)
                            if IsAtLeast(ClassId, 1) then
                                SetValue(ClassId, 2)
                                SetQBit(QBit(1657)) -- Received Promotion to Warrior Mage
                            else
                                SetQBit(QBit(1658)) -- Received Promotion to Honorary Warrior Mage
                            end
                        end
                        evt.SetNPCTopic(800, 1, 1407) -- Erik Von Stromgard topic 1: Master Archers
                        return
                    end
                end
            end
        end
    end
    evt.SetMessage("嗯。\n并非所有塔都已重置。\n它们不难找，就是去的路有点长。\n最容易找的在我们西边的白帽镇。")
end)

RegisterGlobalEvent(1414, nil, function()
    evt.SetMessage("滑头银舌拒绝我的命令？\n这一定是背叛！\n不过，我认识他这么久，他以前从没违抗过命令……也许他是犯了妄想。\n对，就是这样。\n他花太多时间调查那个可怕的羊鸣教团，影响了心智——我甚至在他房间发现了一件他们的斗篷。\n也许你们能给他找到解药。\n他们一定知道对他做了什么！\n我会从克里格斯城堡以东他们的总部查起。\n来，拿上这件斗篷——也许你们能派上用场。")
    SetQBit(QBit(1224)) -- Find a cure for Slicker Silvertongue in the Superior Temple of Baa east of Castle Kriegspire and return to Wilbur Humphrey with the good news. - Wilbur Humphrey
    AddValue(InventoryItem(2105), 2105) -- Cloak of Baa
    evt.SetNPCTopic(789, 0, 1415) -- Wilbur Humphrey topic 0: Silvertongue's Cure
end)

RegisterGlobalEvent(1415, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(2122) then -- Letter from Zenofex
        evt.SetMessage("哎呀！\n看来滑头银舌真的是叛徒！\n谁想得到呢？\n你们把这封信带给我，做了件好事。\n立刻把它送交高等理事会，好让我们一劳永逸地除掉这个邪恶叛徒！")
        ClearQBit(QBit(1224)) -- Find a cure for Slicker Silvertongue in the Superior Temple of Baa east of Castle Kriegspire and return to Wilbur Humphrey with the good news. - Wilbur Humphrey
        SetQBit(QBit(1225)) -- Bring the the letter detailing Silvertongue's treason to the High Council in Free Haven. - NPC
    elseif HasItem(2105) then -- Cloak of Baa
        evt.SetMessage("请你们赶紧去找滑头银舌的解药！\n我相信那可怜人一定在他们可怕的精神控制法术下痛苦不堪！")
        return
    else
        evt.ForPlayer(Players.Current)
        AddValue(InventoryItem(2105), 2105) -- Cloak of Baa
        evt.SetMessage("请你们赶紧去找滑头银舌的解药！\n我相信那可怜人一定在他们可怕的精神控制法术下痛苦不堪！")
        return
    end
end)

RegisterGlobalEvent(1416, nil, function()
    evt.SetMessage("你揭露出那个可怕叛徒及其对王座的罪行，我感激不尽。\n我知道你在执行某项重要任务，所以为酬谢你对王室的效劳，我理应让你免费使用皇家游艇出行。\n需要的话，它可以送你一直到隐士岛。\n再一次，谢谢你！")
end)

RegisterGlobalEvent(1417, nil, function()
    evt.SetMessage("欢迎来到太阳马戏团！\n我们有各种游戏供你们消遣。\n你们可以把各种游戏赢来的奖品，在这里换成桶装葡萄酒或黄金金字塔。\n至少 10 分换一桶葡萄酒，30 分或以上赢一座黄金金字塔。\n顺便告诉你们，每块磁石值 1 分，每根哈皮羽毛值 3 分，每片四叶草值 5 分。\n")
end)

RegisterGlobalEvent(1418, nil, function()
    local function Step_0()
        if IsAtLeast(CircusPrises, 30) then return 2 end
        return 1
    end
    local function Step_1()
        return 6
    end
    local function Step_2()
        AddValue(InventoryItem(2092), 2092) -- Golden Pyramid
        return 3
    end
    local function Step_3()
        evt.SetMessage("恭喜！\n你赢了一座黄金金字塔！\n干得好——记住奖品不限数量，继续玩！")
        return 4
    end
    local function Step_4()
        evt.ForPlayer(Players.All)
        return 5
    end
    local function Step_5()
        return 14
    end
    local function Step_6()
        if IsAtLeast(CircusPrises, 10) then return 8 end
        return 7
    end
    local function Step_7()
        return 12
    end
    local function Step_8()
        AddValue(InventoryItem(2093), 2093) -- Keg of Wine
        return 9
    end
    local function Step_9()
        evt.SetMessage("恭喜！\n你赢了一桶葡萄酒！\n这儿奖品不限数量，继续玩！")
        return 10
    end
    local function Step_10()
        evt.ForPlayer(Players.All)
        return 11
    end
    local function Step_11()
        return 14
    end
    local function Step_12()
        evt.SetMessage("抱歉，你还没攒够 10 分。\n何不再玩几局？")
        return 13
    end
    local function Step_13()
        return nil
    end
    local function Step_14()
        if HasItem(2090) then return 16 end -- Lodestone
        return 15
    end
    local function Step_15()
        return 18
    end
    local function Step_16()
        RemoveItem(2090) -- Lodestone
        return 17
    end
    local function Step_17()
        return 14
    end
    local function Step_18()
        if HasItem(2091) then return 20 end -- Harpy Feather
        return 19
    end
    local function Step_19()
        return 22
    end
    local function Step_20()
        RemoveItem(2091) -- Harpy Feather
        return 21
    end
    local function Step_21()
        return 18
    end
    local function Step_22()
        if HasItem(2097) then return 24 end -- Four Leaf Clover
        return 23
    end
    local function Step_23()
        return 26
    end
    local function Step_24()
        RemoveItem(2097) -- Four Leaf Clover
        return 25
    end
    local function Step_25()
        return 22
    end
    local function Step_26()
        return nil
    end
    local step = 0
    while step ~= nil do
        if step == 0 then
            step = Step_0()
        elseif step == 1 then
            step = Step_1()
        elseif step == 2 then
            step = Step_2()
        elseif step == 3 then
            step = Step_3()
        elseif step == 4 then
            step = Step_4()
        elseif step == 5 then
            step = Step_5()
        elseif step == 6 then
            step = Step_6()
        elseif step == 7 then
            step = Step_7()
        elseif step == 8 then
            step = Step_8()
        elseif step == 9 then
            step = Step_9()
        elseif step == 10 then
            step = Step_10()
        elseif step == 11 then
            step = Step_11()
        elseif step == 12 then
            step = Step_12()
        elseif step == 13 then
            step = Step_13()
        elseif step == 14 then
            step = Step_14()
        elseif step == 15 then
            step = Step_15()
        elseif step == 16 then
            step = Step_16()
        elseif step == 17 then
            step = Step_17()
        elseif step == 18 then
            step = Step_18()
        elseif step == 19 then
            step = Step_19()
        elseif step == 20 then
            step = Step_20()
        elseif step == 21 then
            step = Step_21()
        elseif step == 22 then
            step = Step_22()
        elseif step == 23 then
            step = Step_23()
        elseif step == 24 then
            step = Step_24()
        elseif step == 25 then
            step = Step_25()
        elseif step == 26 then
            step = Step_26()
        else
            step = nil
        end
    end
end)

RegisterGlobalEvent(1419, nil, function()
    evt.SetMessage("欢迎！\n要玩我的游戏，付 50 金币，直接上前与我较量即可。\n视你表现如何，你可能赢一块磁石、一根哈皮羽毛或一片四叶草。\n表现差，你什么都赢不到。\n你可以在主帐篷里兑换磁石、羽毛和三叶草。")
end)

RegisterGlobalEvent(1420, nil, function()
    if not IsAtLeast(Gold, 50) then
        return
    end
    SubtractValue(Gold, 50)
    if IsAtLeast(ActualMight, 200) then
        local randomStep = PickRandomOption(1420, 4, {4, 7, 10, 13, 16, 19})
        if randomStep == 4 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 7 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 13 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 16 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 19 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualMight, 150) then
        local randomStep = PickRandomOption(1420, 25, {25, 28, 31, 34, 37, 40})
        if randomStep == 25 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 28 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 31 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 34 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 37 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 40 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualMight, 100) then
        local randomStep = PickRandomOption(1420, 46, {46, 49, 52, 55, 58, 61})
        if randomStep == 46 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 49 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 52 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 55 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 58 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 61 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualMight, 75) then
        local randomStep = PickRandomOption(1420, 66, {66, 69, 72, 75, 78, 80})
        if randomStep == 66 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 69 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 72 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 75 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 78 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 80 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualMight, 50) then
        local randomStep = PickRandomOption(1420, 85, {85, 88, 91, 94, 96, 98})
        if randomStep == 85 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 88 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 91 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 94 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 96 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 98 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    else
        local randomStep = PickRandomOption(1420, 101, {101, 104, 107, 109, 111, 113})
        if randomStep == 101 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 104 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 107 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 109 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 111 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 113 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    end
end)

RegisterGlobalEvent(1421, nil, function()
    if not IsAtLeast(Gold, 50) then
        return
    end
    SubtractValue(Gold, 50)
    if IsAtLeast(ActualEndurance, 200) then
        local randomStep = PickRandomOption(1421, 4, {4, 7, 10, 13, 16, 19})
        if randomStep == 4 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 7 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 13 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 16 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 19 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualEndurance, 150) then
        local randomStep = PickRandomOption(1421, 25, {25, 28, 31, 34, 37, 40})
        if randomStep == 25 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 28 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 31 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 34 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 37 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 40 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualEndurance, 100) then
        local randomStep = PickRandomOption(1421, 46, {46, 49, 52, 55, 58, 61})
        if randomStep == 46 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 49 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 52 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 55 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 58 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 61 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualEndurance, 75) then
        local randomStep = PickRandomOption(1421, 66, {66, 69, 72, 75, 78, 80})
        if randomStep == 66 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 69 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 72 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 75 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 78 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 80 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualEndurance, 50) then
        local randomStep = PickRandomOption(1421, 85, {85, 88, 91, 94, 96, 98})
        if randomStep == 85 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 88 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 91 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 94 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 96 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 98 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    else
        local randomStep = PickRandomOption(1421, 101, {101, 104, 107, 109, 111, 113})
        if randomStep == 101 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 104 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 107 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 109 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 111 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 113 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    end
end)

RegisterGlobalEvent(1422, nil, function()
    if not IsAtLeast(Gold, 50) then
        return
    end
    SubtractValue(Gold, 50)
    if IsAtLeast(ActualSpeed, 200) then
        local randomStep = PickRandomOption(1422, 4, {4, 7, 10, 13, 16, 19})
        if randomStep == 4 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 7 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 13 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 16 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 19 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualSpeed, 150) then
        local randomStep = PickRandomOption(1422, 25, {25, 28, 31, 34, 37, 40})
        if randomStep == 25 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 28 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 31 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 34 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 37 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 40 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualSpeed, 100) then
        local randomStep = PickRandomOption(1422, 46, {46, 49, 52, 55, 58, 61})
        if randomStep == 46 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 49 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 52 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 55 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 58 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 61 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualSpeed, 75) then
        local randomStep = PickRandomOption(1422, 66, {66, 69, 72, 75, 78, 80})
        if randomStep == 66 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 69 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 72 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 75 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 78 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 80 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualSpeed, 50) then
        local randomStep = PickRandomOption(1422, 85, {85, 88, 91, 94, 96, 98})
        if randomStep == 85 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 88 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 91 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 94 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 96 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 98 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    else
        local randomStep = PickRandomOption(1422, 101, {101, 104, 107, 109, 111, 113})
        if randomStep == 101 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 104 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 107 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 109 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 111 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 113 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    end
end)

RegisterGlobalEvent(1423, nil, function()
    if not IsAtLeast(Gold, 50) then
        return
    end
    SubtractValue(Gold, 50)
    if IsAtLeast(ActualAccuracy, 200) then
        local randomStep = PickRandomOption(1423, 4, {4, 7, 10, 13, 16, 19})
        if randomStep == 4 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 7 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 13 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 16 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 19 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualAccuracy, 150) then
        local randomStep = PickRandomOption(1423, 25, {25, 28, 31, 34, 37, 40})
        if randomStep == 25 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 28 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 31 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 34 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 37 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 40 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualAccuracy, 100) then
        local randomStep = PickRandomOption(1423, 46, {46, 49, 52, 55, 58, 61})
        if randomStep == 46 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 49 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 52 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 55 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 58 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 61 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualAccuracy, 75) then
        local randomStep = PickRandomOption(1423, 66, {66, 69, 72, 75, 78, 80})
        if randomStep == 66 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 69 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 72 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 75 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 78 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 80 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualAccuracy, 50) then
        local randomStep = PickRandomOption(1423, 85, {85, 88, 91, 94, 96, 98})
        if randomStep == 85 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 88 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 91 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 94 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 96 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 98 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    else
        local randomStep = PickRandomOption(1423, 101, {101, 104, 107, 109, 111, 113})
        if randomStep == 101 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 104 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 107 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 109 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 111 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 113 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    end
end)

RegisterGlobalEvent(1424, nil, function()
    if not IsAtLeast(Gold, 50) then
        return
    end
    SubtractValue(Gold, 50)
    if IsAtLeast(ActualLuck, 200) then
        local randomStep = PickRandomOption(1424, 4, {4, 7, 10, 13, 16, 19})
        if randomStep == 4 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 7 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 13 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 16 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 19 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualLuck, 150) then
        local randomStep = PickRandomOption(1424, 25, {25, 28, 31, 34, 37, 40})
        if randomStep == 25 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 28 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 31 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 34 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 37 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 40 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualLuck, 100) then
        local randomStep = PickRandomOption(1424, 46, {46, 49, 52, 55, 58, 61})
        if randomStep == 46 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 49 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 52 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 55 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 58 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 61 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualLuck, 75) then
        local randomStep = PickRandomOption(1424, 66, {66, 69, 72, 75, 78, 80})
        if randomStep == 66 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 69 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 72 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 75 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 78 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 80 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualLuck, 50) then
        local randomStep = PickRandomOption(1424, 85, {85, 88, 91, 94, 96, 98})
        if randomStep == 85 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 88 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 91 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 94 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 96 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 98 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    else
        local randomStep = PickRandomOption(1424, 101, {101, 104, 107, 109, 111, 113})
        if randomStep == 101 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 104 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 107 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 109 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 111 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 113 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    end
end)

RegisterGlobalEvent(1425, nil, function()
    if not IsAtLeast(Gold, 50) then
        return
    end
    SubtractValue(Gold, 50)
    if IsAtLeast(ActualIntellect, 200) then
        local randomStep = PickRandomOption(1425, 4, {4, 7, 10, 13, 16, 19})
        if randomStep == 4 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 7 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 10 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 13 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 16 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 19 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualIntellect, 150) then
        local randomStep = PickRandomOption(1425, 25, {25, 28, 31, 34, 37, 40})
        if randomStep == 25 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 28 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 31 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 34 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 37 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 40 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        end
    elseif IsAtLeast(ActualIntellect, 100) then
        local randomStep = PickRandomOption(1425, 46, {46, 49, 52, 55, 58, 61})
        if randomStep == 46 then
            AddValue(InventoryItem(2097), 2097) -- Four Leaf Clover
            evt.SetMessage("难以置信！\n你确定没作弊？\n好吧，规矩就是规矩。\n这是你的奖品——一片四叶草！")
            return
        elseif randomStep == 49 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 52 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 55 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 58 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 61 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualIntellect, 75) then
        local randomStep = PickRandomOption(1425, 66, {66, 69, 72, 75, 78, 80})
        if randomStep == 66 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 69 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 72 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 75 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 78 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 80 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    elseif IsAtLeast(ActualIntellect, 50) then
        local randomStep = PickRandomOption(1425, 85, {85, 88, 91, 94, 96, 98})
        if randomStep == 85 then
            AddValue(InventoryItem(2091), 2091) -- Harpy Feather
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 88 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 91 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 94 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 96 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 98 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    else
        local randomStep = PickRandomOption(1425, 101, {101, 104, 107, 109, 111, 113})
        if randomStep == 101 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("出色的工作，你赢了一根哈皮羽毛！")
            return
        elseif randomStep == 104 then
            AddValue(InventoryItem(2090), 2090) -- Lodestone
            evt.SetMessage("干得好，我还以为这回吃定你了。\n你赢了一块磁石！")
            return
        elseif randomStep == 107 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 109 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 111 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        elseif randomStep == 113 then
            evt.SetMessage("可惜！\n你就差一点。\n花 50 金币，我再给你一次机会。")
            return
        end
    end
end)

RegisterGlobalEvent(1426, nil, function()
    SetAutonote(461) -- Lawrence Aleman will buy temple gongs for 2000 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2082) then -- Temple Gong
            RemoveItem(2082) -- Temple Gong
            AddValue(Gold, 2000)
            evt.SetMessage("这根有点脏，不过我想凑合能用。\n这是答应你的金币。\n谢谢你们的帮助！")
            return
        end
    end
    evt.SetMessage("作为重建自由天堂这座神庙的努力的一部分，我在收集神庙铜锣。\n你们要有铜锣，每个我出 2000 金币。")
end)

RegisterGlobalEvent(1427, nil, function()
    SetAutonote(462) -- Lon Miller will buy bones for 1000 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2085) then -- Bone
            RemoveItem(2085) -- Bone
            AddValue(Gold, 1000)
            SubtractValue(131307, 2)
            evt.SetMessage("嗯……\n一根人的腿骨？\n这就很好。\n这根骨头肯定值 1000 金币。\n")
            return
        end
    end
    evt.SetMessage("我在找骨头用于仪式。\n我偏好人类或类人生物的骨头，不过我想你们找到什么我都能凑合。\n我愿为能用的骨头出最高 1000 金币。")
end)

RegisterGlobalEvent(1428, nil, function()
    SetAutonote(463) -- Davis Carp will buy lodestones for 5 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2090) then -- Lodestone
            RemoveItem(2090) -- Lodestone
            AddValue(Gold, 5)
            evt.SetMessage("谢谢！\n你太慷慨了——这会是件可爱的礼物。\n这是欠你的 5 金币。")
            return
        end
    end
    evt.SetMessage("许多人没法来看马戏，所以我在收集马戏奖品，送给那些不能亲自来的人。\n磁石你们要出让的话，我每个出 5 金币。")
end)

RegisterGlobalEvent(1429, nil, function()
    SetAutonote(464) -- Bonnie Rotterdam will buy feathers for 10 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2091) then -- Harpy Feather
            RemoveItem(2091) -- Harpy Feather
            AddValue(Gold, 10)
            evt.SetMessage("谢谢！\n别把这事告诉我女儿，我想给她个惊喜。\n这是 10 金币。")
            return
        end
    end
    evt.SetMessage("我女儿想去看马戏，可马戏在这附近时我们总是没空。\n我很想送她一把漂亮的哈皮羽毛。\n你们有哈皮羽毛我都收，每根 10 金币。")
end)

RegisterGlobalEvent(1430, nil, function()
    SetAutonote(465) -- Renee Blackburn will buy pyramids for 1000 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2092) then -- Golden Pyramid
            RemoveItem(2092) -- Golden Pyramid
            AddValue(Gold, 1000)
            evt.SetMessage("谢谢！\n我等不及要拿这个去阿卜杜勒沙漠度假村，看看能换到什么！\n哦，这是欠你的钱。")
            return
        end
    end
    evt.SetMessage("我听说，在阿卜杜勒沙漠度假村用黄金金字塔支付，能换到相当别致的东西。\n我希望有朝一日去那儿，现在就想囤点金字塔。\n你们有黄金金字塔我都收，每座 1000 金币。")
end)

RegisterGlobalEvent(1431, nil, function()
    SetAutonote(466) -- Nick Fenstar will buy kegs of wine for 300 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2093) then -- Keg of Wine
            RemoveItem(2093) -- Keg of Wine
            AddValue(Gold, 300)
            evt.SetMessage("我的最爱！\n谢谢这葡萄酒！\n这是 300 金币，它绝对值这个价。")
            return
        end
    end
    evt.SetMessage("我最爱的葡萄酒，就是他们在马戏团赢来送的那种。\n你们能从马戏团给我带来任何一桶葡萄酒，我出 300 金币。")
end)

RegisterGlobalEvent(1432, nil, function()
    SetAutonote(467) -- Sy Roth will buy teeth for 500 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2096) then -- Tooth
            RemoveItem(2096) -- Tooth
            AddValue(Gold, 500)
            evt.SetMessage("我好像还没有这样一颗牙，这是 500 金币。")
            return
        end
    end
    evt.SetMessage("我收藏了一整套惊人的牙齿，可我总在找更多。\n你们要是找到我收藏里没有的牙，我出 500 金币。")
end)

RegisterGlobalEvent(1433, nil, function()
    SetAutonote(468) -- Geoff Southy will buy clovers for 25 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2097) then -- Four Leaf Clover
            RemoveItem(2097) -- Four Leaf Clover
            AddValue(Gold, 25)
            evt.SetMessage("万岁！\n这比去马戏团还输个精光轻松多了，也不丢人！\n这是 25 金币！")
            return
        end
    end
    evt.SetMessage("我去过三趟马戏团，什么都赢不到。\n我真正想要的只是他们当奖品发的那种别致四叶草。\n你们给我带来任何一片四叶草，我出 25 金币。")
end)

RegisterGlobalEvent(1434, nil, function()
    SetAutonote(469) -- Dillan Robinson will buy amber for 500 gold each in Free Haven.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2102) then -- Amber
            RemoveItem(2102) -- Amber
            AddValue(Gold, 500)
            evt.SetMessage("这就很好！\n谢谢这琥珀，这是答应你的 500 金币。")
            return
        end
    end
    evt.SetMessage("我听说在铁拳城堡以北一连串洞穴里能找到大块琥珀。\n我从没有时间离开自由天堂，可我很想弄几块那样的琥珀。\n你们有琥珀我都收，每块 500 金币。")
end)

RegisterGlobalEvent(1435, nil, function()
    evt.SetMessage("你们也许知道，恩洛斯死灵法师公会最后一批成员在继位战争战败后逃到了黑摩尔城堡。\n谁知道我们等在这儿时，他们在炮制什么邪恶魔法。\n我敢肯定，记载永夜仪式的那本书——人称巫妖之书——已被搬进那座城堡。\n书若被毁，将狠狠打击他们任何邪恶计划。\n我试过几次想接近那本书，可城堡防御太严。\n你们若能毁掉那本书，回来找我，我亲自赏你们。")
    SetQBit(QBit(1228)) -- Find and destroy the Book of Liches in Castle Darkmoor and return to Terry Ros in Darkmoor village. - NPC
    evt.SetNPCTopic(1115, 0, 1436) -- Terry Ros topic 0: Quest
end)

RegisterGlobalEvent(1436, nil, function()
    evt.ForPlayer(Players.All)
    if not IsQBitSet(QBit(1033)) then -- 9, CD2, given when you destroy Lich book
        evt.SetMessage("毁书不急。\n你们要是办成了，回来跟我谈。\n我不确定能不能接近书并毁掉它——那城堡里的邪恶生物太多了。")
        return
    end
    evt.SetMessage("难以置信！\n我没料到你们真能办到。\n既然巫妖之书没了，恩洛斯的死灵法师公会将慢慢消亡。\n这都亏了你们！\n来，拿这个当奖赏，也接受我的谢意。")
    SetAward(Award(102)) -- Destroyed the Book of Liches
    AddValue(Experience, 50000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    AddValue(327915, 5)
    ClearQBit(QBit(1228)) -- Find and destroy the Book of Liches in Castle Darkmoor and return to Terry Ros in Darkmoor village. - NPC
    evt.SetNPCTopic(1115, 0, 0) -- Terry Ros topic 0 cleared
    evt.MoveNPC(1115, 0) -- Terry Ros -> removed
end)

RegisterGlobalEvent(1437, nil, function()
    evt.SetMessage("欢迎来到我的沙漠度假村！\n你们会注意到，我们这儿没有村镇里那种乌合之众。\n花点时间放松，享受沙漠的宁静吧，朋友们。\n你们若有兴趣，我们这儿有几个商人，会用稀有物品换武器和护甲——值得你们去看看。")
end)

RegisterGlobalEvent(1438, nil, function()
    evt.SetMessage("看来关于我这小度假村的谣言满天飞。\n唉，人人都在谈的青春之泉不在这儿，它在西边几天路程外。")
end)

RegisterGlobalEvent(1439, nil, function()
    evt.SetMessage("你好！\n我这儿有上好的护甲套，换黄金金字塔或桶装葡萄酒。")
end)

RegisterGlobalEvent(1440, nil, function()
    evt.SetMessage("我用高质量武器换黄金金字塔或桶装葡萄酒。")
end)

RegisterGlobalEvent(1441, nil, function()
    evt.SetMessage("我有各式各样的魔法饰品，很乐意换黄金金字塔或桶装葡萄酒。")
end)

RegisterGlobalEvent(1442, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2092) then -- Golden Pyramid
            RemoveItem(2092) -- Golden Pyramid
            evt.GiveItem(6, ItemType.Armor_)
            evt.SetMessage("很高兴与你成交，这是你的护甲！")
            return
        end
    end
    evt.SetMessage("恐怕你没有黄金金字塔，所以我没法跟你交易。")
end)

RegisterGlobalEvent(1443, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2092) then -- Golden Pyramid
            RemoveItem(2092) -- Golden Pyramid
            evt.GiveItem(6, ItemType.Weapon_)
            evt.SetMessage("很高兴与你成交，这是你的武器！")
            return
        end
    end
    evt.SetMessage("恐怕你没有黄金金字塔，所以我没法跟你交易。")
end)

RegisterGlobalEvent(1444, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2092) then -- Golden Pyramid
            RemoveItem(2092) -- Golden Pyramid
            evt.GiveItem(6, ItemType.Misc)
            evt.SetMessage("很高兴与你成交，这是你的饰品！")
            return
        end
    end
    evt.SetMessage("恐怕你没有黄金金字塔，所以我没法跟你交易。")
end)

RegisterGlobalEvent(1445, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2093) then -- Keg of Wine
            RemoveItem(2093) -- Keg of Wine
            evt.GiveItem(4, ItemType.Armor_)
            evt.SetMessage("很高兴与你成交，这是你的护甲！")
            return
        end
    end
    evt.SetMessage("你没有桶装葡萄酒可换！")
end)

RegisterGlobalEvent(1446, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2093) then -- Keg of Wine
            RemoveItem(2093) -- Keg of Wine
            evt.GiveItem(4, ItemType.Weapon_)
            evt.SetMessage("很高兴与你成交，这是你的武器！")
            return
        end
    end
    evt.SetMessage("你没有桶装葡萄酒可换！")
end)

RegisterGlobalEvent(1447, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2093) then -- Keg of Wine
            RemoveItem(2093) -- Keg of Wine
            evt.GiveItem(4, ItemType.Misc)
            evt.SetMessage("很高兴与你成交，这是你的饰品！")
            return
        end
    end
    evt.SetMessage("你没有桶装葡萄酒可换！")
end)

RegisterGlobalEvent(1448, nil, function()
    SetAutonote(470) -- Bandar Jahrom will trade gems for lamps in Abul's Desert Resort in Dragonsand.
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2103) then -- Magic Lamp
            RemoveItem(2103) -- Magic Lamp
            local randomStep = PickRandomOption(1448, 24, {24, 27, 30, 33, 36, 39})
            if randomStep == 24 then
                AddValue(InventoryItem(2056), 2056) -- Diamond
                evt.SetMessage("谢谢这盏灯！\n这是你的石头。")
                return
            elseif randomStep == 27 then
                AddValue(InventoryItem(2065), 2065) -- Sapphire
                evt.SetMessage("谢谢这盏灯！\n这是你的石头。")
                return
            elseif randomStep == 30 then
                AddValue(InventoryItem(2064), 2064) -- Emerald
                evt.SetMessage("谢谢这盏灯！\n这是你的石头。")
                return
            elseif randomStep == 33 then
                AddValue(InventoryItem(2063), 2063) -- Sunstone
                evt.SetMessage("谢谢这盏灯！\n这是你的石头。")
                return
            elseif randomStep == 36 then
                AddValue(InventoryItem(2059), 2059) -- Ruby
                evt.SetMessage("谢谢这盏灯！\n这是你的石头。")
                return
            elseif randomStep == 39 then
                AddValue(InventoryItem(2062), 2062) -- Purple Topaz
                evt.SetMessage("谢谢这盏灯！\n这是你的石头。")
                return
            end
            return
        end
    end
    evt.SetMessage("我在收集用过的魔法灯，可我没钱。\n不过，我用这些漂亮石头换你的灯。")
end)

RegisterGlobalEvent(1573, nil, function()
    evt.SetMessage("手杖之道最好的老师贾斯珀·赖斯住在银湾附近。\n你们若想继续手杖训练，就去找他谈谈。")
end)

RegisterGlobalEvent(1574, nil, function()
    evt.SetMessage("布莱克郡的盖伊·汉普顿把我会的剑术都教给了我。\n你们若想精通刀剑，就该拜他为师。")
end)

RegisterGlobalEvent(1575, nil, function()
    evt.SetMessage("跟儒勒·迈尔斯比起来我只是个新手。\n他住在石头城堡附近，能教任何人改进匕首技巧。")
end)

RegisterGlobalEvent(1576, nil, function()
    evt.SetMessage("艾文里尔·史密瑟斯在我们大多数人出生前就已精通战斧，可他不训练人类。\n我想你们若能为他做点特别的事，他也许会考虑教一个人类怎样真正挥斧。\n他大部分时间在诅咒沼泽的鬼屋里。")
end)

RegisterGlobalEvent(1577, nil, function()
    evt.SetMessage("恩洛斯最好的矛术师伯顿·卢瑟福住在黑沼。\n我不清楚他为何挑这么偏僻的地方安家。\n也许他不喜欢被学生打扰？")
end)

RegisterGlobalEvent(1578, nil, function()
    evt.SetMessage("斯特罗姆加领主箭术虽好，却不收学生。\n要精通弓，你们得去克里格斯找德斯蒙德·韦勒。")
end)

RegisterGlobalEvent(1579, nil, function()
    evt.SetMessage("你们若想精通钉锤，得去布莱克郡找埃罗尔·奥斯特曼谈谈。")
end)

RegisterGlobalEvent(1580, nil, function()
    evt.SetMessage("几乎没人知道这些武器存在。\n我见过唯一另一个使用古代武器的人是雷克塞拉，可她最后一次露面是在天堂谷——我不确定她还在不在那儿。")
end)

RegisterGlobalEvent(1581, nil, function()
    evt.SetMessage("没人能像布莱克郡的布朗温·梅克那样用盾。\n你们若想精通盾，就该找他。")
end)

RegisterGlobalEvent(1582, nil, function()
    evt.SetMessage("阿伦·西勒开办着最好的皮甲穿戴技艺学校。\n他通常在石头城堡附近开课。")
end)

RegisterGlobalEvent(1583, nil, function()
    evt.SetMessage("黑沼是大卫·费瑟的家，他是我所知唯一能教你们精通锁甲技巧的人。")
end)

RegisterGlobalEvent(1584, nil, function()
    evt.SetMessage("福里斯特·萨瑟斯，恩洛斯首席圣武士之一，在泰珀城堡附近教授板甲精通。")
end)

RegisterGlobalEvent(1585, nil, function()
    evt.SetMessage("要精通火系，你们得去浓雾岛找耶洗别谈谈。")
end)

RegisterGlobalEvent(1586, nil, function()
    evt.SetMessage("卡奥·塞勒姆在浓雾岛能教你们更多气系魔法的诀窍。")
end)

RegisterGlobalEvent(1587, nil, function()
    evt.SetMessage("要精通水系，你们得在浓雾岛的哈珀·柯林斯门下受训。")
end)

RegisterGlobalEvent(1588, nil, function()
    evt.SetMessage("雷维·博塔尼亚在银湾能训练你们精通土系。")
end)

RegisterGlobalEvent(1589, nil, function()
    evt.SetMessage("灵系可以在神甫审判官里奥的帮助下精通。\n他就住在铁拳城堡后面，你们不会错过他。")
end)

RegisterGlobalEvent(1590, nil, function()
    evt.SetMessage("塞恩·罗珀在银湾能训练你们精通心智系。")
end)

RegisterGlobalEvent(1591, nil, function()
    evt.SetMessage("你们若想精通体术魔法，得去银湾找吉尔伯特·哈默谈谈。")
end)

RegisterGlobalEvent(1592, nil, function()
    evt.SetMessage("光系魔法是难学的技艺，而大宗师纪洛内只在阿拉莫斯城堡附近某处能找到。")
end)

RegisterGlobalEvent(1593, nil, function()
    evt.SetMessage("苏郎满楚曾是我黑暗魔法的老师。\n他在天堂谷一座村里有间小屋。")
end)

RegisterGlobalEvent(1594, nil, function()
    evt.SetMessage("汉斯·吉福德在自由天堂能教你们更多鉴定物品的妙诀。")
end)

RegisterGlobalEvent(1595, nil, function()
    evt.SetMessage("我见过最油嘴滑舌的商人是银湾的威尔·奥斯曼。\n你们若想提升商人技巧，就该找他。")
end)

RegisterGlobalEvent(1596, nil, function()
    evt.SetMessage("你们觉得我擅长修理的话，瑞安·特里克尔是这一带最好的。\n我相信能说服他帮你们精通这门技艺。\n我上次听说他住在石头城堡附近。")
end)

RegisterGlobalEvent(1597, nil, function()
    evt.SetMessage("杰森·特拉弗勒会指导你们健身术最精妙之处。\n他在自由天堂工作——前提是你们受得了他严苛的训练。")
end)

RegisterGlobalEvent(1598, nil, function()
    evt.SetMessage("精通冥想若是你们的目标，就得去浓雾岛找野野·阿里加纳卡。")
end)

RegisterGlobalEvent(1599, nil, function()
    evt.SetMessage("感知力可以在黑沼的马科·卡利古拉帮助下精通。")
end)

RegisterGlobalEvent(1600, nil, function()
    evt.SetMessage("雅克·科尔正与斯特罗姆加领主合作研发实验配方。\n他若有空，也许能帮你们精通炼金术。")
end)

RegisterGlobalEvent(1601, nil, function()
    evt.SetMessage("最伟大的拆陷阱师加布·莱斯特目前在石头城堡附近传授技艺。\n你们想学所有最好的诀窍就该找他。")
end)

RegisterGlobalEvent(1602, nil, function()
    evt.SetMessage("约翰·塔克能教你们精通学习技能。\n我相信他仍住在银湾。")
end)

RegisterGlobalEvent(1603, nil, function()
    evt.SetMessage("矮人之王斯纳格篡夺了洛克林的矮人氏族领导权。\n如今洛克林流亡在外，斯纳格掌权。\n大多数矮人不喜欢斯纳格，希望洛克林重新上台。\n不幸的是，斯纳格既占了洛克林的洞穴，又占了最大的矮人铁矿。\n斯纳格担心近旁有人背叛，把我这位矮人武器教头撤了职。\n我们需要人用一切必要手段把斯纳格赶下台。\n你们若肯帮我们，我甚至愿意教你们这些人类像真正的矮人一样用斧。")
    SetQBit(QBit(1148)) -- Kill Snergle in Snergle's Caverns and return with his axe to Avinril Smythers at The Haunt tavern in the Mire of the Damned. - NPC
    evt.SetNPCTopic(817, 0, 1604) -- Avinril Smythers  topic 0: Quest
end)

RegisterGlobalEvent(1604, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2118) then -- Snergle's Axe
        evt.SetMessage("我需要斯纳格被击败的证据。\n抱歉，我不能只凭你们一句话。\n带件他的私人物品回来，比如他的斧子。")
        return
    end
    evt.SetMessage("哦，光辉的日子！\n斯纳格一死，我们就能去找洛克林，请他重新上台。\n为此我们永远感谢你们，各地矮人都欠你们一份情。")
    SetAward(Award(79)) -- Killed Snergle
    AddValue(Experience, 20000)
    evt.ForPlayer(Players.Current)
    SetQBit(QBit(1051)) -- 27 D05, Given when axe is returned (so door can't be opened)
    ClearQBit(QBit(1148)) -- Kill Snergle in Snergle's Caverns and return with his axe to Avinril Smythers at The Haunt tavern in the Mire of the Damned. - NPC
    AddValue(327915, 5)
    evt.SetNPCTopic(817, 0, 1520) -- Avinril Smythers  topic 0: Master Axe Fighting
end)

RegisterGlobalEvent(1605, nil, function()
    evt.SetMessage("浓雾岛的市长正在考虑允许银兄弟会协助镇民对付邪恶。\n我知道银盔迫害队在他们歧途的讨伐中杀害无辜，可没人活下来作证他们的暴行。\n你们得突击他们在这南边的前哨，找到证据，好让我说服市长把他们逐出浓雾岛。")
    SetQBit(QBit(1149)) -- Storm the Silver Helm Outpost near Mist and return with evidence of their corruption to the Constable of Mist. - NPC
    evt.SetNPCTopic(822, 0, 1606) -- Charles D'Sorpigal topic 0: Quest
end)

RegisterGlobalEvent(1606, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2123) then -- Enemies List
        evt.SetMessage("继续找——市长和我的性命很可能就在你们手里。\n没有证据我们没法对他们采取行动。")
        return
    end
    evt.SetMessage("跟我猜的一样！\n我很惊讶市长在他们的敌人名单上排第三。\n我承认他是有点不称职，可他不是坏人。\n再一次谢谢你们，请收下这些金币和我的谢意作为报酬。")
    RemoveItem(2123) -- Enemies List
    SetAward(Award(80)) -- Saved the Mayor of Mist
    AddValue(Experience, 15000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 3000)
    AddValue(131307, 2)
    ClearQBit(QBit(1149)) -- Storm the Silver Helm Outpost near Mist and return with evidence of their corruption to the Constable of Mist. - NPC
    evt.SetNPCTopic(822, 0, 0) -- Charles D'Sorpigal topic 0 cleared
    evt.SetNPCTopic(831, 0, 1608) -- Bertrand Scrivner topic 0: Silver Helms
end)

RegisterGlobalEvent(1607, nil, function()
    evt.SetMessage("我想我也许真该允许银兄弟会在浓雾岛周边地区维持治安。\n也许他们能把所有邪恶分子都揪出来，让这座岛成为天堂。")
end)

RegisterGlobalEvent(1608, nil, function()
    evt.SetMessage("我不敢相信那些银盔居然想杀我！\n我这辈子从没做过坏事！\n呃，至少不比别的市长更坏。\n再一次谢谢你们阻止他们。")
end)

RegisterGlobalEvent(1609, nil, function()
    evt.SetMessage("你们能帮羊鸣教神庙一个忙吗？\n看来我的教友们太匆忙地离开了这西北边的古神庙，把举行某些仪式必需的烛台落下了。\n羊鸣教神父谁也不愿回去，因为他们怕神庙上中下了什么诅咒。\n不过，你们若把烛台给我带回来，我可以代他们酬谢你们。")
    SetQBit(QBit(1150)) -- Retrieve the candelabra from the Abandoned Temple for Andover Potbello in New Sorpigal. - NPC
    evt.SetNPCTopic(786, 1, 1610) -- Andover Potbello topic 1: Quest
end)

RegisterGlobalEvent(1610, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2069) then -- Candelabra
        evt.SetMessage("诅咒也把你们吓跑了吗？\n我能理解。\n不过，巴是耐心的。\n你们若鼓起勇气找到烛台，我仍准备为此补偿你们。")
        return
    end
    evt.SetMessage("出色！\n赞美巴！\n我看你们终究没被诅咒吓住。\n这是你们的报酬，再一次谢谢你们的帮助。")
    RemoveItem(2069) -- Candelabra
    SetAward(Award(81)) -- Retrieved the Baa Candelabra
    AddValue(Experience, 2000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 1000)
    SubtractValue(655595, 10)
    ClearQBit(QBit(1150)) -- Retrieve the candelabra from the Abandoned Temple for Andover Potbello in New Sorpigal. - NPC
    evt.SetNPCTopic(786, 1, 0) -- Andover Potbello topic 1 cleared
end)

RegisterGlobalEvent(1611, nil, function()
    evt.SetMessage("谁想得到，我走遍恩洛斯想讨伐的邪恶，竟离我自家这么近？\n杰拉德·布莱克墨斯曾是我的副手。\n他谋杀我前不久开始与羊鸣教神庙通信，他们开始给他喂我们兄弟会的目标。\n我最终成了目标之一，杰拉德接管了兄弟会。\n如今，银盔和他们猎捕的人一样邪恶。\n我确信我们兄弟会的腐化是羊鸣教神庙一手造成的。\n与此同时，杰拉德的兄弟、巫师马库斯一直在给银盔供应高质量装备。\n我上次听说，马库斯在东南边一座岛上的熔炉里帮人干活。")
end)

RegisterGlobalEvent(1612, nil, function()
    if not IsQBitSet(QBit(1151)) then -- NPC
        evt.SetMessage("我的侄女梅洛迪在浓雾岛家中被绑架，锁进了附近一座银盔前哨。\n她是少数知道我已被谋杀的人之一。\n我敢说杰拉德把她关起来就是为了这个原因，可我相信他想逼她成亲，以消除对他领导银兄弟会的任何反对。")
        return
    end
    evt.SetMessage("谢谢你们救了我侄女。\n这墙后面是一处秘密地方，这些年我连杰拉德都瞒着。\n你们尽管拿想要的东西；我宁愿你们拿，也不愿给杰拉德。")
end)

RegisterGlobalEvent(1613, nil, function()
    evt.SetMessage("杰拉德有一枚刻着他名字的安卡，是羊鸣教神父送给他的。\n我不确定这安卡具体做什么用，可他也许用它表明自己是羊鸣教的朋友。")
    evt.SetNPCTopic(799, 2, 1675) -- Loretta Fleise topic 2: Ankh
    evt.SetNPCTopic(801, 2, 1676) -- Anthony Stone topic 2: Ankh
end)

RegisterGlobalEvent(1614, nil, function()
    evt.SetMessage("你们想打败斯纳格，是吧？\n他自己清楚在大多数矮人眼里他是什么货色。\n他躲在洛克林的旧洞穴里，周围是一群忠诚的矮人。\n里面就算出什么事，他也会立刻把自己锁进私室，让追随者去应付。\n你们进他房间需要钥匙；高质量的矮人门你们撞不开。\n我曾是洛克林的管家——我很熟悉那间屋子，碰巧身上还藏着一把钥匙。\n算你们走运，我是因为斯纳格才被关在这间牢房里的，我最想看到的就是他的统治早早完蛋。\n这是钥匙——就当是谢我把我放出牢房的报酬吧。")
    evt.MoveNPC(851, 0) -- Ghim Hammond -> removed
    if HasItem(2108) then return end -- Key to Snergle's Chambers
    AddValue(InventoryItem(2108), 2108) -- Key to Snergle's Chambers
end)
RegisterCanShowTopic(1614, function()
    evt._BeginCanShowTopic(1614)
    local visible = true
    if HasItem(2108) then -- Key to Snergle's Chambers
        visible = false
        return visible
    else
        visible = true
        return visible
    end
end)

RegisterGlobalEvent(1615, nil, function()
    evt.SetMessage("谢谢你们放我出来。\n银盔没杀我，唯一原因是我是神父。\n坦白说，他们居然还对我手下留情，我自己都意外。\n听着，我听见这附近有些怪声……我想这儿附近也许有条密道。\n无论如何，我现在该走了；这牢房我一秒也不想多待。")
    evt.MoveNPC(859, 0) -- Oliver Wendell -> removed
end)

RegisterGlobalEvent(1616, nil, function()
    evt.SetMessage("近来在这一带路上横行的龙骑兵，从我的一支商队里偷走了我的竖琴。\n我没本事从他们那儿夺回来，可我愿出钱请有本事的人替我去。\n找到竖琴送回来，我就赏你们。")
    SetQBit(QBit(1152)) -- Retrieve the harp from the Dragoon's Caverns south of Castle Ironfist and return it to Andrew Besper in Castle Ironfist. - NPC
    evt.SetNPCTopic(862, 0, 1617) -- Andrew Besper topic 0: Quest
end)

RegisterGlobalEvent(1617, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(2099) then -- Harp
        evt.SetMessage("感激不尽！\n我妻子爱这把竖琴；真高兴你们能把它找回来！\n来，拿这个当报酬。\n我有传闻说龙骑兵在跟暗影行会勾结。\n若真如此，我想新索匹格市长一定很乐意看到证据。\n再一次谢谢你们的帮助。")
        RemoveItem(2099) -- Harp
        SetAward(Award(82)) -- Retrieved Andrew's Harp
        AddValue(Experience, 10000)
        evt.ForPlayer(Players.Current)
        AddValue(Gold, 5000)
        AddValue(131307, 2)
        ClearQBit(QBit(1152)) -- Retrieve the harp from the Dragoon's Caverns south of Castle Ironfist and return it to Andrew Besper in Castle Ironfist. - NPC
        evt.SetNPCTopic(862, 0, 0) -- Andrew Besper topic 0 cleared
    elseif HasItem(2098) then -- Flute
        evt.SetMessage("呃，这确实是件乐器，可它不是竖琴。\n让我解释区别：\n你们带回来的是一支笛子。\n笛子是一根有孔的管子。\n竖琴有弦。\n这下清楚了吧？\n我相信竖琴还在他们手里，送回来我会重赏你们。")
    else
        evt.SetMessage("我的竖琴仍没找到，所以报酬仍然有效。\n我知道龙骑兵的据点在这南边海岸附近。\n请把我的竖琴带回来。")
    end
end)

RegisterGlobalEvent(1618, nil, function()
    evt.SetMessage("我对不死生物有几个理论，非常想证明。\n我真正需要的是一具不死生物遗骸，最好是强大的那种。\n其实，我真正需要的是第一位巫妖、疯狂的埃斯里克的遗骸。\n可我是个学者，没办法弄到这样的标本。\n我确实攒了点钱，愿为埃斯里克的遗骸付你们重酬。")
    SetQBit(QBit(1153)) -- Retrieve Ethric's skull from his tomb west of Free Haven for Gabriel Cartman in Free Haven. - NPC
    evt.SetNPCTopic(956, 0, 1619) -- Gabriel Cartman topic 0: Quest
end)

RegisterGlobalEvent(1619, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2084) then -- Ethric's Skull
        evt.SetMessage("我很清楚这任务有多难，相信我。\n慢慢来，但至少要把活干好。")
        return
    end
    evt.SetMessage("干得好！现在我可以完成研究了。\n我若能弄清永夜仪式的原理，也许能找到逆转它的办法。\n这是答应你们的报酬。")
    RemoveItem(2084) -- Ethric's Skull
    SetAward(Award(83)) -- Retrieved Ethric's Skull
    AddValue(Experience, 15000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 7500)
    ClearQBit(QBit(1153)) -- Retrieve Ethric's skull from his tomb west of Free Haven for Gabriel Cartman in Free Haven. - NPC
    evt.SetNPCTopic(956, 0, 0) -- Gabriel Cartman topic 0 cleared
    evt.MoveNPC(956, 0) -- Gabriel Cartman -> removed
end)

RegisterGlobalEvent(1621, nil, function()
    evt.SetMessage("我们镇定期遭到巨蛛侵扰。\n我很有把握，只要杀死蛛后，其余蜘蛛就会散去。\n目前，我悬赏能杀死蛛后的人。")
    SetQBit(QBit(1154)) -- Kill the Queen of the Spiders in the Abandoned Temple in New Sorpigal and return with her heart to Buford T. Allman in New Sorpigal. - NPC
    evt.SetNPCTopic(992, 0, 1622) -- Buford T. Allman topic 0: Quest
end)

RegisterGlobalEvent(1622, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2101) then -- Spider Queen's Heart
        evt.SetMessage("还没人带回来杀死蛛后的证据，所以悬赏仍然有效。")
        return
    end
    evt.SetMessage("好可怕的战利品！\n这颗心证明你们打败了邪恶的蛛后。\n希望这下蜘蛛不会再来骚扰新索匹格了。\n这是答应你们的报酬。")
    RemoveItem(2101) -- Spider Queen's Heart
    SetAward(Award(84)) -- Killed the Spider Queen
    AddValue(Experience, 3000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 1000)
    ClearQBit(QBit(1154)) -- Kill the Queen of the Spiders in the Abandoned Temple in New Sorpigal and return with her heart to Buford T. Allman in New Sorpigal. - NPC
    evt.SetNPCTopic(992, 0, 0) -- Buford T. Allman topic 0 cleared
end)

RegisterGlobalEvent(1623, nil, function()
    evt.SetMessage("塞德里克·德鲁瑟斯和他的天体教团占领了独石——一处德鲁伊神圣的古老之地。\n他们黑暗的仪式正在腐化独石，必须阻止他们——他们用作仪式中心的那座祭坛必须被损毁。\n为我们做这件事，我们会补偿你们的时间与辛劳。")
    SetQBit(QBit(1155)) -- Deface the altar in the Monolith west of Silver Cove and return to Eleanor Vanderbilt in Silver Cove. - NPC
    evt.SetNPCTopic(1052, 0, 1624) -- Eleanor Vanderbilt topic 0: Quest
end)

RegisterGlobalEvent(1624, nil, function()
    if not IsQBitSet(QBit(1047)) then -- 23 D13, Given when Altar is desecrated
        evt.SetMessage("很高兴再见到你们，可天体教团仍占着独石。")
        return
    end
    evt.SetMessage("谢谢你们的帮助！\n请允许我补偿你们的努力。\n知道塞德里克和他那些叛逆德鲁伊不再污染那片圣地，我们能睡得更安稳了。")
    ClearQBit(QBit(1155)) -- Deface the altar in the Monolith west of Silver Cove and return to Eleanor Vanderbilt in Silver Cove. - NPC
    AddValue(131307, 2)
    AddValue(Gold, 3000)
    evt.ForPlayer(Players.All)
    SetAward(Award(85)) -- Saved the Monolith
    AddValue(Experience, 15000)
    evt.SetNPCTopic(1052, 0, 0) -- Eleanor Vanderbilt topic 0 cleared
    evt.MoveNPC(1052, 0) -- Eleanor Vanderbilt -> removed
end)

RegisterGlobalEvent(1625, nil, function()
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if HasItem(2094) then -- Cobra Egg
            RemoveItem(2094) -- Cobra Egg
            AddValue(Gold, 300)
            evt.SetMessage("出色的标本！\n我立刻就能把它孵出来，帮我这不景气的生意一把。\n这是我为这枚好蛋付的钱。\n你们再有眼镜蛇蛋我都收，只要还有人要。")
            return
        end
    end
    evt.SetMessage("我是珍稀异域生物收藏家，靠把其中一些当宠物出售为生。\n目前眼镜蛇需求很大，我手里剩下的眼镜蛇不多了。\n因此，你们若有眼镜蛇蛋，我愿出高价收购。\n记住，你们要是找到眼镜蛇蛋，我给的价钱最好。")
end)

RegisterGlobalEvent(1626, nil, function()
    evt.SetMessage("已移除的蝙蝠粪便消息")
    SetQBit(QBit(1157)) -- NPC
    evt.SetNPCTopic(1074, 0, 1627) -- Barrad Unter topic 0: Quest
    AddValue(InventoryItem(2050), 2050) -- Leather Pouch
end)

RegisterGlobalEvent(1628, nil, function()
    evt.SetMessage("这附近有座供奉铁拳教团的神庙。\n我曾属于那个教团，可近来他们挖出了一块强大的邪恶水晶。\n他们希望把水晶当谈判筹码，以求被羊鸣教神庙接纳。\n我不愿看到水晶落入神拳庙——必须毁掉它。\n请潜入神庙，毁掉水晶。")
    SetQBit(QBit(1158)) -- Destroy the crystal in the Temple of the Fist and return to Winston Schezar in Bootleg Bay. - NPC
    evt.SetNPCTopic(1075, 0, 1629) -- Winston Schezar topic 0: Quest
end)

RegisterGlobalEvent(1629, nil, function()
    if not IsQBitSet(QBit(1045)) then -- 21 T2, Given when evil crystal is destroyed
        evt.SetMessage("你们必须赶在巴得到它之前毁掉水晶。\n我不确定还剩多少时间，所以分秒必争。")
        return
    end
    evt.SetMessage("干得好！\n我很高兴你们及时赶到。\n我不愿去想巴会怎么处置那块水晶。\n你们为整个恩洛斯立了大功。")
    ClearQBit(QBit(1158)) -- Destroy the crystal in the Temple of the Fist and return to Winston Schezar in Bootleg Bay. - NPC
    AddValue(Gold, 3000)
    AddValue(131307, 2)
    evt.ForPlayer(Players.All)
    SetAward(Award(87)) -- Destroyed the Wicked Crystal
    AddValue(Experience, 10000)
    evt.SetNPCTopic(1075, 0, 0) -- Winston Schezar topic 0 cleared
    evt.MoveNPC(1075, 0) -- Winston Schezar -> removed
end)

RegisterGlobalEvent(1630, nil, function()
    evt.SetMessage("我丈夫伊曼纽尔几周前跟几个朋友去了星岛，想找点宝藏。\n此后我再没见过他，我很担心。\n我不敢去那岛；传闻那儿是美杜莎的家！\n你们若能找到他、送他回家，我将非常感激。")
    SetQBit(QBit(1160)) -- Rescue Emmanuel from the Temple of the Snake near Blackshire and return him to Joanne Cravitz in Blackshire. - NPC
    evt.SetNPCTopic(903, 0, 1631) -- Joanne Cravitz topic 0: Quest
end)

RegisterGlobalEvent(1631, nil, function()
    if not IsQBitSet(QBit(1702)) then -- Replacement for NPCs �108 ver. 6
        evt.SetMessage("没找到？\n你们没找到他，他一定身处极大危险。\n你们若真找到他，请把他带回这儿。\n我会等着他。")
        return
    end
    evt.SetMessage("哦，谢谢你们把伊曼纽尔带回到我身边！\n这世上没有什么比他对我更重要！\n请收下这个当报酬。\n我知道不多，可你们把他带回来给我，当之无愧。")
    ClearQBit(QBit(1702)) -- Replacement for NPCs �108 ver. 6
    ClearQBit(QBit(1160)) -- Rescue Emmanuel from the Temple of the Snake near Blackshire and return him to Joanne Cravitz in Blackshire. - NPC
    AddValue(Gold, 500)
    evt.ForPlayer(Players.All)
    SetAward(Award(88)) -- Rescued Emmanuel
    AddValue(Experience, 20000)
    evt.MoveNPC(893, 1354) -- Emmanuel Cravitz -> House
    evt.SetNPCTopic(893, 0, 0) -- Emmanuel Cravitz topic 0 cleared
    evt.SetNPCTopic(903, 0, 0) -- Joanne Cravitz topic 0 cleared
end)

RegisterGlobalEvent(1632, nil, function()
    evt.SetMessage("谢谢你们把我恢复原样。我很想留下来聊聊，可我真的该离开这儿了。")
end)

RegisterGlobalEvent(1633, nil, function()
    evt.SetMessage("谢谢你们把我恢复原样。我很想留下来聊聊，可我真的该离开这儿了。")
end)

RegisterGlobalEvent(1634, nil, function()
    evt.SetMessage("你们能帮我离开这儿吗？\n我得回布莱克郡找我妻子。")
    SetQBit(QBit(1702)) -- Replacement for NPCs �108 ver. 6
end)

RegisterGlobalEvent(1635, nil, function()
    evt.SetMessage("我一位探险家朋友近来在旅途中挖出一件强大宝物，叫莫德雷德。\n他想卖给我，把货发到这儿让我决定要不要。\n不幸的是，劫掠者袭击了它所在的商队，偷走了宝物。\n有人最后看见他们朝泰珀城堡以西去了；我敢说他们在那儿有据点。\n你们若替我把莫德雷德带回来，我就从我付朋友的钱里分一份给你们。")
    SetQBit(QBit(1161)) -- Find the lost artifact in the Dragoons' Keep near Castle Temper and return it to Zoltan Phelps in Free Haven. - NPC
    evt.SetNPCTopic(861, 0, 1636) -- Zoltan Phelps topic 0: Quest
end)

RegisterGlobalEvent(1636, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2020) then -- Mordred
        evt.SetMessage("又见面了。\n还没人找到莫德雷德，所以我们的交易仍然有效。\n你们若把它带回来，我会从售价里分一部分给你们。")
        return
    end
    evt.SetMessage("这么说，这就是传说中的莫德雷德，是吧？\n有意思，我原本以为会更了不起。\n其实我不想要它。\n不如你们留着它，我去跟我朋友算账。")
    SetAward(Award(89)) -- Found Zoltan's Artifact
    AddValue(Experience, 10000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 30000)
    AddValue(327915, 5)
    ClearQBit(QBit(1161)) -- Find the lost artifact in the Dragoons' Keep near Castle Temper and return it to Zoltan Phelps in Free Haven. - NPC
    evt.SetNPCTopic(861, 0, 0) -- Zoltan Phelps topic 0 cleared
    evt.MoveNPC(861, 0) -- Zoltan Phelps -> removed
end)

RegisterGlobalEvent(1637, nil, function()
    evt.SetMessage("暗影行会的成员近来南下，一直试图把手伸到这一带商人头上。\n我拒绝他们进城，他们就绑架了老治疗师莎丽·卡内基——镇民都爱戴她——想借此‘说服’我允许他们在这儿活动。\n我不敢相信他们的勒索竟南进到这么远，我原以为这下面安全。\n请救回莎丽——我可以出点钱当报酬，镇民们也一定会感激她回来。")
    SetQBit(QBit(1162)) -- Rescue Sharry from the Shadow Guild Hideout and return with her to Frank Fairchild in New Sorpigal. - NPC
    evt.SetNPCTopic(788, 0, 1638) -- Frank Fairchild topic 0: Quest
end)

RegisterGlobalEvent(1638, nil, function()
    if not IsQBitSet(QBit(1703)) then -- Replacement for NPCs �193 ver. 6
        evt.SetMessage("你们找到莎丽了吗？\n没有？\n我敢说暗影行会藏在哪儿，她就在哪儿。\n找到他们，就能找到她。")
        return
    end
    evt.SetMessage("非常感谢你们救了莎丽！\n我无法形容这对新索匹格和我自己有多重要。\n我们永远感激你们。")
    ClearQBit(QBit(1703)) -- Replacement for NPCs �193 ver. 6
    ClearQBit(QBit(1162)) -- Rescue Sharry from the Shadow Guild Hideout and return with her to Frank Fairchild in New Sorpigal. - NPC
    AddValue(Gold, 2000)
    evt.ForPlayer(Players.All)
    SetAward(Award(90)) -- Rescued Sharry
    AddValue(Experience, 10000)
    evt.SetNPCTopic(788, 0, 0) -- Frank Fairchild topic 0 cleared
end)

RegisterGlobalEvent(1639, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2124) then -- Orders from the Shadow Guild
        evt.SetMessage("我受够暗影行会了，可我没有他们活动的确凿证据。\n我真希望手里有点东西能拿给安东尼·斯通，证明暗影行会在这下面不干好事。")
        return
    end
    evt.SetMessage("有意思。\n龙骑兵是暗影行会雇的。\n我敢说安东尼·斯通一定想听听这个。\n下次见到他我会呈上这封信。谢谢你们提供这个。\n有了他们恶行的证据，我相信他现在会对暗影行会采取行动了。")
    RemoveItem(2124) -- Orders from the Shadow Guild
    AddValue(Experience, 5000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    AddValue(131307, 2)
    evt.SetNPCTopic(788, 1, 0) -- Frank Fairchild topic 1 cleared
end)

RegisterGlobalEvent(1640, nil, function()
    evt.SetMessage("谢谢你们把我从这些可怕暴徒手里救出来！\n我现在想回新索匹格的家了。")
    SetQBit(QBit(1703)) -- Replacement for NPCs �193 ver. 6
end)

RegisterGlobalEvent(1641, nil, function()
    evt.SetMessage("哎呀，你们能帮帮我吗？\n我女儿安吉拉失踪了！\n我想她可能走进了镇附近那座废弃神庙，若真如此，她可能身处极大危险——谁知道那被诅咒的地方潜伏着什么可怕东西！\n请找到她，把她带回到我身边。")
    SetQBit(QBit(1163)) -- Rescue Angela from the Abandoned Temple and return her to Violet Dawson in New Sorpigal. - NPC
    evt.SetNPCTopic(939, 0, 1642) -- Violet Dawson topic 0: Quest
end)

RegisterGlobalEvent(1642, nil, function()
    if not IsQBitSet(QBit(1704)) then -- Replacement for NPCs �195 ver. 6
        evt.SetMessage("你们没找到可怜的安吉拉？\n一定是出了可怕的事！")
        return
    end
    evt.SetMessage("她还活着！\n非常感谢你们找到安吉拉！\n要不是见到她我太高兴，她可有得麻烦了。\n请收下这个，作为对你们所做一切的报酬。")
    evt.MoveNPC(980, 1316) -- Angela Dawson -> House
    ClearQBit(QBit(1704)) -- Replacement for NPCs �195 ver. 6
    ClearQBit(QBit(1163)) -- Rescue Angela from the Abandoned Temple and return her to Violet Dawson in New Sorpigal. - NPC
    AddValue(Gold, 500)
    AddValue(Food, 10)
    evt.ForPlayer(Players.All)
    SetAward(Award(91)) -- Rescued Angela
    AddValue(Experience, 1000)
    evt.SetNPCTopic(939, 0, 0) -- Violet Dawson topic 0 cleared
    evt.SetNPCTopic(980, 0, 0) -- Angela Dawson topic 0 cleared
end)

RegisterGlobalEvent(1643, nil, function()
    evt.SetMessage("我想我迷路了……<啜泣>……我想回家！")
    SetQBit(QBit(1704)) -- Replacement for NPCs �195 ver. 6
end)

RegisterGlobalEvent(1644, nil, function()
    evt.SetMessage("我的好朋友谢雷尔跟一群朋友去了布特雷格湾的群岛，去探索传闻在那儿的一座古庙。\n她的朋友们回来了，说她被岛上的食人族抓住，带到某座古庙里。\n我敢说他们没多少时间就会对她下毒手，救救她！")
    SetQBit(QBit(1164)) -- Rescue Sherell from the cannibals on the islands east of Free Haven and return with her to Carlo Tormini in Free Haven. - NPC
    evt.SetNPCTopic(985, 0, 1645) -- Carlo Tormini topic 0: Quest
end)

RegisterGlobalEvent(1645, nil, function()
    if not IsQBitSet(QBit(1705)) then -- Replacement for NPCs �155 ver. 6
        evt.SetMessage("哎呀！\n你们还没找到她？\n她一定已经被献祭、吃掉或怎样了。\n请尽量找到她，至少为她报仇。")
        return
    end
    evt.SetMessage("好极了！\n她竟然没死！\n谢谢你们跑这一趟。\n希望你们接受这份小小的谢意。")
    evt.MoveNPC(940, 1400) -- Sherell Ivanaveh -> House
    ClearQBit(QBit(1705)) -- Replacement for NPCs �155 ver. 6
    ClearQBit(QBit(1164)) -- Rescue Sherell from the cannibals on the islands east of Free Haven and return with her to Carlo Tormini in Free Haven. - NPC
    evt.SetNPCTopic(940, 0, 0) -- Sherell Ivanaveh topic 0 cleared
    AddValue(Gold, 1500)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 10000)
    SetAward(Award(92)) -- Rescued Sherell
    evt.SetNPCTopic(985, 0, 0) -- Carlo Tormini topic 0 cleared
end)

RegisterGlobalEvent(1646, nil, function()
    evt.SetMessage("你好！\n求求你，把我带出这座神庙吧。\n我不想死！")
    SetQBit(QBit(1705)) -- Replacement for NPCs �155 ver. 6
end)

RegisterGlobalEvent(1647, nil, function()
    evt.SetMessage("我们镇中了可怕的诅咒，不过大多数人不信。\n每逢满月，我们都会变成狼人。\n虽然我们谁都不是真邪恶，可我们真不知道自己变成狼人时会做出什么可怕的事。\n我们没法去找我们的领主艾克顿·斯宾德勒反映这个问题，因为他没意识到我们就是狼人。\n请想办法把我们变回正常！")
    SetQBit(QBit(1165)) -- Destroy the Werewolf's altar in the Lair of the Wolf and return to Maria Trepan in Blackshire. - NPC
    evt.SetNPCTopic(997, 0, 1648) -- Maria Trepan topic 0: Quest
end)

RegisterGlobalEvent(1648, nil, function()
    if not IsQBitSet(QBit(1041)) then -- 17 D17, given when wolf altar is destroyed.
        evt.SetMessage("我们就没有希望了吗？\n请答应我，你们会继续寻找逆转诅咒、把我们变回正常人的办法。")
        return
    end
    evt.SetMessage("谢谢！\n我们如今夜里能安睡，不必再担心自己会变成怪物做出什么丑恶行径！\n我们领主自己竟是狼人，真是场悲剧；我们会深深怀念他。\n请收下这个，感谢你们的帮助，也感谢你们信任我们。")
    ClearQBit(QBit(1165)) -- Destroy the Werewolf's altar in the Lair of the Wolf and return to Maria Trepan in Blackshire. - NPC
    AddValue(Gold, 4000)
    AddValue(327915, 5)
    evt.ForPlayer(Players.All)
    AddValue(Experience, 20000)
    SetAward(Award(94)) -- Killed the Werewolf Leader
    evt.SetNPCTopic(997, 0, 0) -- Maria Trepan topic 0 cleared
    evt.MoveNPC(997, 0) -- Maria Trepan -> removed
end)

RegisterGlobalEvent(1651, nil, function()
    evt.SetMessage("斯平德勒领主庄园遭到一群狼人袭击时，我是座上客——那些狼人是从山里挖地道进来的。\n我一路打回他们挖的地道，想逃出去。\n最终他们把我逼到角落，我就在这个地方被杀了。")
end)

RegisterGlobalEvent(1652, nil, function()
    evt.SetMessage("逃跑途中，我把纯净珍珠藏在了这些洞穴里。\n这颗珍珠既能保护你们不受狼人诅咒，珍珠一碰到狼之祭坛还会毁掉它。\n那应当能解救所有被这些狼人带来的诅咒折磨的人。\n珍珠在与这个洞穴相对的另一头。\n请帮我一个忙，把珍珠还给威尔伯·汉弗里。\n他是主管圣武士的领主，珍珠该归他。")
    SetQBit(QBit(1166)) -- NPC
    evt.SetNPCTopic(789, 2, 1655) -- Wilbur Humphrey topic 2: Pearl of Purity
end)

RegisterGlobalEvent(1653, nil, function()
    evt.SetMessage("狼人首领持有腐朽珍珠，正好与我的纯净珍珠相对。\n有了这颗珍珠，他才得以降下诅咒。\n我撤退时始终没能杀死他。\n知道他被打败，我就能安息了。")
    SetQBit(QBit(1167)) -- Find the Pearl of Putrescence in the Lair of the Wolf and bring it to the Ghost of Balthasar, also in the Lair of the Wolf. - NPC
    evt.SetNPCTopic(1080, 2, 1654) -- Ghost of Balthasar topic 2: Quest
end)

RegisterGlobalEvent(1654, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2078) then -- Pearl of Putrescence
        evt.SetMessage("狼人首领持有腐朽珍珠，正好与我的纯净珍珠相对。\n有了这颗珍珠，他才得以降下诅咒。\n我撤退时始终没能杀死他。\n知道他被打败，我就能安息了。")
        return
    end
    evt.SetMessage("谢谢你们打败狼人首领。\n我真希望自己当年足够强大，能阻止这一切发生。\n请接受我的谢意，让我的灵魂得以安息。\n我这就把珍珠带走，免得它再伤害恩洛斯人民。")
    RemoveItem(2078) -- Pearl of Putrescence
    AddValue(Experience, 5000)
    SetAward(Award(93)) -- Broke the Blackshire Curse
    evt.ForPlayer(Players.Current)
    ClearQBit(QBit(1167)) -- Find the Pearl of Putrescence in the Lair of the Wolf and bring it to the Ghost of Balthasar, also in the Lair of the Wolf. - NPC
    SetQBit(QBit(1059)) -- 35 D17 Brought back Black Pearl and Ghost will no longer show up.
    evt.SetNPCTopic(1080, 2, 0) -- Ghost of Balthasar topic 2 cleared
end)

RegisterGlobalEvent(1655, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2079) then -- Pearl of Purity
        evt.SetMessage("现存的几件圣武士宝物之一，就是纯净珍珠。\n我上次听说珍珠在巴尔萨煞手里。\n他当时在布莱克郡拜访斯平德勒领主，可几个月来我没听到他任何消息。")
        return
    end
    evt.SetMessage("这是什么？\n你们带着纯净珍珠？\n我还以为巴尔萨煞——哦，他死了，是吧？\n那我就替他保管了，遵他遗愿。\n我代他和我自己谢谢你们。")
    RemoveItem(2079) -- Pearl of Purity
    AddValue(Experience, 10000)
    evt.ForPlayer(Players.Current)
    ClearQBit(QBit(1166)) -- NPC
    evt.SetNPCTopic(789, 2, 0) -- Wilbur Humphrey topic 2 cleared
end)

RegisterGlobalEvent(1660, nil, function()
    evt.SetMessage("你们不是地精！\n你们走！\n我们占城堡，看管人类！\n你们别再杀我们！")
end)

RegisterGlobalEvent(1661, nil, function()
    evt.SetMessage("你们把地精赶出这座要塞，干得好。\n我们现在大致控制住局面了，不过永远感激你们的帮助。")
end)

RegisterGlobalEvent(1662, nil, function()
    evt.SetMessage("又见面了，我的学生们！\n恐怕我再没什么能教你们的了——从今往后，你们的经历会指引你们。\n关于毁掉甜水镇的恶魔，我知道的并不比你们多，可我知道你们该去问谁。\n自由天堂的神使会知道怎样把可怕的恶魔从恩洛斯清除。\n不幸的是，你们需要六位高等理事成员的批准，他们每人代表恩洛斯一位领主。\n你们必须不惜一切代价去自由天堂与神使交谈，把恶魔从恩洛斯清除。")
end)

RegisterGlobalEvent(1664, nil, function()
    evt.SetMessage("我发现了逆转时间效应、让自己重获青春的办法。\n这需要一套复杂的魔法仪式，我已经设计好了。\n问题是我得把魔法小雕像放到各个台座上。虎雕像放甜水镇附近的台座，熊雕像放克里格斯，鹰雕像放飞龙沙漠，狼雕像放诅咒沼泽，龙雕像放布特雷格湾。\n我年事已高，路途太远走不动，与此同时我还得准备仪式本身。\n我一个人没办法做完这一切；我需要你们帮助。\n小雕像在我屋外的箱子里。\n把它们放上台座，再回来见我。\n就算仪式失败，我也会为你们的辛劳付钱。")
    SetQBit(QBit(1243)) -- Place the statuettes in Sweet Water, Kriegspire, Dragonsand, Mire of the Damned, and Bootleg Bay and return to Twillen in Blackshire. - NPC
    SetQBit(QBit(1244)) -- NPC
    evt.SetNPCTopic(872, 0, 1665) -- Twillen topic 0: Quest
end)

RegisterGlobalEvent(1665, nil, function()
    evt.SetMessage("整套仪式我差不多都准备好了——剩下的就是把雕像放上去。")
end)

RegisterGlobalEvent(1666, nil, function()
    evt.SetMessage("很久以前，我曾是宫廷法师。\n自从阿基巴德……搅乱了……一切之后，那一切都结束了。\n阿基巴德学了巫师的本领，还掌握了当今法师不教的法术知识，因此不再需要我效劳。\n自那以后，我就住在这小棚屋里，做自己的研究，也老了。")
end)

RegisterGlobalEvent(1667, nil, function()
    evt.SetMessage("干得好！\n多亏你们，我重获青春——你们有没有想过全职来帮我？\n我确实需要可靠的帮手。\n这些年我攒了各种小玩意儿，请随便从外面箱子里拿几样当报酬。\n我得在这儿收拾点东西，不过我想我会回铁拳城堡看看有没有宫廷法师的空缺。")
    ClearQBit(QBit(1243)) -- Place the statuettes in Sweet Water, Kriegspire, Dragonsand, Mire of the Damned, and Bootleg Bay and return to Twillen in Blackshire. - NPC
    SetQBit(QBit(1245)) -- NPC
    evt.ForPlayer(Players.All)
    AddValue(Experience, 75000)
    SetAward(Award(98)) -- Placed Twillen's statuettes
    evt.SetNPCTopic(826, 0, 0) -- Twillen topic 0 cleared
    evt.MoveNPC(826, 0) -- Twillen -> removed
end)

RegisterGlobalEvent(1668, nil, function()
    evt.SetMessage("克里格斯的生物彻底失控时，我是在那儿学习的法师之一。\n逃离城堡时，我把一件贵重物品落下了——一枚镶宝蛋。\n这枚蛋是家传宝物，我家族自沉寂时代起就传下来。\n我试过几次想取回它，可那儿的生物对我来说太强大。\n我很乐意出一大笔钱把我的蛋换回来。")
    SetQBit(QBit(1168)) -- Retrieve the jewelled egg from Castle Kriegspire and return it to Emil Lime in Kriegspire village. - NPC
    evt.SetNPCTopic(986, 0, 1669) -- Emil Lime topic 0: Quest
end)

RegisterGlobalEvent(1669, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2100) then -- Jeweled Egg
        evt.SetMessage("克里格斯是火山里的城堡。\n我们法师被迫把城堡周围的土地抬起来，想阻止生物冲出去吞没周边城镇。\n如今它们被封在里面，我的蛋也在那儿。")
        return
    end
    evt.SetMessage("谢谢你们把这枚蛋还给我；它是我最珍贵的东西。")
    RemoveItem(2100) -- Jeweled Egg
    SetAward(Award(97)) -- Retrieved Emil's Egg
    AddValue(Experience, 50000)
    evt.ForPlayer(Players.Current)
    AddValue(327915, 5)
    AddValue(Gold, 5000)
    ClearQBit(QBit(1168)) -- Retrieve the jewelled egg from Castle Kriegspire and return it to Emil Lime in Kriegspire village. - NPC
    evt.SetNPCTopic(986, 0, 0) -- Emil Lime topic 0 cleared
    evt.MoveNPC(986, 0) -- Emil Lime -> removed
end)

RegisterGlobalEvent(1670, nil, function()
    evt.SetMessage("我是火焰之主，不死的地灵。\n我的力量取自地下。\n我使用的通道被北方几道施了强大魔法的门封住了。\n我需要你们解开门上的防护，好让我再次苏醒。\n尽管门上附魔强大，琥珀能打破门上的防护。")
    SetQBit(QBit(1169)) -- Unward the doors in the Hall of the Fire Lord and return to the Lord of Fire, also in the Hall of the Fire Lord. - NPC
    evt.SetNPCTopic(1083, 0, 1673) -- Lord of Fire topic 0: Quest
end)

RegisterGlobalEvent(1671, nil, function()
    evt.SetMessage("你们若在洞穴里迷路，可以找我的仆人们帮忙。\n你们若有一块琥珀，他们会以为你们受我看护，跟他们说话就会把你们传送回我这儿。\n你们若没有琥珀，他们会抽取你们一部分生命力当传送回这儿的报酬。\n别担心，他们很少杀人。")
end)

RegisterGlobalEvent(1672, nil, function()
    evt.SetMessage("自从一种奇怪生物来此居住，门就被加了防护。\n我在恩洛斯这么久见过许多种生物，却不熟悉这种。\n我不知道它为何选这儿安家，也不知为何只有一只，可它给我添了麻烦，我想看到它被消灭。")
end)

RegisterGlobalEvent(1673, nil, function()
    if not IsQBitSet(QBit(1095)) then -- Walt
        evt.SetMessage("我虽有耐心，可还是想看到我赖以维生的通道重新打开。\n请别失手。")
        return
    end
    evt.SetMessage("谢谢你们的帮助。\n你们把我维生之源还给我，我感激不尽。\n我得趁现在能恢复了，把仅剩的一点力量蓄满。")
    if IsQBitSet(QBit(1383)) then return end -- NPC
    ClearQBit(QBit(1169)) -- Unward the doors in the Hall of the Fire Lord and return to the Lord of Fire, also in the Hall of the Fire Lord. - NPC
    SetQBit(QBit(1383)) -- NPC
    evt.ForPlayer(Players.All)
    SetAward(Award(99)) -- Aided the Lord of Fire
    AddValue(Experience, 10000)
    evt.SetNPCTopic(1083, 2, 0) -- Lord of Fire topic 2 cleared
end)

RegisterGlobalEvent(1675, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2068) then -- Ankh
        evt.SetMessage("近来，银兄弟会一直在扰乱我的生意和商队。\n我不清楚约翰爵士为何觉得有必要这么做，可我希望这停下来。\n你们若能说服他别来烦我，我敢说能从替你们省下的钱里分一份给你们。")
        return
    end
    evt.SetMessage("这么说，约翰爵士被谋杀，银盔是被羊鸣教神庙收买的？\n这就解释了很多事。\n你们把这事带给我，干得好，不过你们得去安东尼·斯通那儿领赏。")
    RemoveItem(2068) -- Ankh
    AddValue(Experience, 10000)
    evt.ForPlayer(Players.Current)
    evt.SetNPCTopic(801, 2, 1677) -- Anthony Stone topic 2: Ankh
    evt.SetNPCTopic(799, 2, 0) -- Loretta Fleise topic 2 cleared
end)

RegisterGlobalEvent(1676, nil, function()
    evt.ForPlayer(Players.All)
    if not HasItem(2068) then -- Ankh
        evt.SetMessage("银兄弟会开始更直接地袭击我那些合法的地下生意伙伴。\n你们若能找约翰爵士谈谈，弄清他为何觉得有必要采取这些行动，我会非常感激。")
        return
    end
    evt.SetMessage("我早该知道这背后有巴，他们似乎什么事都有份。\n谢谢你们把这事带给我。\n这解答了我对银兄弟会的疑问。")
    RemoveItem(2068) -- Ankh
    AddValue(Experience, 10000)
    evt.ForPlayer(Players.Current)
    AddValue(Gold, 5000)
    evt.SetNPCTopic(801, 2, 0) -- Anthony Stone topic 2 cleared
    evt.SetNPCTopic(799, 2, 0) -- Loretta Fleise topic 2 cleared
end)

RegisterGlobalEvent(1677, nil, function()
    evt.SetMessage("这么说，腐化银盔、谋杀约翰·席尔瓦爵士的幕后黑手是巴？\n约翰爵士真惨，愿他灵魂安息。\n<眨眼>洛雷塔叫你们来找我领赏？\n贪财的女巫。\n来，你们的效劳不能没有报酬。")
    AddValue(Gold, 5000)
    evt.SetNPCTopic(801, 2, 0) -- Anthony Stone topic 2 cleared
end)

RegisterGlobalEvent(1678, nil, function()
    evt.SetMessage("<劳里达·弗丽斯以传心术联系你们>欢迎来到太阳仪式。\n站在生命之圈中，面朝北方，身前不投下影子。\n默思这一真理：\n‘金钱就是一切。\n我没有比金钱更真的朋友……’<咧嘴笑>开玩笑的。\n现在，闭上眼，当你们站在世界与时间的中心，只为这一个崇高时刻冥想……<长长的静默停顿>\n睁开眼。\n我特此把所有德鲁伊晋升为高级德鲁伊，把所有非德鲁伊封为荣誉德鲁伊。<洛雷塔渐渐消失>")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 12) then
            SetValue(ClassId, 13)
            SetQBit(QBit(1651)) -- Received Promotion to Great Druid
        else
            SetQBit(QBit(1652)) -- Received Promotion to Honorary Great Druid
        end
    end
    AddValue(131307, 2)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(1142)) -- Visit the Altar of the Sun in the circle of stones north of Silver Cove on an equinox or solstice (HINT: March 20th is an equinox). - NPC
    SetQBit(QBit(1197)) -- NPC
    AddValue(Experience, 15000)
    evt.SetNPCTopic(1090, 0, 0) -- Loretta Fleise topic 0 cleared
    evt.SetNPCTopic(799, 1, 1397) -- Loretta Fleise topic 1: Arch Druids
end)

RegisterGlobalEvent(1679, nil, function()
    evt.SetMessage("<劳里达·弗丽斯以传心术联系你们>欢迎来到月亮仪式。\n站在月亮祭坛前面朝南方。\n闭上眼，默思四季之环与生命之轮。\n<长长的静默停顿>\n睁开眼吧，我的朋友们。\n我特此把所有高级德鲁伊晋升为大德鲁伊，把所有荣誉高级德鲁伊封为荣誉大德鲁伊。\n<洛雷塔渐渐消失>")
    for _, player in ipairs(PartyMembers()) do
        evt.ForPlayer(player)
        if IsAtLeast(ClassId, 13) then
            SetValue(ClassId, 15)
            SetQBit(QBit(1653)) -- Received Promotion to Arch Druid
        else
            SetQBit(QBit(1654)) -- Received Promotion to Honorary Arch Druid
        end
    end
    AddValue(327915, 5)
    evt.ForPlayer(Players.All)
    ClearQBit(QBit(1143)) -- Visit the Altar of the Moon in the Temple of the Moon at midnight of a full moon. - NPC
    SetQBit(QBit(1198)) -- NPC
    AddValue(Experience, 40000)
    evt.SetNPCTopic(1091, 0, 0) -- Loretta Fleise topic 0 cleared
    evt.SetNPCTopic(799, 1, 1399) -- Loretta Fleise topic 1: Arch Druids
end)

RegisterGlobalEvent(1688, nil, function()
    evt.ForPlayer(Players.All)
    if not HasAward(Award(59)) then -- Destroyed the Devil's Post
        evt.SetMessage("我只能就泰珀领主明确指示我的议题投票。\n赢得他的认可，凭他的推荐，我会投你们赞成票。")
        return
    end
    evt.SetMessage("奥斯里克已指示我为你们的事业投票。\n我以他的名义全力支持你们。")
end)

RegisterGlobalEvent(1689, nil, function()
    evt.ForPlayer(Players.All)
    if not HasAward(Award(61)) then -- Fixed the Stable Prices
        evt.SetMessage("弗莱斯女士对你们的问题根本不在乎，因此我连考虑你们的请求都不会。")
        return
    end
    evt.SetMessage("我以洛雷塔的名义投你们票，允许你们拜访神使。")
end)

RegisterGlobalEvent(1690, nil, function()
    evt.ForPlayer(Players.All)
    if not HasAward(Award(60)) then -- Captured the Prince of Thieves
        evt.SetMessage("斯通领主没有授权我代你们投票。\n这件事你们得去找他谈。")
        return
    end
    evt.SetMessage("安东尼支持你们拜访神使的请求，我代他投你们一票。")
end)

RegisterGlobalEvent(1691, nil, function()
    evt.ForPlayer(Players.All)
    if not HasAward(Award(62)) then -- Ended Winter
        evt.SetMessage("与斯特罗姆加领主无关的事，我不能投票。\n在得到他支持之前，我不能投你们。")
        return
    end
    evt.SetMessage("我投你们票，允许你们拜访神使——这是埃里克·冯·斯壮姆嘉德亲自指示的。")
end)

RegisterGlobalEvent(1692, nil, function()
    evt.ForPlayer(Players.All)
    if not HasAward(Award(58)) then -- Retrieved the Hourglass of Time
        evt.SetMessage("在我收到牛顿领主对你们请求的肯定答复之前，我不能给你们支持。")
        return
    end
    evt.SetMessage("阿尔伯特已准许我支持你们拜访神使的请求。")
end)

RegisterGlobalEvent(1693, nil, function()
    evt.ForPlayer(Players.All)
    if HasItem(2122) then -- Letter from Zenofex
        evt.MoveNPC(1089, 0) -- Slicker Silvertongue -> removed
        RemoveItem(2122) -- Letter from Zenofex
        evt.SetMessage("别以为你们赢了！\n铁拳很快就会松手，我会成为你们的国王！\n你们可以放心，我不会忘记你们……")
        AddValue(655595, 10)
        SetQBit(QBit(1192)) -- NPC
        evt.ForPlayer(Players.All)
        SetAward(Award(63)) -- Exposed the Traitor on the High Council
        ClearQBit(QBit(1214)) -- Quest item bits for seer
        ClearQBit(QBit(1225)) -- Bring the the letter detailing Silvertongue's treason to the High Council in Free Haven. - NPC
        if IsQBitSet(QBit(1224)) then -- Find a cure for Slicker Silvertongue in the Superior Temple of Baa east of Castle Kriegspire and return to Wilbur Humphrey with the good news. - Wilbur Humphrey
            ClearQBit(QBit(1224)) -- Find a cure for Slicker Silvertongue in the Superior Temple of Baa east of Castle Kriegspire and return to Wilbur Humphrey with the good news. - Wilbur Humphrey
        end
        evt.SetNPCTopic(789, 0, 1416) -- Wilbur Humphrey topic 0: Service to the Crown
        if not HasAward(Award(57)) then return end -- Retrieved Lord Kilburn's Shield
        if not HasAward(Award(58)) then return end -- Retrieved the Hourglass of Time
        if not HasAward(Award(59)) then return end -- Destroyed the Devil's Post
        if not HasAward(Award(60)) then return end -- Captured the Prince of Thieves
        if not HasAward(Award(61)) then return end -- Fixed the Stable Prices
        if HasAward(Award(62)) then -- Ended Winter
            SetQBit(QBit(1191)) -- NPC
        end
        return
    elseif HasAward(Award(57)) then -- Retrieved Lord Kilburn's Shield
        evt.SetMessage("只要我还是理事会成员，就不会允许你们拜访神使。\n我不信你们的诚意，不会批准你们的请求。")
        evt.SetNPCTopic(789, 0, 1414) -- Wilbur Humphrey topic 0: Silvertongue's Refusal
    else
        evt.SetMessage("你们还没充分证明对我主公汉弗莱领主的忠诚，我不能投你们票。")
        return
    end
end)

RegisterGlobalEvent(1711, nil, function()
    evt.SetMessage("羊鸣教的追随者和一伙扒手从北边岛屿不断袭扰浓雾岛。\n他们经岛西北边一座传送器来到浓雾岛。\n我会激活传送器，好让你们能到他们那些岛上去，把他们清除。\n我敢说他们偷的东西都在那些岛上，你们可以从他们的传送器回来。")
    SetQBit(QBit(1325)) -- NPC
    evt.SetNPCTopic(950, 0, 0) -- Kathleen Mester topic 0 cleared
end)

RegisterGlobalEvent(1722, nil, function()
    evt.StatusText("光明之路")
end)

RegisterGlobalEvent(1723, nil, function()
    evt.StatusText("黑暗之路")
    AddValue(BaseMight, 1)
    SetAutonote(480) -- Red liquid grants Might.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1724, nil, function()
    evt.StatusText("你确定要改变自己的道路吗？黑暗系法术将从你的法术书中消失，黑暗魔法也将从你的脑海中抹去。（是/否）")
    AddValue(BaseAccuracy, 1)
    SetAutonote(484) -- Yellow liquid grants Accuracy.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1725, nil, function()
    evt.StatusText("你确定要改变自己的道路吗？光明系法术将从你的法术书中消失，光明魔法也将从你的脑海中抹去。（是/否）")
    AddValue(BasePersonality, 1)
    SetAutonote(482) -- Blue liquid grants Personality.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1726, nil, function()
    evt.StatusText("回头走向光明永不嫌晚，孩子。选择光明的一方吧。")
    AddValue(BaseIntellect, 1)
    SetAutonote(481) -- Orange liquid grants Intellect.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1727, nil, function()
    evt.StatusText("黑暗在等待，它的耐心永无止境。选择黑暗的一方吧。")
    AddValue(BaseEndurance, 1)
    SetAutonote(483) -- Green liquid grants Endurance.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1728, nil, function()
    evt.StatusText("yes")
    AddValue(BaseSpeed, 1)
    SetAutonote(485) -- Purple liquid grants Speed.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1729, nil, function()
    evt.StatusText("要么你已经选好了自己的道路，要么你还没有准备好。")
    AddValue(BaseLuck, 1)
    SetAutonote(486) -- White liquid grants Luck.
    evt.ChangeEvent(1722)
end)

RegisterGlobalEvent(1730, nil, function()
    evt.StatusText("大锅是空的")
end)

RegisterGlobalEvent(1731, nil, function()
    evt.StatusText("火焰抗性+1（永久）。")
    AddValue(FireResistance, 1)
    SetAutonote(487) -- Steaming liquid grants Fire Resistance.
    evt.ChangeEvent(1730)
end)

RegisterGlobalEvent(1732, nil, function()
    evt.StatusText("冷冻抗性+1（永久）。")
    AddValue(WaterResistance, 1)
    SetAutonote(488) -- Frosty liquid grants Cold Resistance.
    evt.ChangeEvent(1730)
end)

RegisterGlobalEvent(1733, nil, function()
    evt.StatusText("电击抗性+1（永久）。")
    AddValue(AirResistance, 1)
    SetAutonote(489) -- Shocking liquid grants Electricity Resistance.
    evt.ChangeEvent(1730)
end)

RegisterGlobalEvent(1734, nil, function()
    evt.StatusText("毒系抗性+1（永久）。")
    AddValue(EarthResistance, 1)
    SetAutonote(490) -- Noxious liquid grants Poison Resistance.
    evt.ChangeEvent(1730)
end)

RegisterGlobalEvent(1735, nil, function()
    evt.StatusText("魔法抗性+1（永久）。")
    AddValue(FireResistance, 1)
    SetAutonote(491) -- Magical liquid grants Magic Resistance.
    evt.ChangeEvent(1730)
end)

RegisterGlobalEvent(1736, nil, function()
    evt.StatusText("炊锅是空的")
end)

RegisterGlobalEvent(1737, nil, function()
    AddValue(Food, 3)
    evt.ChangeEvent(1736)
end)

RegisterGlobalEvent(1738, nil, function()
    evt.GiveItem(1, ItemType.Ring_)
    AddValue(Food, 3)
    evt.ChangeEvent(1736)
end)

RegisterGlobalEvent(1739, nil, function()
    evt.GiveItem(2, ItemType.Ring_)
    AddValue(Food, 3)
    evt.ChangeEvent(1736)
end)

RegisterGlobalEvent(1740, nil, function()
    evt.GiveItem(3, ItemType.Ring_)
    AddValue(Food, 3)
    evt.ChangeEvent(1736)
end)

RegisterGlobalEvent(1741, nil, function()
    evt.StatusText("空袋子")
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1742, nil, function()
    AddValue(Food, 2)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1743, nil, function()
    evt.StatusText("空袋子")
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1744, nil, function()
    evt.GiveItem(1, 0)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1745, nil, function()
    evt.GiveItem(2, 0)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1746, nil, function()
    evt.GiveItem(3, 0)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1747, nil, function()
    AddValue(Gold, 50)
    AddValue(Gold, 200)
    evt.ChangeEvent(0)
end)

RegisterGlobalEvent(1748, nil, function()
    local randomStep = PickRandomOption(1748, 1, {1, 5})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
            evt.StatusText("疾病！")
            return
        end
        evt.StatusText("这里什么都没有")
    elseif randomStep == 5 then
        evt.StatusText("这里什么都没有")
    end
end)

RegisterGlobalEvent(1749, nil, function()
    local randomStep = PickRandomOption(1749, 1, {1, 5, 9})
    if randomStep == 1 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedYellow, 0)
        end
        evt.GiveItem(1, 24)
    elseif randomStep == 5 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(DiseasedRed, 0)
        end
        evt.GiveItem(2, 24)
    elseif randomStep == 9 then
        if not IsAtLeast(DisarmTrapSkill, 1) then
            SetValue(Unconscious, 0)
        end
        evt.GiveItem(3, 24)
    end
    evt.ChangeEvent(1748)
end)

RegisterGlobalEvent(1750, nil, function()
    evt.StatusText("这里什么都没有")
end)

RegisterGlobalEvent(1751, nil, function()
    if not IsAtLeast(DisarmTrapSkill, 5) then
        SetValue(Afraid, 0)
        evt.StatusText("搜索失败！")
        return
    end
    evt.GiveItem(1, ItemType.Scroll_)
    evt.ChangeEvent(1750)
end)

RegisterGlobalEvent(1752, nil, function()
    if not IsAtLeast(DisarmTrapSkill, 6) then
        SetValue(Asleep, 0)
        evt.StatusText("搜索失败！")
        return
    end
    evt.GiveItem(2, ItemType.Scroll_)
    evt.ChangeEvent(1750)
end)

RegisterGlobalEvent(1753, nil, function()
    if not IsAtLeast(DisarmTrapSkill, 7) then
        SetValue(DiseasedGreen, 0)
        evt.StatusText("搜索失败！")
        return
    end
    evt.GiveItem(3, ItemType.Scroll_)
    evt.ChangeEvent(1750)
end)

RegisterGlobalEvent(1754, nil, function()
    if not IsAtLeast(DisarmTrapSkill, 8) then
        SetValue(Eradicated, 0)
        evt.StatusText("搜索失败！")
        return
    end
    evt.GiveItem(4, ItemType.Scroll_)
    evt.ChangeEvent(1750)
end)

RegisterGlobalEvent(1755, nil, function()
    evt.StatusText("空水桶")
end)

RegisterGlobalEvent(1756, nil, function()
    AddValue(InventoryItem(1762), 1762) -- Poppysnaps
    evt.ChangeEvent(1755)
end)

RegisterGlobalEvent(1757, nil, function()
    AddValue(InventoryItem(1763), 1763) -- Phirna Root
    evt.ChangeEvent(1755)
end)

RegisterGlobalEvent(1758, nil, function()
    AddValue(InventoryItem(1764), 1764) -- Widoweeps Berries
    evt.ChangeEvent(1755)
end)

RegisterGlobalEvent(1759, nil, function()
    evt.StatusText("无用的水晶")
end)

RegisterGlobalEvent(1760, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2056), 2056) -- Diamond
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1761, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2057), 2057) -- Moonstone
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1762, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2058), 2058) -- Topaz
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1763, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2059), 2059) -- Ruby
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1764, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2060), 2060) -- Amethyst
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1765, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2061), 2061) -- Emerald
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1766, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2062), 2062) -- Purple Topaz
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1767, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2063), 2063) -- Sunstone
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1768, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2064), 2064) -- Emerald
        evt.ChangeEvent(0)
    end
end)

RegisterGlobalEvent(1769, nil, function()
    if IsAtLeast(DisarmTrapSkill, 10) then
        AddValue(InventoryItem(2065), 2065) -- Sapphire
        evt.ChangeEvent(0)
    end
end)

