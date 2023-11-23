--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\databundles\scripts.zip\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
STRINGS.NAMES.TANK = "铽安克"
STRINGS.SKIN_NAMES.tank_none = "铽安克"

STRINGS.CHARACTER_TITLES.tank = "铽安克"
STRINGS.CHARACTER_NAMES.tank = "铽安克"
STRINGS.CHARACTER_DESCRIPTIONS.tank = "*似乎在畏惧这什么？\n*疯子\n░▓░▓░░░▓░░░▓▓░░▓░▓▓  ▓░░░░▓▓░░  ░▓░▓░░░▓░░░▓▓░░▓░▓▓  ▓░░░░▓▓░░  ░▓░▓░░░▓░░░▓▓░░▓░▓▓  ▓░░░░▓▓░░  ░▓░▓░░░▓░░░▓▓░░▓░▓▓  ▓░░░░▓▓░░  \n*曾经的折磨……如今还能和你们一样吗？\n*被赋予生命的枷锁"
STRINGS.CHARACTER_QUOTES.tank = "\"我恨不得把自己忘掉!!\n但是...忘掉了又有什么意思呢？..哈哈....\""
STRINGS.CHARACTER_SURVIVABILITY.tank = "数据崩坏"

STRINGS.NAMES.TANK_USELESS_SCARF = "无用围巾"
STRINGS.NAMES.TANK_FIRE_AXE = "制 0-2型消防斧"
STRINGS.NAMES.TANK_FIRE_AXE_SPEED = "制 0-2型消防斧"
STRINGS.NAMES.TANK_LUXURY_SANDWICH = "豪华三明治套餐"
STRINGS.NAMES.TANK_FALLEN_DATA = "数据块"
STRINGS.NAMES.TANK_CHAIN_NOACTIVED = "一坨锁链"

STRINGS.TANK_FALLEN_DATA_PICKED_BY_OTHERS = "我抓不住这东西！"
STRINGS.TANK_FEAR_THE_HEART="蹦蹦跳跳的好恐怖"
STRINGS.TANK_USE_DATA = "你是想和我比寿命吗？"
STRINGS.TANK_CHANGE_AXE_TO_NORMAL = "放你一马"--"你想试试我全新的武器吗"
STRINGS.TANK_CHANGE_AXE_TO_SPEED = "快斧不长眼"--"你想试试我全新的武器吗"
STRINGS.TANK_FALLEN_DATA_USED_BY_OTHERS = "什么感觉都没有。"
STRINGS.TANK_REVIVER_FEAR = "够了...这次我不想再拿着了"
STRINGS.TANK_FIRST_GET_BLOOD = "温暖的血液！"
STRINGS.TANK_CAN_NOT_USE_MULTIPLAYER_PORTAL = "▓░ ▓▓▓ ░▓ ▓░▓░ ▓░▓░ ░ ░░░ ░░░ ▓░▓░▓▓"



return {
	ACTIONFAIL =
	{
        REPAIR =
        {
            WRONGPIECE = "啊..那不对吧?",
        },
        BUILD =
        {
            MOUNTED = "啧.没地放...",
            HASPET = "我不想再要更多的杂鱼了 拜托。",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "得让它睡着吧？这伙计脾气不小。",
			GENERIC = "可别这样糟蹋它的毛啊..",
			NOBITS = "这..不太...好吧..有点变态啊..",
            REFUSE = "only_used_by_woodie",
		},
		STORE =
		{
			GENERIC = "总不可能硬塞吧！？",
			NOTALLOWED = "放进去会不会太怪了点?",
			INUSE = "真不想等啊。",
            NOTMASTERCHEF = "我想我只适合做简单的。",
		},
        CONSTRUCT =
        {
            INUSE = "妈* ！别不要脸啊喂！",
            NOTALLOWED = "Excel提示验证限制不匹配..我刚刚说了什么...??",
            EMPTY = "我得需要一些材料。总不可能用土来建造吧？",
            MISMATCH = "靠。计划出问题了！",
        },
		RUMMAGE =
		{	
			GENERIC = "做这件事真的很白痴。",
			INUSE = "哈~一群废物..额.没说你们。",
            NOTMASTERCHEF = "该收手了....",
		},
		UNLOCK =
        {
        	WRONGKEY = "靠",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "喂 哪不对吧！？",
        	KLAUS = "抱歉宝贝~有点忙哦~~（坏笑",
			QUAGMIRE_WRONGKEY = "真想拆了这破玩意 非得要这破钥匙。",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "狗东西...谁锁的门啊？？！？",
		},
        COOK =
        {
            GENERIC = "我现在不想做饭真的 不想...",
            INUSE = "你和我想的一样？",
            TOOFAR = "太远了吧！",
        },
        
        --warly specific action
		DISMANTLE =
		{
			COOKING = "only_used_by_warly",
			INUSE = "only_used_by_warly",
			NOTEMPTY = "only_used_by_warly",
        },
        FISH_OCEAN =
		{
			TOODEEP = "这玩意确定能在这里掉到刺儿多的那个鬼东西吗？",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_wickerbottom",
            NOBIRDS = "only_used_by_wickerbottom",
        },

        GIVE =
        {
            GENERIC = "放在这里又有什么用 还不如不放。",
            DEAD = "留着吧 或许能帮上忙。",
            SLEEPING = "没意思。",
            BUSY = "等会我我马上在试试！",
            ABIGAILHEART = "这东西 吼~确实值得",
            GHOSTHEART = "我是怎么想到这破主意的...",
            NOTGEM = "咦.别黏上去吧..有够恶心的",
            WRONGGEM = "这*妈怎么搞？！谁能帮个忙啊？？！",
            NOTSTAFF = "这形状看的怪怪的.....",
            MUSHROOMFARM_NEEDSSHROOM = "这蘑菇有啥用?",
            MUSHROOMFARM_NEEDSLOG = "这长的磕巴的木头能干嘛啊？？",
            SLOTFULL = "已经吧一些东西放在哪里了 看不到就吧眼睛捐了吧。",
            FOODFULL = "这已经有美食了。",
            NOTDISH = "这家伙肯定看都不带看的白痴。",
            DUPLICATE = "这玩意还能忘掉？？？",
            NOTSCULPTABLE = "这啥跟啥玩意？我感觉不可能把那玩意变成雕像吧？",
            NOTATRIUMKEY = "额......................",
            CANTSHADOWREVIVE = "我想不会诈尸吧...",
            WRONGSHADOWFORM = "嗯啊~！！！！这玩意好烦啊！！！！！",
            NOMOON = "得看到月亮吧。",
			PIGKINGGAME_MESSY = "得收拾这些垃圾了",
			PIGKINGGAME_DANGER = "现在这样我喜欢~",
			PIGKINGGAME_TOOLATE = "晚喽~",
        },
        GIVETOPLAYER =
        {
            FULL = "你这都是什么破玩意？？",
            DEAD = "得留着吧？",
            SLEEPING = "...没意思。",
            BUSY = "▩▥▧ª▬▏▏╲〓▬",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "东西都要溢出来了喂！",
            DEAD = "emm..或许我不太需要？",
            SLEEPING = "不省人事 无心牵挂。",
            BUSY = "我待会再试试。",
        },
        WRITE =
        {
            GENERIC = "已经够好了我不想去摆弄这玩意了。",
            INUSE = "只有能容纳一个涂鸦者的空间 别在硬搞了。",
        },
        DRAW =
        {
            NOIMAGE = "我希望有个参照物在旁边 因为这样会好画一些。",
        },
        CHANGEIN =
        {
            GENERIC = "不想！换有够麻烦的。",
            BURNING = "完美！？",
            INUSE = "它一次只能进行一种转变好吧》",
        },
        ATTUNE =
        {
            NOHEALTH = "不够好...",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "拜托老子还没笨到想去惹它！这家伙有够疯的你自己看看",
            INUSE = "蛮希望你下来呢。",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "？",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "知道了就没必要浪费时间了吧。",
            CANTLEARN = "我不想学习那个。",

            --MapRecorder/MapExplorer
            WRONGWORLD = "这地图不能在这用 白痴~",
        },
        WRAPBUNDLE =
        {
            EMPTY = "有谁能帮我打包下剩菜吗~？",
        },
        PICKUP =
        {
			RESTRICTION = "啊~不够熟练我用不了。",
			INUSE = "我应该再等等。",
        },
        SLAUGHTER =
        {
            TOOFAR = "嘿！让它逃走了!!",
        },
        REPLATE =
        {
            MISMATCH = "它需要另一种CD？", 
            SAMEDISH = "只需要一个就行了。", 
        },
        SAIL =
        {
        	REPAIR = "已经够好了 不需要在去修理了。",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "应该在慢点。",
            BAD_TIMING1 = "妈的溅了一身水。",
            BAD_TIMING2 = "草",
        },
        LOWER_SAIL_FAIL =
        {
            "艹 日 十",
            "没办法减速啊！",
            "失败是成功它老母。",
        },
        BATHBOMB =
        {
            GLASSED = "wo 都透过去了。",
            ALREADY_BOMBED = "别再放了 你难道要煮鸡蛋吗？",
        },
	},
	ACTIONFAIL_GENERIC = "不想这么做 白痴。",
	ANNOUNCE_BOAT_LEAK = "这水怎么越来越多了啊！？？！？！！",
	ANNOUNCE_BOAT_SINK = "你妈！！ 船要裂开了！",
	ANNOUNCE_DIG_DISEASE_WARNING = "现在看起来好多了。",
	ANNOUNCE_PICK_DISEASE_WARNING = "嗯哼~就是这个味吗？",
	ANNOUNCE_ADVENTUREFAIL = "额这次不太顺利啊...",
    ANNOUNCE_MOUNT_LOWHEALTH = "吼吼 鲜血流出来了哦~？",

	ANNOUNCE_BEES = "哦 草！",
	ANNOUNCE_BOOMERANG = "为啥每次听到这声音我的胃都好难受...",
	ANNOUNCE_CHARLIE = "妈的 又来！",
	ANNOUNCE_CHARLIE_ATTACK = "呜啊！ 妈的疼死了。",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific 
	ANNOUNCE_COLD = "额？",
	ANNOUNCE_HOT = "啊？",
	ANNOUNCE_CRAFTING_FAIL = "确实缺少一个关键成分",
	ANNOUNCE_DEERCLOPS = "蛤~？终于要来了吗？",
	ANNOUNCE_CAVEIN = "呃！哦哦嗷这是要地震了吗？！！",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"是不是..地震了？！",
		"喂！ 跑啊！！白痴！",
		"是不是...该跑了啊！",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "...",
        "啊...给你的贡品......伟大的蚁狮....蛤.",
        "哎..总算让它安静一会了",
	},
	ANNOUNCE_SACREDCHEST_YES = "应该值得",
	ANNOUNCE_SACREDCHEST_NO = "...有够挑剔的",
    ANNOUNCE_DUSK = "额 天黑了 该休息下了 ",
    

	ANNOUNCE_EAT =
	{
		GENERIC = "嗯~",
		PAINFUL = "额...我感觉头好晕",
		SPOILED = "凑合着吃吧..总比没有好...",
		STALE = "这看着还行...应该能吃",
		INVALID = "干嘛...你觉得我会吃这鬼玩意吗...?",
        YUCKY = "真会有白痴会去吃比顾龍面还要难吃的东西么？？",
        
        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "啊..呼..我这辈子....都...都不会在主动碰..这玩意...了",
        "就...就没人帮忙下吗...",
        "...我...我要死了...啊",
        "我...我怎么..怎么那么.闲啊...",
        "为了..科学..可笑啊....",
        "我不想在..弄这个东西..了...",
        "嗯...哼....！",
        "啊..哈..蛤？",
        "希望这东西不会让我.....无聊。",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"我.我是不是该走了？？",
		"啥玩意？？！",
		"很不安全啊。",
	},
    ANNOUNCE_RUINS_RESET = "哦~ 又回来了呢~~",
    ANNOUNCE_SNARED = "啊......我不吃别这样看着我。",
    ANNOUNCE_REPELLED = "额？",
	ANNOUNCE_ENTER_DARK = "虽然我习惯暗点的环境了...但是这已经完全看不见了啊。",
	ANNOUNCE_ENTER_LIGHT = "哦~好多了。",
	ANNOUNCE_FREEDOM = "自由咯~哈哈。",
	ANNOUNCE_HIGHRESEARCH = "emm哈不愧是我。",
	ANNOUNCE_HOUNDS = "嗯...那帮野犬又来找麻烦了。",
	ANNOUNCE_WORMS = "我感觉到了。",
	ANNOUNCE_HUNGRY = "唔..饿了。",
	ANNOUNCE_HUNT_BEAST_NEARBY = "嗯.我的直觉告诉我就在附近。",
	ANNOUNCE_HUNT_LOST_TRAIL = "啊...跟丢了",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "这种湿土留不下脚印。",
	ANNOUNCE_INV_FULL = "我不应该拿这么多东西。",
	ANNOUNCE_KNOCKEDOUT = "嗷呜! 我的头！！",
	ANNOUNCE_LOWRESEARCH = "完全没学到啥有用的。",
	ANNOUNCE_MOSQUITOS = "妈*！滚开！！",
    ANNOUNCE_NOWARDROBEONFIRE = "喂！！着火了！我还想穿下衣服呢！",
    ANNOUNCE_NODANGERGIFT = "额..我想把那些怪物解决了才能安全的拆我的礼物..",
    ANNOUNCE_NOMOUNTEDGIFT = "我得先从这头蠢牛身上下来。",
	ANNOUNCE_NODANGERSLEEP = "在这样睡下去这块就是我的墓碑了好吧...",
	ANNOUNCE_NODAYSLEEP = "大白天的光晃的我眼睛疼。",
	ANNOUNCE_NODAYSLEEP_CAVE = "咱没必要这么闲 更何况我还不困。",
	ANNOUNCE_NOHUNGERSLEEP = "我想吃点东西 这样根本睡不着。",
	ANNOUNCE_NOSLEEPONFIRE = "我没有那种强烈的困意。",
	ANNOUNCE_NODANGERSIESTA = "现在睡着太过危险了！",
	ANNOUNCE_NONIGHTSIESTA = "建议不要晚上睡 蛮冷的。",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "在这根本放松不了把",
	ANNOUNCE_NOHUNGERSIESTA = "太饿了！！！！",
	ANNOUNCE_NODANGERAFK = "Now's not the time to flee this fight!",
	ANNOUNCE_NO_TRAP = "哈哈！我就说嘛挺简单的~",
	ANNOUNCE_PECKED = "喂！喂喂！快停下！",
	ANNOUNCE_QUAKE = "这声音听起来不妙啊。",
	ANNOUNCE_RESEARCH = "活到老学到老。",
	ANNOUNCE_SHELTER = "啊..勉强..躲下吧..",
	ANNOUNCE_THORNS = "喔噢！",
	ANNOUNCE_BURNT = "靠！烫死我了！",
	ANNOUNCE_TORCH_OUT = "火灭了！！",
	ANNOUNCE_THURIBLE_OUT = "它消耗殆尽了。",
	ANNOUNCE_FAN_OUT = "我的风扇已随风消逝了..",
    ANNOUNCE_COMPASS_OUT = "指南针坏了...",
	ANNOUNCE_TRAP_WENT_OFF = "卧槽。",
	ANNOUNCE_UNIMPLEMENTED = "哎！哎哎！应该还准备好吧！",
	ANNOUNCE_WORMHOLE = "啊...双头虫？希望如此吧。",
	ANNOUNCE_TOWNPORTALTELEPORT = "我不确定那玩意科学不 而且我也不喜欢。",
	ANNOUNCE_CANFIX = "我应该能修好..吧？",
	ANNOUNCE_ACCOMPLISHMENT = "喔喔！很有成就感呢！",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "啊..那帮家伙能看到我就好了。",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "你还.饿..吗？",
	ANNOUNCE_TOOL_SLIP = "哎草！飞出去了！",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "wow这可怕的闪电。",
	ANNOUNCE_TOADESCAPING = "这死蛤蟆..啧可别把我当作空气了啊！！",
	ANNOUNCE_TOADESCAPED = "这死蛤蟆跑了..服了。",


	ANNOUNCE_DAMP = "请问....哪里有毛巾？我想擦一下身体。",
	ANNOUNCE_WET = "..希望能停下来吧",
	ANNOUNCE_WETTER = "......",
	ANNOUNCE_SOAKED = "啊..浑身湿透了。",

	ANNOUNCE_WASHED_ASHORE = "额..蛮幸运的 至少没死。",

    ANNOUNCE_DESPAWN = "看见光了！",
	ANNOUNCE_BECOMEGHOST = "汪呜唔呜呜！！",
	ANNOUNCE_GHOSTDRAIN = "我感觉.我要失控了..",
	ANNOUNCE_PETRIFED_TREES = "这树在尖叫吗？？蛮有意思的..",
	ANNOUNCE_KLAUS_ENRAGE = "妹油办法了！！跑啊！",
	ANNOUNCE_KLAUS_UNCHAINED = "它的链条松开了！",
	ANNOUNCE_KLAUS_CALLFORHELP = "这家伙在求饶吗~？",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "11",
		GLASS_LOW = "22",
		GLASS_REVEAL = "33",
		IDOL_MED = "44",
		IDOL_LOW = "55",
		IDOL_REVEAL = "66",
		SEED_MED = "77",
		SEED_LOW = "88",
		SEED_REVEAL = "99",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "喂喂！你看到了吗？！",
	ANNOUNCE_BRAVERY_POTION = "嗯哼~诡异的树",
	ANNOUNCE_MOONPOTION_FAILED = "我还没泡够呢..",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "来帮你了 宝贝~",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "完好如初。",
    ANNOUNCE_REVIVED_FROM_CORPSE = "额..啊..嗯...谢。",

    ANNOUNCE_FLARE_SEEN = "看样子..像是迷路了hh。",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "海.海怪！",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "就这点食材还不如直接拿去烤了吃...",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "烧太长时间了。",
    QUAGMIRE_ANNOUNCE_LOSE = "我有种不好的预感...嗯..",
    QUAGMIRE_ANNOUNCE_WIN = "该走了。",

    ANNOUNCE_ROYALTY =
    {
        "该如何称呼您~？",
        "出来散散心了吗 嗯哼？",
        "我的主！",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "全是电呢",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "干架！",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "我感觉安全多了。",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "生产力提高了。",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "干的像薇克巴顿的讲义。",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "电没了 但是还残存静电。",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "肌肉紧实的感觉很快就消失了。",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "虽然时间不长，但是我很喜欢~♥",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "拖延症又回来了...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "结束了。",
    
    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK = 
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
    },

	BATTLECRY =
	{
		GENERIC = "你想好怎么死了吗？嗯~？",
		PIG = "斯哈♥ 高级火腿~",
		PREY = "我想看看你的内脏..可以让我看看吗？",
		SPIDER = "你想被我的肉垫踩死吗？",
		SPIDER_WARRIOR = "死的好惨哦~",
		DEER = "去死吧 傻狍子！",
	},
	COMBAT_QUIT =
	{
		GENERIC = "它肯定 “尝到” 了我的厉害了~",
		PIG = "这次姑且..就放过它吧嗯嗯",
		PREY = "它的速度太快了！",
		SPIDER = "额...我都有点反胃了..",
		SPIDER_WARRIOR = "嘘~你这个讨厌的家伙！",
	},
	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "看样子...是这个大门把我搞到这里的吗？",
        MULTIPLAYER_PORTAL_MOONROCK = "呃呜？",
        MOONROCKIDOL = "我不想崇拜这b玩意",
        CONSTRUCTION_PLANS = "b玩意用品",

        ANTLION =
        {
            GENERIC = "我身上有它想要的东西呢。",
            VERYHAPPY = "看起来 这玩意和我的关系还不错。",
            UNHAPPY = "有点凶啊。",
        },
        ANTLIONTRINKET = "有人可能对此感兴趣。",
        SANDSPIKE = "*！我原本会被刺穿的！",
        SANDBLOCK = "真是坚持不懈呢~",
        GLASSSPIKE = "我还没有被刺穿时的记忆。",
        GLASSBLOCK = "送你份狗屎哈哈。",
        ABIGAIL_FLOWER =
        {
            GENERIC ="蛮漂亮的 是朵温柔的花。",
            LONG = "看到这玩意我有点..伤身啊..",
            MEDIUM = "wow 不错的东西。",
            SOON = "这花果然动了。",
            HAUNTED_POCKET = "我感觉我得把它放下。",
            HAUNTED_GROUND = "我可能没兴趣查明白这啥玩意。",
        },

        BALLOONS_EMPTY = "看起来像小丑货币。",
        BALLOON = "嗯 漂浮了",

        BERNIE_INACTIVE =
        {
            BROKEN = "它最终像一块镜子一样破碎。",
            GENERIC = "糊了~",
        },

        BERNIE_ACTIVE = "嗯~..你好 漂亮的熊小姐。",
        BERNIE_BIG = "呃.你还是别惹她了 除非你不建议变成烤猪。",

        BOOK_BIRDS = "嗯.饿了....喂别嘲笑好吗这书诱惑极大好吗！",
        BOOK_TENTACLES = "嘶.这书看不懂。",
        BOOK_GARDENING = "嗯..根本没有讲为何我的菜枯萎了。",
        BOOK_SLEEP = "很好 我都没看懂这到底说了什么。",
        BOOK_BRIMSTONE = "开头很无聊 但将近结尾就变好了。",

        PLAYER =
        {
            GENERIC = "你好啊，%s 嘛.你不必害怕我。",
            ATTACKER = "%s 看着很善变...",
            MURDERER = "躲着可不好玩啊！",
            REVIVER = "%s 鬼魂的朋友",
            GHOST = "你该让我怎么说啊...%s。",
            FIRESTARTER = "完美 %s。",
        },
        WOLFGANG =
        {
            GENERIC = "非常高兴见到你 %s!",
            ATTACKER = "我不知道你怎么想的 我倒是真很想打一架！！",
            MURDERER = "嘿白痴 你这样可是跑不掉的哦~",
            REVIVER = "%s嗯...美丽的巨型熊小姐",
            GHOST = "哎.都说过了不要去硬拉那家伙了。",
            FIRESTARTER = "你是没法打倒%s！",
        },
        WAXWELL =
        {
            GENERIC = "早啊%s!",
            ATTACKER = "你这家伙怎么突然和灰朗一样嘴糊上了？",
            MURDERER = "I'll show you Logic and Reason... those're my fists!",
            REVIVER = "%s is using his powers for good.",
            GHOST = "Don't look at me like that, %s! I'm working on it!",
            FIRESTARTER = "%s's just asking to get roasted.",
        },
        WX78 =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "I think we need to tweak your primary directive, %s...",
            MURDERER = "%s! You've violated the first law!",
            REVIVER = "I guess %s got that empathy module up and running.",
            GHOST = "I always thought %s could use a heart. Now I'm certain!",
            FIRESTARTER = "You look like you're gonna melt, %s. What happened?",
        },
        WILLOW =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "%s is holding that lighter pretty tightly...",
            MURDERER = "Murderer! Arsonist!",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "I bet you're just burning for a heart, %s.",
            FIRESTARTER = "Again?",
        },
        WENDY =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s doesn't have any sharp objects, does she?",
            MURDERER = "Murderer!",
            REVIVER = "%s treats ghosts like family.",
            GHOST = "I'm seeing double! I'd better concoct a heart for %s.",
            FIRESTARTER = "I know you set those flames, %s.",
        },
        WOODIE =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s has been a bit of a sap lately...",
            MURDERER = "Murderer! Bring me an axe and let's get in the swing of things!",
            REVIVER = "%s saved everyone's backbacon.",
            GHOST = "Does \"universal\" coverage include the void, %s?",
            BEAVER = "%s's gone on a wood chucking rampage!",
            BEAVERGHOST = "Will you bea-very mad if I don't revive you, %s?",
            MOOSE = "Gad-zooks, that's a moose!",
            MOOSEGHOST = "That moose'nt be very comfortable.",
            GOOSE = "Take a gander at that!",
            GOOSEGHOST = "Be more careful, you silly goose!",
            FIRESTARTER = "Don't burn yourself out, %s.",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "I think %s's planning to throw the book at me.",
            MURDERER = "Here comes my peer review!",
            REVIVER = "I have deep respect for %s's practical theorems.",
            GHOST = "This doesn't seem very scientific, does it, %s?",
            FIRESTARTER = "I'm sure you had a very clever reason for that fire.",
        },
        WES =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s is silent, but deadly...",
            MURDERER = "Mime this!",
            REVIVER = "%s thinks outside the invisible box.",
            GHOST = "How do you say \"I'll get a revival device\" in mime?",
            FIRESTARTER = "Wait, don't tell me. You lit a fire.",
        },
        WEBBER =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "I'm gonna roll up a papyrus newspaper, just in case.",
            MURDERER = "Murderer! I'll squash you, %s!",
            REVIVER = "%s is playing well with others.",
            GHOST = "%s is really buggin' me for a heart.",
            FIRESTARTER = "We need to have a group meeting about fire safety.",
        },
        WATHGRITHR =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "I'd like to avoid a punch from %s, if possible.",
            MURDERER = "%s's gone berserk!",
            REVIVER = "%s has full command of spirits.",
            GHOST = "Nice try. You're not escaping to Valhalla yet, %s.",
            FIRESTARTER = "%s is really heating things up today.",
        },
        WINONA =
        {
            GENERIC = "Good day to you, %s!",
            ATTACKER = "%s is a safety hazard.",
            MURDERER = "It ends here, %s!",
            REVIVER = "You're pretty handy to have around, %s.",
            GHOST = "Looks like someone threw a wrench into your plans.",
            FIRESTARTER = "Things are burning up at the factory.",
        },
        WORTOX =
        {
            GENERIC = "Greetings to you, %s!",
            ATTACKER = "I knew %s couldn't be trusted!",
            MURDERER = "Time to grab the imp by the horns!",
            REVIVER = "Thanks for lending a helping claw, %s.",
            GHOST = "I reject the reality of ghosts and imps.",
            FIRESTARTER = "%s is becoming a survival liability.",
        },
        WORMWOOD =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "%s seems pricklier than usual today.",
            MURDERER = "Prepare to get weed whacked, %s!",
            REVIVER = "%s never gives up on his friends.",
            GHOST = "You need some help, lil guy?",
            FIRESTARTER = "I thought you hated fire, %s.",
        },
        WARLY =
        {
            GENERIC = "Greetings, %s!",
            ATTACKER = "Well, this is a recipe for disaster.",
            MURDERER = "I hope you don't have any half-baked plans to murder me!",
            REVIVER = "Always rely on %s to cook up a plan.",
            GHOST = "Maybe he was cooking with ghost peppers.",
            FIRESTARTER = "He's gonna flambé the place right down!",
        },

        WURT =
        {
            GENERIC = "Good day, %s!",
            ATTACKER = "%s is looking especially monstrous today...",
            MURDERER = "You're just another murderous merm!",
            REVIVER = "Why thank you, %s!",
            GHOST = "%s is looking greener around the gills than usual.",
            FIRESTARTER = "Didn't anyone teach you not to play with fire?!",
        },

        MIGRATION_PORTAL =
        {
            GENERIC = "If I had any friends, this could take me to them.",
            OPEN = "If I step through, will I still be me?",
            FULL = "It seems to be popular over there.",
        },
        GLOMMER = 
        {
            GENERIC = "It's cute, in a gross kind of way.",
            SLEEPING = "Snug as a bug.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "The petals shimmer in the light.",
            DEAD = "The petals droop and shimmer in the light.",
        },
        GLOMMERWINGS = "These would look empirically amazing on a helmet!",
        GLOMMERFUEL = "This goop smells foul.",
        BELL = "Dingalingaling.",
        STATUEGLOMMER =
        {
            GENERIC = "I'm not sure what that's supposed to be.",
            EMPTY = "I broke it. For science.",
        },

        LAVA_POND_ROCK = "As gneiss a place as any.",

		WEBBERSKULL = "Poor little guy. He deserves a proper funeral.",
		WORMLIGHT = "Looks delicious.",
		WORMLIGHT_LESSER = "Kinda wrinkled.",
		WORM =
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "Just looks like a pile of dirt.",
		    WORM = "It's a worm!",
		},
        WORMLIGHT_PLANT = "Seems safe to me.",
		MOLE =
		{
			HELD = "Nowhere left to dig, my friend.",
			UNDERGROUND = "Something's under there, searching for minerals.",
			ABOVEGROUND = "I'd sure like to whack that mole... thing.",
		},
		MOLEHILL = "What a nice, homey hole in the ground!",
		MOLEHAT = "A wretched stench, but excellent visibility.",

		EEL = "This will make a delicious meal. ",
		EEL_COOKED = "Smells great!",
		UNAGI = "I hope this doesn't make anyone eel!",
		EYETURRET = "嗯..这大家伙一直看着我挺不舒服的。",
		EYETURRET_ITEM = "I think it's sleeping.",
		MINOTAURHORN = "Wow! I'm glad that didn't gore me!",
		MINOTAURCHEST = "It may contain a bigger something fantastic! Or horrible.",
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.",
		POND_ALGAE = "Some algae by a pond.",
		GREENSTAFF = "This will come in handy.",
		GIFT = "Is that for me?",
        GIFTWRAP = "That's a wrap!",
		POTTEDFERN = "一款洞穴里的小草。",
        SUCCULENT_POTTED = "盆栽里的多肉。",
		SUCCULENT_PLANT = "Aloe there.",
		SUCCULENT_PICKED = "I could eat that, but I'd rather not.",
		SENTRYWARD = "额...说起功能的话 还是别让我看见这个了。",
        TOWNPORTAL =
        {
			GENERIC = "它们正在等待着生命触摸。",
			ACTIVE = "我感觉我的身体正在分离。",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "A mini departiculator.",
			ACTIVE = "A more sane person would walk.",
		},
        WETPAPER = "I hope it dries off soon.",
        WETPOUCH = "This package is barely holding together.",
        MOONROCK_PIECES = "变得像是瓦罐一样脆了。",
        MOONBASE =
        {
            GENERIC = "There's a hole in the middle for something to go in.",
            BROKEN = "It's all smashed up.",
            STAFFED = "Now what?",
            WRONGSTAFF = "I have a distinct feeling this isn't right.",
            MOONSTAFF = "The stone lit it up somehow.",
        },
        MOONDIAL = 
        {
			GENERIC = "更加贴心的欣赏月亮。",
			NIGHT_NEW = "是新月",
			NIGHT_WAX = "开始变圆了。",
			NIGHT_FULL = "水池中的月亮把水给挤出来了。",
			NIGHT_WANE = "开始慢慢变小了。",
			CAVE = "已经看不见月亮了。",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
        },
		THULECITE = "I wonder where this is from?",
		ARMORRUINS = "It's oddly light.",
		ARMORSKELETON = "No bones about it.",
		SKELETONHAT = "这东西似乎对我没用呢...管它呢~。",
		RUINS_BAT = "It has quite a heft to it.",
		RUINSHAT = "How's my hair?",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.",
            WARN = "Getting pretty magical around here.",
            WAXING = "It's becoming more concentrated!",
            STEADY = "It seems to be staying steady.",
            WANING = "Feels like it's receding.",
            DAWN = "The nightmare is almost gone!",
            NOMAGIC = "There's no magic around here.",
		},
		BISHOP_NIGHTMARE = "It's falling apart!",
		ROOK_NIGHTMARE = "Terrifying!",
		KNIGHT_NIGHTMARE = "It's a knightmare!",
		MINOTAUR = "That thing doesn't look happy.",
		SPIDER_DROPPER = "Note to self: Don't look up.",
		NIGHTMARELIGHT = "I wonder what function this served.",
		NIGHTSTICK = "It's electric!",
		GREENGEM = "It's green and gemmy.",
		MULTITOOL_AXE_PICKAXE = "一举两用 不过我还是喜欢我的斧头。",
		ORANGESTAFF = "This beats walking.",
		YELLOWAMULET = "Warm to the touch.",
		GREENAMULET = "No base should be without one!",
		SLURPERPELT = "Doesn't look all that much different dead.",	

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look all that much different dead.",
		ARMORSLURPER = "A soggy, sustaining, succulent suit.",
		ORANGEAMULET = "Teleportation can be so useful.",
		YELLOWSTAFF = "A genius invention... a gem on a stick.",
		YELLOWGEM = "This gem is yellow.",
		ORANGEGEM = "It's an orange gem.",
        OPALSTAFF = "It's scientifically proven that gems look better on top of sticks.",
        OPALPRECIOUSGEM = "This gem seems special.",
        TELEBASE = 
		{
			VALID = "哈！ 好了！...所以这玩意该咋用？？",
			GEMS = "得需要更多的宝石。",
		},
		GEMSOCKET = 
		{
			VALID = "喔吼 看样子是对了。",
			GEMS = "听说这个东西需要放上某个宝石。",
		},
		STAFFLIGHT = "That seems really dangerous.",
        STAFFCOLDLIGHT = "Brr! Chilling.",

        ANCIENT_ALTAR = "嗯..这是一个建筑？",

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.",

        ANCIENT_STATUE = "It seems to throb out of tune with the world.",

        LICHEN = "Only a cyanobacteria could grow in this light.",
		CUTLICHEN = "Nutritious, but it won't last long.",

		CAVE_BANANA = "It's mushy.",
		CAVE_BANANA_COOKED = "Yum!",
		CAVE_BANANA_TREE = "It's dubiously photosynthetical.",
		ROCKY = "It has terrifying claws.",
		
		COMPASS =
		{
			GENERIC="Which way am I facing?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "嗯哼?我不希望这是我的牙齿耶。",
        ARMORSNURTLESHELL = "It sticks to your back when you wear it.",
        BAT = "Ack! That's terrifying!",
        BATBAT = "I bet I could fly if I held two of them.",
        BATWING = "I hate those things, even when they're dead.",
        BATWING_COOKED = "At least it's not coming back.",
        BATCAVE = "I don't want to wake them.",
        BEDROLL_FURRY = "It's so warm and comfy.",
        BUNNYMAN = "I am filled with an irresistible urge to do science.",
        FLOWER_CAVE = "这植物散发出来了奇妙的光。",
        GUANO = "Another flavor of poop.",
        LANTERN = "A more civilized light.",
        LIGHTBULB = "It's strangely tasty looking.",
        MANRABBIT_TAIL = "I feel a lil better when I hold one.",
        MUSHROOMHAT = "Makes the wearer look like a fun guy.",
        MUSHROOM_LIGHT2 =
        {
            ON = "wow 非常漂亮。",
            OFF = "一个漂亮的蘑菇台灯。",
            BURNT = "我没有让它发霉 我发誓。",
        },
        MUSHROOM_LIGHT =
        {
            ON = "这台大蘑菇散发出了温柔的光。",
            OFF = "一台大蘑菇灯。",
            BURNT = "烧焦了 可惜。",
        },
        SLEEPBOMB = "It makes snooze circles when I throw it.",
        MUSHROOMBOMB = "A mushroom cloud in the making!",
        SHROOM_SKIN = "Warts and all!",
        TOADSTOOL_CAP =
        {
            EMPTY = "Just a hole in the ground.",
            INGROUND = "There's something poking out.",
            GENERIC = "That toadstool's just asking to be cut down.",
        },
        TOADSTOOL =
        {
            GENERIC = "Yeesh! I'm not kissing that!",
            RAGE = "He's hopping mad now!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "How scientific!",
            BURNT = "How im-morel!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "That mushroom got too big for its own good.",
            BLOOM = "You can't tell from far away, but it's quite smelly.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "These used to grow in my bathroom.",
            BLOOM = "I'm mildly offended by this.",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "A magic mushroom?",
            BLOOM = "It's trying to reproduce.",
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.",
        SPORE_TALL =
        {
            GENERIC = "It's just drifting around.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Hasn't a care in the world.",
            HELD = "I'll keep a little light in my pocket.",
        },
        SPORE_SMALL =
        {
            GENERIC = "That's a sight for spore eyes.",
            HELD = "I'll keep a little light in my pocket.",
        },
        RABBITHOUSE =
        {
            GENERIC = "That's not a real carrot.",
            BURNT = "That's not a real roasted carrot.",
        },
        SLURTLE = "Ew. Just ew.",
        SLURTLE_SHELLPIECES = "A puzzle with no solution.",
        SLURTLEHAT = "That would mess up my hair.",
        SLURTLEHOLE = "A den of \"ew\".",
        SLURTLESLIME = "If it wasn't useful, I wouldn't touch it.",
        SNURTLE = "He's less gross, but still gross.",
        SPIDER_HIDER = "Gah! More spiders!",
        SPIDER_SPITTER = "I hate spiders!",
        SPIDERHOLE = "地下蜘蛛的巢。",
        SPIDERHOLE_ROCK = "地下蜘蛛的巢。",
        STALAGMITE = "一堆岩石。",
        STALAGMITE_TALL = "有啥好看的？ 不如看我。",
        TREASURECHEST_TRAP = "How convenient!",

        TURF_CARPETFLOOR = "It's surprisingly scratchy.",
        TURF_CHECKERFLOOR = "These are pretty snazzy.",
        TURF_DIRT = "这些地皮可以种些植物。",
        TURF_FOREST = "一块地。",
        TURF_GRASS = "一块地。",
        TURF_MARSH = "一块地。",
        TURF_METEOR = "月...球？ 挺稀奇的哈。",
        TURF_PEBBLEBEACH = "A chunk of beach.",
        TURF_ROAD = "Hastily cobbled stones.",
        TURF_ROCKY = "A chunk of ground.",
        TURF_SAVANNA = "A chunk of ground.",
        TURF_WOODFLOOR = "These are floorboards.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",
		TURF_DESERTDIRT = "A chunk of ground.",
		TURF_FUNGUS_GREEN = "A chunk of ground.",
		TURF_FUNGUS_RED = "A chunk of ground.",
		TURF_DRAGONFLY = "Do you want proof that it's fireproof?",

		POWCAKE = "Science help us.",
        CAVE_ENTRANCE = "I wonder if that rock could be moved.",
        CAVE_ENTRANCE_RUINS = "It's probably hiding something.",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "The earth itself rejects me!",
            OPEN = "I bet there's all sorts of things to discover down there.",
            FULL = "I'll have to wait until someone leaves to enter.",
        },
        CAVE_EXIT = 
        {
            GENERIC = "I'll just stay down here, I suppose.",
            OPEN = "I've had enough discovery for now.",
            FULL = "The surface is too crowded!",
        },

		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "Aerodynamical!",
		PIGGUARD = "He doesn't look as friendly as the others.",
		ABIGAIL = "嗯 一位可爱的幽灵。",
		ADVENTURE_PORTAL = "I'm not sure I want to fall for that a second time.",
		AMULET = "I feel so safe when I get to wear it.",
		ANIMAL_TRACK = "Tracks left by food. I mean... an animal.",
		ARMORGRASS = "Hopefully there aren't any bugs in it.",
		ARMORMARBLE = "That looks really heavy.",
		ARMORWOOD = "That is a perfectly reasonable piece of clothing.",
		ARMOR_SANITY = "Wearing that makes me feel safe and insecure.",
		ASH =
		{
			GENERIC = "All that's left after the fire has done its job.",
			REMAINS_GLOMMERFLOWER = "The flower was consumed by fire in the teleportation!",
			REMAINS_EYE_BONE = "The eyebone was consumed by fire in the teleportation!",
			REMAINS_THINGIE = "There's a perfectly scientific explanation for that.",
		},
		AXE = "A trusty axe.",
		BABYBEEFALO = 
		{
			GENERIC = "Awwww. So cute!",
		    SLEEPING = "Sweet dreams, smelly.",
        },
        BUNDLE = "Our supplies are in there!",
        BUNDLEWRAP = "Wrapping things up should make them easier to carry.",
		BACKPACK = "You could fit a whole lot of science in there.",
		BACONEGGS = "The perfect breakfast for a man of science.",
		BANDAGE = "Seems sterile enough.",
		BASALT = "That's too strong to break through!",
		BEARDHAIR = "It's only gross when they're not your own.",
		BEARGER = "我操 好大只。",
		BEARGERVEST = "嘿嘿 熊皮大衣。",
		ICEPACK = "The fur keeps the temperature inside stable.",
		BEARGER_FUR = "一大块毛皮 用来保暖应该很不错。",
		BEDROLL_STRAW = "Looks comfy, but it smells like mildew.",
		BEEQUEEN = "Keep that stinger away from me!",
		BEEQUEENHIVE = 
		{
			GENERIC = "It's too sticky to walk on.",
			GROWING = "Was that there before?",
		},
        BEEQUEENHIVEGROWN = "How in science did it get so big?!",
        BEEGUARD = "It's guarding the queen.",
        HIVEHAT = "The world seems less a little crazy when I wear it.",
        MINISIGN =
        {
            GENERIC = "蛮像的 应该吧...",
            UNDRAWN = "应该画一点有意思的艺术品吧。",
        },
        MINISIGN_ITEM = "It's not much use like this. We should place it.",
		BEE =
		{
			GENERIC = "额 我不想让他蜇到我 拜托。",
			HELD = "Careful!",
		},
		BEEBOX =
		{
			READY = "It's full of honey.",
			FULLHONEY = "It's full of honey.",
			GENERIC = "Bees!",
			NOHONEY = "It's empty.",
			SOMEHONEY = "Need to wait a bit.",
			BURNT = "How did it get burned?!!",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "这些蘑菇是真的多。",
			LOTS = "种的还不赖嘛。",
			SOME = "等待一会吧 它还得需要一些时间。",
			EMPTY = "这块木头非常适合洒下一些孢子 或者蘑菇。",
			ROTTEN = "该换一个木头了。",
			BURNT = "蛮不错的。",
			SNOWCOVERED = "我认为它在这种寒冷的天气里没办法生长。",
		},
		BEEFALO =
		{
			FOLLOWER = "He's coming along peacefully.",
			GENERIC = "It's a beefalo!",
			NAKED = "Aww, he's so sad.",
			SLEEPING = "These guys are really heavy sleepers.",
            --Domesticated states:
            DOMESTICATED = "This one is slightly less smelly than the others.",
            ORNERY = "It looks deeply angry.",
            RIDER = "This fellow appears quite ridable.",
            PUDGY = "Hmmm, there may be too much food inside it.",
		},

		BEEFALOHAT = "That's a case of hat-hair waiting to happen.",
		BEEFALOWOOL = "It smells like beefalo tears.",
		BEEHAT = "Protects your skin, but squashes your meticulous coiffure.",
        BEESWAX = "Beeswax is a scientifically proven preservative!",
		BEEHIVE = "It's buzzing with activity.",
		BEEMINE = "It buzzes when shaken.",
		BEEMINE_MAXWELL = "Bottled mosquito rage!",
		BERRIES = "Red berries taste the best.",
		BERRIES_COOKED = "I don't think heat improved them.",
        BERRIES_JUICY = "Extra tasty, though they won't last long.",
        BERRIES_JUICY_COOKED = "Better eat them before they spoil!",
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "Nothing will grow in this heat.",
			GENERIC = "I think those are the edible kind.",
			PICKED = "Maybe they'll grow back?",
			DISEASED = "It looks pretty sick.",
			DISEASING = "Err, something's not right.",
			BURNING = "It's very much on fire.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It won't make any berries in this state.",
			WITHERED = "The heat even dehydrated the juicy berries!",
			GENERIC = "I should leave them there until it's time to eat.",
			PICKED = "The bush is working hard on the next batch.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "Err, something's not right.",
			BURNING = "It's very much on fire.",
		},
		BIGFOOT = "That is one biiig foot.",
		BIRDCAGE =
		{
			GENERIC = "虽然是空的 但是还是照样的恶心啊...",
			OCCUPIED = "为了好看而囚禁了它的自由 真的是恶心啊。",
			SLEEPING = "它在这该死的牢笼中睡着了。",
			HUNGRY = "它饿了。",
			STARVING = "渴望食物 渴望自由。",
			DEAD = "也许只是在休息 但是我不这么认为。",
			SKELETON = "在这牢笼中离开了这个世界。",
		},
		BIRDTRAP = "Gives me a net advantage!",
		CAVE_BANANA_BURNT = "Not my fault!",
		BIRD_EGG = "A small, normal egg.",
		BIRD_EGG_COOKED = "Sunny side yum!",
		BISHOP = "Back off, preacherman!",
		BLOWDART_FIRE = "This seems fundamentally unsafe.",
		BLOWDART_SLEEP = "Just don't breathe in.",
		BLOWDART_PIPE = "Good practice for my birthday cake!",
		BLOWDART_YELLOW = "It has shocking accuracy.",
		BLUEAMULET = "Cool as ice!",
		BLUEGEM = "It sparkles with cold energy.",
		BLUEPRINT = 
		{ 
            COMMON = "It's scientific!",
            RARE = "It's REALLY scientific!",
        },
        SKETCH = "A picture of a sculpture. We'll need somewhere to make it.",
		BLUE_CAP = "It's weird and gooey.",
		BLUE_CAP_COOKED = "It's different now...",
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		BOARDS = "一些加工好的木板。",
		BONESHARD = "哇哦~来猜猜这是谁的碎骨头片？",
		BONESTEW = "A stew to put some meat on your bones.",
		BUGNET = "并不是抓鱼的网呢。",
		BUSHHAT = "It's kind of scratchy.",
		BUTTER = "黄油嗯..嗯！？？？？",
		BUTTERFLY =
		{
			GENERIC = "一只迷路的蝴蝶。",
			HELD = "我搞不懂这蝴蝶是如何变成花的...",
		},
		BUTTERFLYMUFFIN = "We threw the recipe away and just kind of winged it.",
		BUTTERFLYWINGS = "已经死了 不过它的身体可以留下成为美丽的标本。",
		BUZZARD = "What a bizarre buzzard!",

		SHADOWDIGGER = "Oh good. Now there's more of him.",

		CACTUS = 
		{
			GENERIC = "可以的话麻烦滚开 真的。",
			PICKED = "舒服了。",
		},
		CACTUS_MEAT_COOKED = "Grilled fruit of the desert.",
		CACTUS_MEAT = "There are still some spines between me and a tasty meal.",
		CACTUS_FLOWER = "A pretty flower from a prickly plant.",

		COLDFIRE =
		{
			EMBERS = "得加燃料了，不然火就要灭了。",
			GENERIC = "能驱走黑暗。",
			HIGH = "我操！行了这火够大了。",
			LOW = "火变得有点小了。",
			NORMAL = "真舒服 比当时的实验室舒服多了。",
			OUT = "得，结束了。",
		},
		CAMPFIRE =
		{
			EMBERS = "得加燃料了，不然火就要灭了",
			GENERIC = "能驱走黑暗。",
			HIGH = "够了傻逼！太冷了。",
			LOW = "冰快烧化了。",
			NORMAL = "冰凉的火在夏天很舒服。",
			OUT = "得，结束了。",
		},
		CANE = "Technically walking is just controlled falling.",
		CATCOON = "A playful little thing.",
		CATCOONDEN = 
		{
			GENERIC = "It's a den in a stump.",
			EMPTY = "Its owner ran out of lives.",
		},
		CATCOONHAT = "Ears hat!",
		COONTAIL = "I think it's still swishing.",
		CARROT = "Yuck. This vegetable came out of the dirt.",
		CARROT_COOKED = "味道不错~",
		CARROT_PLANTED = "一种营养价值很高的蔬菜，含有多种人体所需的维生素，如维生素A、B1、B2、C等。",
		CARROT_SEEDS = "It's a carrot seed.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "现在它们可以让我看看它们找到什么了！",
			BURNING = "So much for that.",
			BURNT = "Nothing but ash now.",
		},
		WATERMELON_SEEDS = "It's a melon seed.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "It's small, dark, and smells like burnt wood.",
        CHESSPIECE_PAWN = "I can relate.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "It's even heavier than it looks.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "It's a horse, of course.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "It's a stone bishop.",
            STRUGGLE = "The chess pieces are moving themselves!",
        },
        CHESSPIECE_MUSE = "Hmm... Looks familiar.",
        CHESSPIECE_FORMAL = "Doesn't seem very \"kingly\" to me.",
        CHESSPIECE_HORNUCOPIA = "Makes my stomach rumble just looking at it.",
        CHESSPIECE_PIPE = "That was never really my thing.",
        CHESSPIECE_DEERCLOPS = "It feels like its eye follows you.",
        CHESSPIECE_BEARGER = "It was a lot bigger up close.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Eurgh. It's so lifelike.",
        },
        CHESSPIECE_DRAGONFLY = "Ah, that brings back memories. Bad ones.",
        CHESSPIECE_BUTTERFLY = "It looks nice, doesn't it?",
        CHESSPIECE_ANCHOR = "It's as heavy as it looks.",
        CHESSPIECE_MOON = "I've been feeling pretty inspired lately.",
        CHESSJUNK1 = "A pile of broken chess pieces.",
        CHESSJUNK2 = "Another pile of broken chess pieces.",
        CHESSJUNK3 = "Even more broken chess pieces.",
		CHESTER = "Otto von Chesterfield, Esq.",
		CHESTER_EYEBONE =
		{
			GENERIC = "怪可爱的。",
			WAITING = "可能它只是想小睡一会。",
		},
		COOKEDMANDRAKE = "Poor little guy.",
		COOKEDMEAT = "真希望能永远待在这里啊。",
		COOKEDMONSTERMEAT = "相比以前的那些...这次起码熟了。",
		COOKEDSMALLMEAT = "拜托 这点那够啊！",
		COOKPOT =
		{
			COOKING_LONG = "完美是美食总是要等待的。",
			COOKING_SHORT = "快了 别急。",
			DONE = "成品出锅！",
			EMPTY = "额..以前看过23本食谱书 应该可行吧？",
			BURNT = "别看我 真的不是我烧的。",
		},
		CORN = "High in fructose!",
		CORN_COOKED = "Cooked and high in fructose!",
		CORN_SEEDS = "It's a corn seed.",
        CANARY =
		{
			GENERIC = "Some sort of yellow creature made of science.",
			HELD = "I'm not squishing you, am I?",
		},
        CANARY_POISONED = "It's probably fine.",

		CRITTERLAB = "Is there something in there?",
        CRITTER_GLOMLING = "What an aerodynamical creature!",
        CRITTER_DRAGONLING = "It's wyrmed its way into my heart.",
		CRITTER_LAMB = "Much less mucusy than its momma.",
        CRITTER_PUPPY = "Pretty cute for a lil monster!",
        CRITTER_KITTEN = "You'd make a good lab assistant.",
        CRITTER_PERDLING = "My feathered friend.",
		CRITTER_LUNARMOTHLING = "I keep her around because she's good at mothematics.",

		CROW =
		{
			GENERIC = "我不知道为什么大家都挺讨厌讨厌乌鸦 反正我是蛮喜欢的。",
			HELD = "He's not very happy in there.",
		},
		CUTGRASS = "一把草。",
		CUTREEDS = "一捆芦苇 做成纸挺不错的。",
		CUTSTONE = "完美的石块 制作完美的建筑。",
		DEADLYFEAST = "A most potent dish.",
		DEER =
		{
			GENERIC = "Is it staring at me? ...No, I guess not.",
			ANTLER = "What an impressive antler!",
		},
        DEER_ANTLER = "Was that supposed to come off?",
        DEER_GEMMED = "It's being controlled by that beast!",
		DEERCLOPS = "嗨！够我吃好几天了！",
		DEERCLOPS_EYEBALL = "这眼睛比我之前吃掉的大多了。 ",
		EYEBRELLAHAT =	"It watches over the wearer.",
		DEPLETED_GRASS =
		{
			GENERIC = "It's probably a tuft of grass.",
		},
        GOGGLESHAT = "What a stylish pair of goggles.",
        DESERTHAT = "Quality eye protection.",
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.",
			GENERIC = "It's some kind of homing device.",
			HOT = "This thing's going crazy!",
			WARM = "I'm headed in the right direction.",
			WARMER = "Must be getting pretty close.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now the machine can work!",
		},
		DIVININGRODSTART = "That rod looks useful!",
		DRAGONFLY = "That's one fly dragon!",
		ARMORDRAGONFLY = "Hot mail!",
		DRAGON_SCALES = "They're still warm.",
		DRAGONFLYCHEST = "像是最终奖励一样豪华。",
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "Produces a lot of heat, but not much light.", --no gems
			NORMAL = "Is it winking at me?", --one gem
			HIGH = "永不灭的滚烫火炉。", --two gems
		},
        
        HUTCH = "Hutch Danglefish, P.I.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "I always wanted one of these.",
            WAITING = "Maybe he needs some science?",
        },
		LAVASPIT = 
		{
			HOT = "Hot spit!",
			COOL = "I like to call it \"Basaliva\".",
		},
		LAVA_POND = "Magmificent!",
		LAVAE = "Too hot to handle.",
		LAVAE_COCOON = "Cooled off and chilled out.",
		LAVAE_PET = 
		{
			STARVING = "Poor thing must be starving.",
			HUNGRY = "I hear a tiny stomach grumbling.",
			CONTENT = "It seems happy.",
			GENERIC = "Aww. Who's a good monster?",
		},
		LAVAE_EGG = 
		{
			GENERIC = "There's a faint warmth coming from inside.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I don't think that egg is warm enough.",
			COMFY = "I never thought I would see a happy egg.",
		},
		LAVAE_TOOTH = "It's an egg tooth!",

		DRAGONFRUIT = "What a weird fruit.",
		DRAGONFRUIT_COOKED = "The fruit's still weird.",
		DRAGONFRUIT_SEEDS = "It's a weird fruit seed.",
		DRAGONPIE = "The dragonfruit is very filling.",
		DRUMSTICK = "真是一块好肉呢。",
		DRUMSTICK_COOKED = "嘿！还真挺好吃的~",
		DUG_BERRYBUSH = "Now it can be taken anywhere.",
		DUG_BERRYBUSH_JUICY = "This could be replanted closer to home.",
		DUG_GRASS = "It can be planted anywhere now.",
		DUG_MARSH_BUSH = "This needs to be planted.",
		DUG_SAPLING = "This needs to be planted.",
		DURIAN = "Oh, it smells!",
		DURIAN_COOKED = "Now it smells even worse!",
		DURIAN_SEEDS = "It's a durian seed.",
		EARMUFFSHAT = "Makes you warm and fuzzy inside. Outside, too.",
		EGGPLANT = "It doesn't look like an egg.",
		EGGPLANT_COOKED = "It's even less eggy.",
		EGGPLANT_SEEDS = "It's an eggplant seed.",
		
		ENDTABLE = 
		{
			BURNT = "哈...我还以为和那个桌子一样呢。",
			GENERIC = "花瓶它终于也有属于它的装饰了。",
			EMPTY = "插上玫瑰那可就真的完美了。",
			WILTED = "这它绽放的很完美 但最终还是走向了生命的尽头。",
			FRESHLIGHT = "有一点亮光也很不错。",
			OLDLIGHT = "快枯萎了。", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "挺浪费的。",
			BURNT = "我觉得我本可以阻止这种事情发生的。",
			CHOPPED = "树 倒了。",
			POISON = "一颗漂亮温柔的树变成了个疯子。",
			GENERIC = "很美丽 温柔 至少现在是。",
		},
		ACORN = "一种可以烤着吃的果种。",
        ACORN_SAPLING = "它很快就会生长成年的。",
		ACORN_COOKED = "烤得很完美。",
		BIRCHNUTDRAKE = "这是它的宝宝？",
		EVERGREEN =
		{
			BURNING = "这该死的东西终于要没了是么？",
			BURNT = "舒服多了~",
			CHOPPED = "建议给根也铲了。",
			GENERIC = ".....恶心。",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "舒服多了",
			GENERIC = "不一样的树 相同的恶心。",
		},
		TWIGGYTREE = 
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all stick-y.",			
			DISEASED = "It looks sick. More so than usual.",
		},
		TWIGGY_NUT_SAPLING = "It doesn't need any help to grow.",
        TWIGGY_OLD = "That tree looks pretty wimpy.",
		TWIGGY_NUT = "There's a stick-y tree inside it that wants to get out.",
		EYEPLANT = "I think I'm being watched.",
		INSPECTSELF = "Am I still in one piece?",
		FARMPLOT =
		{
			GENERIC = "I should try planting some crops.",
			GROWING = "Go plants go!",
			NEEDSFERTILIZER = "I think it needs to be fertilized.",
			BURNT = "I don't think anything will grow in a pile of ash.",
		},
		FEATHERHAT = "BECOME THE BIRD!",
		FEATHER_CROW = "A feather from a black bird.",
		FEATHER_ROBIN = "A redbird feather.",
		FEATHER_ROBIN_WINTER = "A snowbird feather.",
		FEATHER_CANARY = "A canary feather.",
		FEATHERPENCIL = "The feather increases the scientific properties of the writing.",
		FEM_PUPPET = "She's trapped!",
		FIREFLIES =
		{
			GENERIC = "一只只微弱的光犹如星河一般。",
			HELD = "They make my pocket glow!",
		},
		FIREHOUND = "性感火辣的疯狗。",
		FIREPIT =
		{
			EMBERS = "..我希望在它灭了之前有人能添加下燃料。",
			GENERIC = "驱走黑暗。",
			HIGH = "这火焰大的快流出来了呢。",
			LOW = "燃料快烧完了。",
			NORMAL = "真舒服呢。",
			OUT = "一个氛围感极好的石制营火",
		},
		COLDFIREPIT =
		{
			EMBERS = "..我希望在它灭了之前有人能添加下燃料。",
			GENERIC = "驱走黑暗。",
			HIGH = "“节电”空调。",
			LOW = "快没“电”了",
			NORMAL = "真舒服呢。",
			OUT = "冰火灭了。",
		},
		FIRESTAFF = "I don't want to set the world on fire.",
		FIRESUPPRESSOR = 
		{	
			ON = "全自动灭火器已准备就绪。",
			OFF = "一切都平息了",
			LOWFUEL = "得需要一些燃料才能让这台机器恢复正常。",
		},

		FISH = "要是还活着就好了。",
		FISHINGROD = "说实话 我想让别人拿去钓。",
		FISHSTICKS = "可以填饱肚子 不错。",
		FISHTACOS = "松脆而美味！",
		FISH_COOKED = "如果不考虑给它钓出来的话还不错呢。",
		FLINT = "燧石..想想能干点啥吧。",
		FLOWER = 
		{
            GENERIC = "嗯 一朵温柔的花。",
            ROSE = "To match my rosy cheeks.",
        },
        FLOWER_WITHERED = "再美丽的生命终究还是会衰落。",
		FLOWERHAT = "鲜艳的像是沾满了鲜血。",
		FLOWER_EVIL = "也很美丽哦。",
		FOLIAGE = "一些多叶植物。",
		FOOTBALLHAT = "I don't like sports.",
        FOSSIL_PIECE = "Science bones! We should put them back together.",
        FOSSIL_STALKER =
        {
			GENERIC = "Still missing some pieces.",
			FUNNY = "My scientific instincts say this isn't quite right.",
			COMPLETE = "It's alive! Oh wait, no, it's not.",
        },
        STALKER = "The skeleton fused with the shadows!",
        STALKER_ATRIUM = "Why'd it have to be so big?",
        STALKER_MINION = "Anklebiters!",
        THURIBLE = "It smells like chemicals.",
        ATRIUM_OVERGROWTH = "I don't recognize any of these symbols.",
		FROG =
		{
			DEAD = "He's croaked.",
			GENERIC = "He's so cute!",
			SLEEPING = "Aww, look at him sleep!",
		},
		FROGGLEBUNWICH = "A very leggy sandwich.",
		FROGLEGS = "I've heard it's a delicacy.",
		FROGLEGS_COOKED = "Tastes like chicken.",
		FRUITMEDLEY = "Fruity.",
		FURTUFT = "一小团毛 不是我的。", 
		GEARS = "一些还可以用的齿轮。",
		GHOST = "This offends me as a scientist.",
		GOLDENAXE = "That's one fancy axe.",
		GOLDENPICKAXE = "Hey, isn't gold really soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "I can't wait to dig holes.",
		GOLDNUGGET = "不知道在这地方还会不会有人为了这一块金子而展示内心的丑陋呢手哈哈。",
		GRASS =
		{
			BARREN = "枯萎了 可能再也醒不过来了。",
			WITHERED = "在不浇水就被晒死了这植物。",
			BURNING = "赶紧灭火吧不然烧到别的就不好。",
			GENERIC = "一从草 有什么好看的。",
			PICKED = "被采了 在摘就只能刨草根了。",
			DISEASED = "救不活了赶紧铲掉 别让他传染了。",
			DISEASING = "呃...有些地方不对劲。",
		},
		GRASSGEKKO = 
		{
			GENERIC = "It's an extra leafy lizard.",	
			DISEASED = "It looks really sick.",
		},
		GREEN_CAP = "It seems pretty normal.",
		GREEN_CAP_COOKED = "It's different now...",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		GUNPOWDER = "It looks like pepper.",
		HAMBAT = "This seems unsanitary.",
		HAMMER = "Stop! It's time! To hammer things!",
		HEALINGSALVE = "The stinging means that it's working.",
		HEATROCK =
		{
			FROZEN = "It's colder than ice.",
			COLD = "That's a cold stone.",
			GENERIC = "I could manipulate its temperature.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Nice and toasty hot!",
		},
		HOME = "Someone must live here.",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "一块空白的木板牌子",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Looks delicious!",
		HONEYCOMB = "Bees used to live in this.",
		HONEYHAM = "Sweet and savory.",
		HONEYNUGGETS = "Tastes like chicken, but I don't think it is.",
		HORN = "It sounds like a beefalo field in there.",
		HOUND = "疯犬 和我一样。",
		HOUNDCORPSE =
		{
			GENERIC = "The smell is not the most pleasant.",
			BURNING = "I think we're safe now.",
			REVIVING = "Science save us!",
		},
		HOUNDBONE = "额...哎..别这么看着我 我不吃的。",
		HOUNDMOUND = "嘿！ 你们还过得好么？！ 哈哈！",
		ICEBOX = "能有一款不需要电的冰箱简直再好不过了。",
		ICEHAT = "Stay cool, boy.",
		ICEHOUND = "在饥饿和寒冷的天气里它经历了一次蜕化。",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT, SANE SELF!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "Probably should have made a jar.",

		KABOBS = "Lunch on a stick.",
		KILLERBEE =
		{
			GENERIC = "Oh no! It's a killer bee!",
			HELD = "This seems dangerous.",
		},
		KNIGHT = "Check it out!",
		KOALEFANT_SUMMER = "Adorably delicious.",
		KOALEFANT_WINTER = "It looks warm and full of meat.",
		KRAMPUS = "He's going after my stuff!",
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.",
		LEIF = "He's huge!",
		LEIF_SPARSE = "He's huge!",
		LIGHTER  = "It's her lucky lighter.",
		LIGHTNING_ROD =
		{
			CHARGED = "是谁发誓了呢？",
			GENERIC = "有了这个 发誓被雷劈好像就没用了吧hhh。",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "\"Baaaah\" yourself!",
			CHARGED = "I don't think it liked being struck by lightning.",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.",
		GOATMILK = "It's buzzing with tastiness!",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "It looks worried.",
		LOG =
		{
			BURNING = "嘶...好烫!",
			GENERIC = "非常棒的木材。",
		},
		LUCY = "That's a prettier axe than I'm used to.",
		LUREPLANT = "It's so alluring.",
		LUREPLANTBULB = "Now I can start my very own meat farm.",
		MALE_PUPPET = "He's trapped!",

		MANDRAKE_ACTIVE = "Cut it out!",
		MANDRAKE_PLANTED = "I've heard strange things about those plants.",
		MANDRAKE = "Mandrake roots have strange properties.",

        MANDRAKESOUP = "Well, he won't be waking up again.",
        MANDRAKE_COOKED = "It doesn't seem so strange anymore.",
        MAPSCROLL = "A blank map. Doesn't seem very useful.",
        MARBLE = "漂亮的花纹。",
        MARBLEBEAN = "I traded the old family cow for it.",
        MARBLEBEAN_SAPLING = "搞不懂....这石头是怎么长成树的。",
        MARBLESHRUB = "呃..真搞不懂不懂。",
        MARBLEPILLAR = "I think I could use that.",
        MARBLETREE = "艺术品？ 看不懂。",
        MARSH_BUSH =
        {
			BURNT = "One less thorn patch to worry about.",
            BURNING = "That's burning fast!",
            GENERIC = "嘶...啊你妈的离我远点啊！！！",
            PICKED = "Ouch.",
        },
        BURNT_MARSH_BUSH = "It's all burnt up.",
        MARSH_PLANT = "It's a plant.",
        MARSH_TREE =
        {
            BURNING = "Spikes and fire!",
            BURNT = "Now it's burnt and spiky.",
            CHOPPED = "Not so spiky now!",
            GENERIC = "Those spikes look sharp!",
        },
        MAXWELL = "I hate that guy.",
        MAXWELLHEAD = "I can see into his pores.",
        MAXWELLLIGHT = "I wonder how they work.",
        MAXWELLLOCK = "Looks almost like a key hole.",
        MAXWELLTHRONE = "That doesn't look very comfortable.",
        MEAT = "还是这个符合我胃口啊~",
        MEATBALLS = "吼 还蛮大的。",
        MEATRACK =
        {
            DONE = "总算是好了。",
            DRYING = "啥时候能好啊...",
            DRYINGINRAIN = "先摘下来吧 都快淋软了。",
            GENERIC = "暴晒 脱水 说实话我不是很喜欢这个。",
            BURNT = "把自己给晒没了吧哈。",
            DONE_NOTMEAT = "额 这等的还蛮久的。",
            DRYING_NOTMEAT = ".",
            DRYINGINRAIN_NOTMEAT = "草！！你妈的啥时候下不好啊有病吧！",
        },
        MEAT_DRIED = "干尸块。",
        MERM = "这味多少有点熏脑子了。",
        MERMHEAD =
        {
            GENERIC = "The stinkiest thing I'll smell all day.",
            BURNT = "Burnt merm flesh somehow smells even worse.",
        },
        MERMHOUSE =
        {
            GENERIC = "Who would live here?",
            BURNT = "Nothing to live in, now.",
        },
        MINERHAT = "A hands-free way to brighten your day.",
        MONKEY = "Curious little guy.",
        MONKEYBARREL = "Did that just move?",
        MONSTERLASAGNA = "It's an affront to science.",
        FLOWERSALAD = "A bowl of foliage.",
        ICECREAM = "I scream for ice cream!",
        WATERMELONICLE = "Cryogenic watermelon.",
        TRAILMIX = "A healthy, natural snack.",
        HOTCHILI = "Five alarm!",
        GUACAMOLE = "Avogadro's favorite dish.",
        MONSTERMEAT = "生的 但...和那一帮畜生一样恶心。",
        MONSTERMEAT_DRIED = "我当时怎么没想到这种折磨方式啊...",
        MOOSE = "I don't exactly know what that thing is.",
        MOOSE_NESTING_GROUND = "It puts its babies there.",
        MOOSEEGG = "The babies are like excited electrons trying to escape.",
        MOSSLING = "Aaah! You are definitely not an electron!",
        FEATHERFAN = "Down, to bring the temperature down.",
        MINIFAN = "Somehow the breeze comes out the back twice as fast.",
        GOOSE_FEATHER = "Fluffy!",
        STAFF_TORNADO = "Spinning doom.",
        MOSQUITO =
        {
            GENERIC = "Disgusting little bloodsucker.",
            HELD = "Hey, is that my blood?",
        },
        MOSQUITOSACK = "It's probably someone else's blood...",
        MOUND =
        {
            DUG = "He probably deserved it.",
            GENERIC = "I bet there's all sorts of good stuff down there!",
        },
        NIGHTLIGHT = "用那些诡异的怪物来点燃 很奇妙呢。",
        NIGHTMAREFUEL = "黏黏的。",
        NIGHTSWORD = "Why would anyone make this? It's terrifying.",
        NITRE = "I'm not a geologist.",
        ONEMANBAND = "We should add a beefalo bell.",
        OASISLAKE =
		{
			GENERIC = "Is that a mirage?",
			EMPTY = "It's dry as a bone.",
		},
        PANDORASCHEST = "It may contain something fantastic! Or horrible.",
        PANFLUTE = "To serenade the animals.",
        PAPYRUS = "Some sheets of paper.",
        WAXPAPER = "Some sheets of wax paper.",
        PENGUIN = "看起来它心情挺不错的 不过企鹅不是在南极么？",
        PERD = "Stupid bird! Stay away from those berries!",
        PEROGIES = "These turned out pretty good.",
        PETALS = "...额我要这些花瓣干啥。",
        PETALS_EVIL = "I'm not sure I want to hold those.",
        PHLEGM = "It's thick and pliable. And salty.",
        PICKAXE = "Iconic, isn't it?",
        PIGGYBACK = "This little piggy's gone... \"home\".",
        PIGHEAD =
        {
            GENERIC = "Looks like an offering to the beast.",
            BURNT = "Crispy.",
        },
        PIGHOUSE =
        {
            FULL = "I can see a snout pressed up against the window.",
            GENERIC = "These pigs have pretty fancy houses.",
            LIGHTSOUT = "Come ON! I know you're home!",
            BURNT = "Not so fancy now, pig!",
        },
        PIGKING = "Ewwww, he smells!",
        PIGMAN =
        {
            DEAD = "Someone should tell its family.",
            FOLLOWER = "You're part of my entourage.",
            GENERIC = "They kind of creep me out.",
            GUARD = "Looks serious.",
            WEREPIG = "Not a friendly pig!!",
        },
        PIGSKIN = "It still has the tail on it.",
        PIGTENT = "Smells like bacon.",
        PIGTORCH = "Sure looks cozy.",
        PINECONE = "听说松子挺好吃的 不知道这里面有没有。",
        PINECONE_SAPLING = "It'll be a tree soon!",
        LUMPY_SAPLING = "How did this tree even reproduce?",
        PITCHFORK = "Now I just need an angry mob to join.",
        PLANTMEAT = "That doesn't look very appealing.",
        PLANTMEAT_COOKED = "At least it's warm now.",
        PLANT_NORMAL =
        {
            GENERIC = "Leafy!",
            GROWING = "Guh! It's growing so slowly!",
            READY = "Mmmm. Ready to harvest.",
            WITHERED = "The heat killed it.",
        },
        POMEGRANATE = "It looks like the inside of an alien's brain.",
        POMEGRANATE_COOKED = "Haute Cuisine!",
        POMEGRANATE_SEEDS = "It's a pome-whatsit seed.",
        POND = "I can't see the bottom!",
        POOP = "I should fill my pockets!",
        FERTILIZER = "That is definitely a bucket full of poop.",
        PUMPKIN = "It's as big as my head!",
        PUMPKINCOOKIE = "That's a pretty gourd cookie!",
        PUMPKIN_COOKED = "How did it not turn into a pie?",
        PUMPKIN_LANTERN = "Spooky!",
        PUMPKIN_SEEDS = "It's a pumpkin seed.",
        PURPLEAMULET = "It's whispering to me.",
        PURPLEGEM = "漂亮 总感觉很像我呢。",
        RABBIT =
        {
            GENERIC = "He's looking for carrots.",
            HELD = "Do you like science?",
        },
        RABBITHOLE =
        {
            GENERIC = "That must lead to the Kingdom of the Bunnymen.",
            SPRING = "The Kingdom of the Bunnymen is closed for the season.",
        },
        RAINOMETER =
        {
            GENERIC = "我觉得这玩意没必要吧。",
            BURNT = "正好 腾出地方来了。",
        },
        RAINCOAT = "Keeps the rain where it ought to be. Outside your body.",
        RAINHAT = "Messy hair... the terrible price of dryness.",
        RATATOUILLE = "An excellent source of fiber.",
        RAZOR = "A sharpened rock tied to a stick. For hygiene!",
        REDGEM = "It sparkles with inner warmth.",
        RED_CAP = "It smells funny.",
        RED_CAP_COOKED = "It's different now...",
        RED_MUSHROOM =
        {
            GENERIC = "It's a mushroom.",
            INGROUND = "It's sleeping.",
            PICKED = "I wonder if it will come back?",
        },
        REEDS =
        {
            BURNING = "That's really burning!",
            GENERIC = "It's a clump of reeds.",
            PICKED = "All the useful reeds have already been picked.",
        },
        RELIC = "一些经历过时间摧残的家具",
        RUINS_RUBBLE = "This can be fixed.",
        RUBBLE = "Just bits and pieces of rock.",
        RESEARCHLAB =
        {
            GENERIC = "我不太理解 这东西是如何让我学会这么多东西。",
            BURNT = "It won't be doing much science now.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "额...更高级的机器？",
            BURNT = "The extra science didn't keep it alive.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "额...？ 这到底啥玩意？",
            BURNT = "Whatever it was, it's burnt now.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "搞不懂 这机器到底有什么用。",
            BURNT = "Fire doesn't really solve naming issues...",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "将一点肉体和灵魂寄托在另一个复制体上 想想就非常兴奋啊！",
            BURNT = "我缺失的应该能回来吧。",
        },
        RESURRECTIONSTONE = "诡异的石台 似乎可以救活那些奇怪的朋友。",
        ROBIN =
        {
            GENERIC = "Does that mean winter is gone?",
            HELD = "He likes my pocket.",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Life in the frozen wastes.",
            HELD = "It's so soft.",
        },
        ROBOT_PUPPET = "They're trapped!",
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",
            OUT = "Looks fragile.",
            LOW = "The lava's crusting over.",
            NORMAL = "Nice and comfy.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I think I can lift this one.",
            RAISED = "It's out of reach.",
        },
        ROCK = "看来得需要一把稿子了。",
        PETRIFIED_TREE = "嗯......这种情况书上没写啊。",
        ROCK_PETRIFIED_TREE = "嗯......这种情况书上没写啊。",
        ROCK_PETRIFIED_TREE_OLD = "嗯......这种情况书上没写啊。",
        ROCK_ICE =
        {
            GENERIC = "喔~冰山！在地面上应该不会有船在撞上去了吧。",
            MELTED = "化掉了 等到冬天在见吧。",
        },
        ROCK_ICE_MELTED = "Won't be useful until it freezes again.",
        ICE = "嗷喔 还真挺凉的。",
        ROCKS = "一些小石头块。",
        ROOK = "Storm the castle!",
        ROPE = "Some short lengths of rope.",
        ROTTENEGG = "Ew! It stinks!",
        ROYAL_JELLY = "It infuses the eater with the power of science!",
        JELLYBEAN = "One part jelly, one part bean.",
        SADDLE_BASIC = "That'll allow the mounting of some smelly animal.",
        SADDLE_RACE = "This saddle really flies!",
        SADDLE_WAR = "The only problem is the saddle sores.",
        SADDLEHORN = "This could take a saddle off.",
        SALTLICK = "大多数牛儿们很喜欢舔这个方块。",
        BRUSH = "I bet the beefalo really like this.",
		SANITYROCK =
		{
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it cooled down.",
			GENERIC = "没有一点树叶 好丑。",
			PICKED = "That'll teach him.",
			DISEASED = "It looks pretty sick.",
			DISEASING = "Err, something's not right.",
		},
   		SCARECROW = 
   		{
			GENERIC = "这稻草人好像原来不长这样吧？",
			BURNING = "有人让那个稻草人吃乌鸦。",
			BURNT = "看来有人谋杀了它。",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "可以制作..嗯...美丽的雕像？",
			BLOCK = "Ready for sculpting.",
			SCULPTURE = "A masterpiece!",
			BURNT = "Burnt right down.",
   		},
        SCULPTURE_KNIGHTHEAD = "Where's the rest of it?",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "It's an odd marble statue.",
			UNCOVERED = "I guess he cracked under the pressure.",
			FINISHED = "At least it's back in one piece now.",
			READY = "Something's moving inside.",
		},
        SCULPTURE_BISHOPHEAD = "Is that a head?",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "It looks old, but it feels new.",
			UNCOVERED = "There's a big piece missing.",
			FINISHED = "Now what?",
			READY = "Something's moving inside.",
		},
        SCULPTURE_ROOKNOSE = "Where did this come from?",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "It's some sort of marble statue.",
			UNCOVERED = "It's not in the best shape.",
			FINISHED = "All patched up.",
			READY = "Something's moving inside.",
		},
        GARGOYLE_HOUND = "内脏看起来好像都变成这样了。",
        GARGOYLE_WEREPIG = "症状像是美杜莎搞的鬼。",
		SEEDS = "这一颗...又是什么品种的呢？",
		SEEDS_COOKED = "That cooked the life right out of 'em!",
		SEWING_KIT = "Darn it! Darn it all to heck!",
		SEWING_TAPE = "Good for mending.",
		SHOVEL = "There's a lot going on underground.",
		SILK = "It comes from a spider's butt.",
		SKELETON = "Better you than me.",
		SCORCHED_SKELETON = "Spooky.",
		SKULLCHEST = "I'm not sure if I want to open it.",
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
			SLEEPING = "It's barely making a peep.",
		},
		SMALLMEAT = "就这点儿？啧 真不过瘾呐...",
		SMALLMEAT_DRIED = "这一小块还挺上瘾的。",
		SPAT = "What a crusty looking animal.",
		SPEAR = "That's one pointy stick.",
		SPEAR_WATHGRITHR = "It feels very stabby.",
		WATHGRITHRHAT = "Pretty fancy hat, that.",
		SPIDER =
		{
			DEAD = "Ewwww!",
			GENERIC = "I hate spiders.",
			SLEEPING = "I'd better not be here when he wakes up.",
		},
		SPIDERDEN = "Sticky!",
		SPIDEREGGSACK = "I hope these don't hatch. Period.",
		SPIDERGLAND = "It has a tangy, antiseptic smell.",
		SPIDERHAT = "I hope I got all of the spider goo out of it.",
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "额赶紧扔掉吧 都烂了。",
        STAGEHAND =
        {
			AWAKE = "Just keep your hand to yourself, alright?",
			HIDING = "Something's odd here, but I can't put my finger on it.",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "It's a fancy marble statue.",
            TYPE1 = "Don't lose your head now!",
            TYPE2 = "Statuesque.",
            TYPE3 = "I wonder who the artist is.", --bird bath type statue
        },
		STATUEHARP = "What happened to the head?",
		STATUEMAXWELL = "He's a lot shorter in person.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "Looks sharp!",
		STRAWHAT = "Hats always ruin my hair.",
		STUFFEDEGGPLANT = "It's really stuffing!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not lab-safe!",
		TAFFY = "If I had a dentist they'd be mad I ate stuff like that.",
		TALLBIRD = "That's a tall bird!",
		TALLBIRDEGG = "Will it hatch?",
		TALLBIRDEGG_COOKED = "Delicious and nutritious.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Is it shivering or am I?",
			GENERIC = "Looks like it's hatching!",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "You need some food and quick, huh?",
			STARVING = "It has a dangerous look in its eye.",
			SLEEPING = "It's getting some shut-eye",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!",
			GENERIC = "This appears to be a nexus to another world!",
			LOCKED = "There's still something missing.",
			PARTIAL = "Soon, the invention will be complete!",
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.",
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.",
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...",
		TELEPORTATO_RING = "A ring that could focus dimensional energies.",
		TELESTAFF = "That could reveal the world.",
		TENT = 
		{
			GENERIC = "就算是疯子也是得睡觉的。",
			BURNT = "已经烧灰了 还不如在地上睡呢。",
		},
		SIESTAHUT = 
		{
			GENERIC = "在里面小睡一会真的很舒服呢。",
			BURNT = "It won't provide much shade now.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "It's pointy and slimy.",
		TENTACLESPOTS = "I think these were its genitalia.",
		TENTACLE_PILLAR = "A slimy pole.",
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Something to hold back the night.",
		TRANSISTOR = "It's whirring with electricity.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!",
		TREASURECHEST = 
		{
			GENERIC = "一款可以储存一些破东西或者破回忆的箱子。",
			BURNT = "烧的脆脆的储存不了东西了。",
		},
		TREASURECHEST_TRAP = "How convenient!",
		SACRED_CHEST = 
		{
			GENERIC = "I hear whispers. It wants something.",
			LOCKED = "It's passing its judgment.",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.",
		
		TRINKET_1 = "Melted. Maybe Willow had some fun with them?", --Melted Marbles
		TRINKET_2 = "What's kazoo with you?", --Fake Kazoo
		TRINKET_3 = "The knot is stuck. Forever.", --Gord's Knot
		TRINKET_4 = "It must be some kind of religious artifact.", --Gnome
		TRINKET_5 = "Sadly it's too small for me to escape on.", --Toy Rocketship
		TRINKET_6 = "Their electricity carrying days are over.", --Frazzled Wires
		TRINKET_7 = "There's no time for fun and games!", --Ball and Cup
		TRINKET_8 = "Great. All of my tub stopping needs are met.", --Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", --Mismatched Buttons
		TRINKET_10 = "They've quickly become Wes' favorite prop.", --Dentures
		TRINKET_11 = "Hal whispers beautiful lies to me.", --Lying Robot
		TRINKET_12 = "That's just asking to be experimented on.", --Dessicated Tentacle
		TRINKET_13 = "It must be some kind of religious artifact.", --Gnomette
		TRINKET_14 = "Now if I only had some tea...", --Leaky Teacup
		TRINKET_15 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_16 = "...Maxwell left his stuff out again.", --Pawn
		TRINKET_17 = "A horrifying utensil fusion. Maybe science *can* go too far.", --Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", --Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", --Unbalanced Top
		TRINKET_20 = "Wigfrid keeps jumping out and hitting me with it?!", --Backscratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", --Egg Beater
		TRINKET_22 = "I have a few theories about this string.", --Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", --Shoehorn
		TRINKET_24 = "I think Wickerbottom had a cat.", --Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", --Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", --Potato Cup
		TRINKET_27 = "If you unwound it you could poke someone from really far away.", --Coat Hanger
		TRINKET_28 = "How Machiavellian.", --Rook
        TRINKET_29 = "How Machiavellian.", --Rook
        TRINKET_30 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_31 = "Honestly, he just leaves them out wherever.", --Knight
        TRINKET_32 = "I know someone who'd have a ball with this!", --Cubic Zirconia Ball
        TRINKET_33 = "I hope this doesn't attract spiders.", --Spider Ring
        TRINKET_34 = "Let's make a wish. For science.", --Monkey Paw
        TRINKET_35 = "Hard to find a good flask around here.", --Empty Elixir
        TRINKET_36 = "I might need these after all that candy.", --Faux fangs
        TRINKET_37 = "I don't believe in the supernatural.", --Broken Stake
        TRINKET_38 = "I think it came from another world. One with grifts.", -- Binoculars Griftlands trinket
        TRINKET_39 = "I wonder where the other one is?", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Holding it makes me feel like bartering.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "It's a little warm to the touch.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "It's full of someone's childhood memories.", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "It's not very good at jumping.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's some sort of plant specimen.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "It's picking up frequencies from another world.", -- Odd Radio ONI trinket
        TRINKET_46 = "Maybe a tool for testing aerodynamics?", -- Hairdryer ONI trinket
        
        HALLOWEENCANDY_1 = "The cavities are probably worth it, right?",
        HALLOWEENCANDY_2 = "What corruption of science grew these?",
        HALLOWEENCANDY_3 = "It's... corn.",
        HALLOWEENCANDY_4 = "They wriggle on the way down.",
        HALLOWEENCANDY_5 = "My teeth are going to have something to say about this tomorrow.",
        HALLOWEENCANDY_6 = "I... don't think I'll be eating those.",
        HALLOWEENCANDY_7 = "Everyone'll be raisin' a fuss over these.",
        HALLOWEENCANDY_8 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_9 = "Sticks to your teeth.",
        HALLOWEENCANDY_10 = "Only a sucker wouldn't love this.",
        HALLOWEENCANDY_11 = "Much better tasting than the real thing.",
        HALLOWEENCANDY_12 = "Did that candy just move?", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Oh, my poor jaw.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I don't do well with spice.", --Hot Lava pepper candy
        CANDYBAG = "It's some sort of delicious pocket dimension for sugary treats.",

		HALLOWEEN_ORNAMENT_1 = "A spectornament I could hang in a tree.",
		HALLOWEEN_ORNAMENT_2 = "Completely batty decoration.",
		HALLOWEEN_ORNAMENT_3 = "This wood look good hanging somewhere.", 
		HALLOWEEN_ORNAMENT_4 = "Almost i-tentacle to the real ones.",
		HALLOWEEN_ORNAMENT_5 = "Eight-armed adornment.",
		HALLOWEEN_ORNAMENT_6 = "Everyone's raven about tree decorations these days.", 

		HALLOWEENPOTION_DRINKS_WEAK = "I was hoping for something bigger.",
		HALLOWEENPOTION_DRINKS_POTENT = "A potent potion.",
        HALLOWEENPOTION_BRAVERY = "Full of grit.",
		HALLOWEENPOTION_MOON = "Infused with transforming such-and-such.",
		HALLOWEENPOTION_FIRE_FX = "Crystallized inferno.", 
		MADSCIENCE_LAB = "啧......妈的...",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.", 
		LIVINGTREE_SAPLING = "It'll grow up big and horrifying.",

        DRAGONHEADHAT = "So who gets to be the head?",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "放点浆果？ 那些火鸡看起来挺喜欢的呢。",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Filled with explosion science!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside?",
        WARGSHRINE = 
        {
            GENERIC = "I should make something fun.",
            EMPTY = "我猜它需要叼一个骨头？还是火把。",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "It burned down.",
        },
        CLAYWARG = 
        {
        	GENERIC = "A terror cotta monster!",
        	STATUE = "Did it just move?",
        },
        CLAYHOUND = 
        {
        	GENERIC = "It's been unleashed!",
        	STATUE = "It looks so real.",
        },
        HOUNDWHISTLE = "This'd stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "That thing's the leashed of my worries.",
        CHESSPIECE_CLAYWARG = "And I didn't even get eaten!",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "猪 也是能吃肉食的。",
            BURNT = "Burnt out.",
		},
		PIG_TOKEN = "This looks important.",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "A feast fit for me.",
		YOTP_FOOD2 = "A meal only a beast would love.",
		YOTP_FOOD3 = "Nothing fancy.",

		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "He's got gold fever!", --RED
		PIGELITE3 = "Here's mud in your eye!", --WHITE
		PIGELITE4 = "Wouldn't you rather hit someone else?", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "He's got gold fever!", --RED
		PIGELITEFIGHTER3 = "Here's mud in your eye!", --WHITE
		PIGELITEFIGHTER4 = "Wouldn't you rather hit someone else?", --GREEN

		BISHOP_CHARGE_HIT = "Ow!",
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "Somehow even more nasal than before.",
		TRUNK_SUMMER = "A light breezy trunk.",
		TRUNK_WINTER = "A thick, hairy trunk.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "I always hate when my hair gets wet and poofy.",
		GRASS_UMBRELLA = "My hair looks good wet... it's when it dries that's the problem.",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "I'm waffling on whether it needs more syrup.",
		WALL_HAY = 
		{	
			GENERIC = "Hmmmm. I guess that'll have to do.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "This seems like a bad idea.",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "还蛮古老的。",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "挺光滑的呢。",
		WALL_MOONROCK_ITEM = "Very light, but surprisingly tough.",
		FENCE = "It's just a wood fence.",
        FENCE_ITEM = "All we need to build a nice, sturdy fence.",
        FENCE_GATE = "It opens. And closes sometimes, too.",
        FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",
		WALRUS = "Walruses are natural predators.",
		WALRUSHAT = "It's covered with walrus hairs.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.",
			GENERIC = "It looks warm and cozy inside.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARDROBE = 
		{
			GENERIC = "里面装满了我的衣服 以及一些回忆。",
            BURNING = "That's burning fast!",
			BURNT = "It's out of style now.",
		},
		WARG = "You might be something to reckon with, big dog.",
		WASPHIVE = "I think those bees are mad.",
		WATERBALLOON = "What a scientific marvel!",
		WATERMELON = "Sticky sweet.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WAXWELLJOURNAL = "Spooky.",
		WETGOOP = "It tastes like nothing.",
        WHIP = "Nothing like loud noises to help keep the peace.",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER = 
		{
			GENERIC = "大型水银温度计 额还是酒精的？",
			BURNT = "烧毁了...应该是酒精温度计吧？",
		},

        WINTER_TREE =
        {
            BURNT = "That puts a damper on the festivities.",
            BURNING = "That was a mistake, I think.",
            CANDECORATE = "如果不看那些恶心的针 一定会很好看的。",
            YOUNG = "一颗小树。",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "这盆栽看起来蛮适合种圣诞树的。",
            BURNT = "That puts a damper on the festivities.",
		},
        WINTER_ORNAMENT = "Every scientist appreciates a good bauble.",
        WINTER_ORNAMENTLIGHT = "A tree's not complete without some electricity.",
        WINTER_ORNAMENTBOSS = "This one is especially impressive.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",

        WINTER_FOOD1 = "The anatomy's not right, but I'll overlook it.", --gingerbread cookie
        WINTER_FOOD2 = "I'm going to eat forty. For science.", --sugar cookie
        WINTER_FOOD3 = "A Yuletide toothache waiting to happen.", --candy cane
        WINTER_FOOD4 = "....看着就没胃口", --fruitcake
        WINTER_FOOD5 = "It's nice to eat something other than berries for once.", --yule log cake
        WINTER_FOOD6 = "I'm puddin' that straight in my mouth!", --plum pudding
        WINTER_FOOD7 = "It's a hollowed apple filled with yummy juice.", --apple cider
        WINTER_FOOD8 = "How does it stay warm? A thermodynamical mug?", --hot cocoa
        WINTER_FOOD9 = "Can science explain why it tastes so good?", --eggnog

        KLAUS = "What on earth is that thing!",
        KLAUS_SACK = "We should definitely open that.",
		KLAUSSACKKEY = "It's really fancy for a deer antler.",
		WORMHOLE =
		{
			GENERIC = "挺恶心的。",
			OPEN = "哈 挺佩服敢跳进这虫子嘴里的家伙。",
		},
		WORMHOLE_LIMITED = "这死虫子生病了？",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know that I did.",        
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "The beating of this hideous heart will bring a ghost back to life!",
		SHADOWHEART = "The power of science must have reanimated it...",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "It depicts an old civilization. The people look hungry and scared.",
			LINE_2 = "This tablet is too worn to make out.",
			LINE_3 = "Something dark creeps over the city and its people.",
			LINE_4 = "The people are shedding their skins. They look different underneath.",
			LINE_5 = "It shows a massive, technologically advanced city.",
		},
        ATRIUM_STATUE = "It doesn't seem fully real.",
        ATRIUM_LIGHT = 
        {
			ON = "A truly unsettling light.",
			OFF = "Something must power it.",
		},
        ATRIUM_GATE =
        {
			ON = "Back in working order.",
			OFF = "The essential components are still intact.",
			CHARGING = "It's gaining power.",
			DESTABILIZING = "The gateway is destabilizing.",
			COOLDOWN = "It needs time to recover. Me too.",
        },
        ATRIUM_KEY = "There is power emanating from it.",
		LIFEINJECTOR = "A scientific breakthrough! The cure!",
		SKELETON_PLAYER =
		{
			MALE = "%s must've died performing an experiment with %s.",
			FEMALE = "%s must've died performing an experiment with %s.",
			ROBOT = "%s must've died performing an experiment with %s.",
			DEFAULT = "%s must've died performing an experiment with %s.",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		ROCK_MOON = "陨石 看样子应该是从月球过来的。",
		MOONROCKNUGGET = "陨石 看样子应该是从月球过来的。1",
		MOONROCKCRATER = "I should stick something shiny in it. For research.",
		MOONROCKSEED = "There's science inside!",

        REDMOONEYE = "It can see and be seen for miles!",
        PURPLEMOONEYE = "Makes a good marker, but I wish it'd stop looking at me.",
        GREENMOONEYE = "That'll keep a watchful eye on the place.",
        ORANGEMOONEYE = "No one could get lost with that thing looking out for them.",
        YELLOWMOONEYE = "That ought to show everyone the way.",
        BLUEMOONEYE = "It's always smart to keep an eye out.",

        --Arena Event
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL = 
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quickened my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",
		
        QUAGMIRE_HOE = "It's a farming instrument.",
        
        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",
        
		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
        QUAGMIRE_POT = "This one holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},
		
		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",

		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",

		
		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",
        
        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },
        
        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",
        
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",
        
        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",
        
        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "还蛮吓人的。",
        	OFF = "一巧妙的投石机缺失了他的心脏。",
        	BURNING = "火有够大的。",
        	BURNT = "可惜了。",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "总算是体验到站在舞台上是什么感觉了。",
        	OFF = "没有电 它该如何照亮别人",
        	BURNING = "火有够大的。",
        	BURNT = "可惜了。",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "它正在努力的干活中。",
        	LOWPOWER = "电量正在下降。",
        	OFF = "罢工了 也或许是生命走到了尽头。",
        	BURNING = "火有够大的。",
        	BURNT = "可惜了。",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "蛮神奇的。",
        	LOWPOWER = "嗯...快没电了。",
        	OFF = "用宝石获取电的奇妙机器 不错。",
        	BURNING = "火有够大的。",
        	BURNT = "哎 可惜了。",
        },

        --Wormwood
        COMPOSTWRAP = "Wormwood offered me a bite, but I respectfully declined.",
        ARMOR_BRAMBLE = "The best offense is a good defense.",
        TRAP_BRAMBLE = "It'd really poke whoever stepped on it.",

        BOATFRAGMENT03 = "请问 这是谁的船？",
        BOATFRAGMENT04 = "已经快要泡烂了。",
        BOATFRAGMENT05 = "一些破碎的船板。",
		BOAT_LEAK = "所以就看着这洞直冒水吗？",
        MAST = "有了这个大风就可以带船前进了。",
        SEASTACK = "It's a rock.",
        FISHINGNET = "Nothing but net.",
        ANTCHOVIES = "Yeesh. Can I toss it back?",
        STEERINGWHEEL = "这个应该跟开车一样吧？",
        ANCHOR = "这钩子还挺沉的。",
        BOATPATCH = "以防万一的补丁。",
        DRIFTWOOD_TREE = 
        {
            BURNING = "That driftwood's burning!",
            BURNT = "Doesn't look very useful anymore.",
            CHOPPED = "There might still be something worth digging up.",
            GENERIC = "A dead tree that washed up on shore.",
        },

        DRIFTWOOD_LOG = "It floats on water.",

        MOON_TREE = 
        {
            BURNING = "The tree is burning!",
            BURNT = "The tree burned down.",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "I didn't know trees grew on the moon.",
        },
		MOON_TREE_BLOSSOM = "It fell from the moon tree.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "My vast scientific knowledge tells me it's... a moon butterfly.",
        	HELD = "I've got you now.",
        },
		MOONBUTTERFLYWINGS = "We're really winging it now.",
        MOONBUTTERFLY_SAPLING = "A moth turned into a tree? Lunacy!",
        ROCK_AVOCADO_FRUIT = "I'd shatter my teeth on that.",
        ROCK_AVOCADO_FRUIT_RIPE = "Uncooked stone fruit is the pits.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It's actually soft enough to eat now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "It's growing.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "Its fruit growing days are over.",
			WITHERED = "It's pretty hot out.",
			GENERIC = "It's a bush... from the moon!",
			PICKED = "It'll take awhile to grow more fruit.",
			DISEASED = "It looks pretty sick.",
            DISEASING = "Err, something's not right.",
			BURNING = "It's burning!",
		},
        DEAD_SEA_BONES = "让我看看那个倒霉蛋子死在这了？",
        HOTSPRING = 
        {
        	GENERIC = "If only I could soak my weary bones.",
        	BOMBED = "Just a simple chemical reaction.",
        	GLASS = "Water turns to glass under the moon. That's just science.",
			EMPTY = "I'll just have to wait for it to fill up again.",
        },
        MOONGLASS = "It's very sharp.",
        MOONGLASS_ROCK = "越漂亮的玻璃 越是得小心被划伤呢。",
        BATHBOMB = "It's just textbook chemistry.",
        TRAP_STARFISH =
        {
            GENERIC = "Aw, what a cute little starfish!",
            CLOSED = "It tried to chomp me!",
        },
        DUG_TRAP_STARFISH = "It's not fooling anyone now.",
        SPIDER_MOON = 
        {
        	GENERIC = "Oh good. The moon mutated it.",
        	SLEEPING = "Thank science, it stopped moving.",
        	DEAD = "Is it really dead?",
        },
        MOONSPIDERDEN = "That's not a normal spider den.",
		FRUITDRAGON =
		{
			GENERIC = "It's cute, but it's not ripe yet.",
			RIPE = "I think it's ripe now.",
			SLEEPING = "It's snoozing.",
		},
        PUFFIN =
        {
            GENERIC = "I've never seen a live puffin before!",
            HELD = "Catching one ain't puffin to brag about.",
            SLEEPING = "Peacefully huffin' and puffin'.",
        },

		MOONGLASSAXE = "I've made it extra effective.",
		GLASSCUTTER = "I'm not really cut out for fighting.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.",
            MELTED = "It's completely melted.",
        },
        ICEBERG_MELTED = "It's completely melted.",

        MINIFLARE = "I can light it to let everyone know I'm here.",

		MOON_FISSURE = 
		{
			GENERIC = "My brain pulses with peace and terror.", 
			NOLIGHT = "The cracks in this place are starting to show.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "看样子就感觉这不完整吧。",
            GENERIC = "啧...好吵...",
        },

        MOON_ALTAR_IDOL = "蛮大的还。",
        MOON_ALTAR_GLASS = "嗯...这块像一个底座。",
        MOON_ALTAR_SEED = "嗯...我好像在那个书上看过...",

        MOON_ALTAR_ROCK_IDOL = "或许得凿开这块石头咱才知道这到底是是啥。",
        MOON_ALTAR_ROCK_GLASS = "或许得凿开这块石头咱才知道这到底是是啥。",
        MOON_ALTAR_ROCK_SEED = "或许得凿开这块石头咱才知道这到底是是啥。",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "海上生存指南机。",
            BURNT = "已经废了  看啥我可没碰啊。",
        },
        BOAT_ITEM = "It would be nice to do some experiments on the water.",
        STEERINGWHEEL_ITEM = "That's going to be the steering wheel.",
        ANCHOR_ITEM = "Now I can build an anchor.",
        MAST_ITEM = "Now I can build a mast.",
        MUTATEDHOUND = 
        {
        	DEAD = "Now I can breathe easy.",
        	GENERIC = "蛮露骨的。",
        	SLEEPING = "I have a very strong desire to run.",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "That's the end of that.",
			GENERIC = "That thing's terrifying!",
			SLEEPING = "Thank goodness. It's sleeping.",
		},
        CARRAT = 
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "老鼠！？ 哈？？",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "漂浮的海带。",
            PICKED = "漂浮的海带根。",
        },
		BULLKELP_ROOT = "在怎么想也应该种水里吧。",
        KELPHAT = "沾满了粘液 待在头上挺恶心的..不过我不在乎~",
		KELP = "一些海带 当做燃料很不错。 ",
		KELP_COOKED = "海带泥简易的食物。",
		KELP_DRIED = "脆脆小零食~",

		GESTALT = "透明的灵魂 应该是吧。",

		COOKIECUTTER = "I don't like the way it's looking at my boat...",
		COOKIECUTTERSHELL = "A shell of its former self.",
		COOKIECUTTERHAT = "At least my hair will stay dry.",
		SALTSTACK =
		{
			GENERIC = "Are those natural formations?",
			MINED_OUT = "It's mined... it's all mined!",
			GROWING = "I guess it just grows like that.",
		},
		SALTROCK = "Science compels me to lick it.",
		SALTBOX = "感觉 比冰箱差点。",

        MALBATROSS = "A fowl beast indeed!",
        MALBATROSS_FEATHER = "Plucked from a fine feathered fiend.",
        MALBATROSS_BEAK = "Smells fishy.",
        MAST_MALBATROSS_ITEM = "It's lighter than it looks.",
        MAST_MALBATROSS = "额..嘿嘿 这羽毛是那只鸟借我的你信吗？嘿嘿。",
		MALBATROSS_FEATHERED_WEAVE = "I'm making a quill-t!",

        WALKINGPLANK = "Couldn't we have just made a lifeboat?",
        OAR = "Manual ship acceleration.",
		OAR_DRIFTWOOD = "Manual ship acceleration.",

		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Now we're cookin'!",
            DONE = "Now we're done cookin'!",

			COOKING_LONG = "That meal is going to take a while.",
			COOKING_SHORT = "It'll be ready in no-time!",
			EMPTY = "I bet there's nothing in there.",
        },
        
        PORTABLEBLENDER_ITEM = "It mixes all the food.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "This will spice things up.",
            DONE = "Should make things a little tastier.",
        },
        SPICEPACK = "A breakthrough in culinary science!",
        SPICE_GARLIC = "A powerfully potent powder.",
        SPICE_SUGAR = "Sweet! It's sweet!",
        SPICE_CHILI = "A flagon of fiery fluid.",
        SPICE_SALT = "A little sodium's good for the heart.",
        MONSTERTARTARE = "There's got to be something else to eat around here.",
        FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",
        FROGFISHBOWL = "Is that just... frogs stuffed inside a fish?",
        POTATOTORNADO = "Potato, scientifically infused with the power of a tornado!",
        DRAGONCHILISALAD = "I hope I can handle the spice level.",
        GLOWBERRYMOUSSE = "Warly sure can cook.",
        VOLTGOATJELLY = "It's shockingly delicious.",
        NIGHTMAREPIE = "It's a little spooky.",
        BONESOUP = "No bones about it, Warly can cook.",
        MASHEDPOTATOES = "I've heard cooking is basically chemistry. I should try it.",
        POTATOSOUFFLE = "I forgot what good food tasted like.",
        MOQUECA = "He's as talented a chef as I am a scientist.",
        GAZPACHO = "How in science does it taste so good?",
        ASPARAGUSSOUP = "Smells like it tastes.",
        VEGSTINGER = "Can you use the celery as a straw?",
        BANANAPOP = "No, not brain freeze! I need that for science!",
        CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
        SALSA = "So... hot...!",
        PEPPERPOPPER = "What a mouthful!",

        TURNIP = "It's a raw turnip.",
        TURNIP_COOKED = "Cooking is science in practice.",
        TURNIP_SEEDS = "A handful of odd seeds.",
        
        GARLIC = "The number one breath enhancer.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "A handful of odd seeds.",
        
        ONION = "Looks crunchy.",
        ONION_COOKED = "A successful chemical reaction.",
        ONION_SEEDS = "A handful of odd seeds.",
        
        POTATO = "The apples of the earth.",
        POTATO_COOKED = "A successful temperature experiment.",
        POTATO_SEEDS = "A handful of odd seeds.",
        
        TOMATO = "It's red because it's full of science.",
        TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        TOMATO_SEEDS = "A handful of odd seeds.",

        ASPARAGUS = "A vegetable.", 
        ASPARAGUS_COOKED = "Science says it's good for me.",
        ASPARAGUS_SEEDS = "It's asparagus seeds.",

        PEPPER = "Nice and spicy.",
        PEPPER_COOKED = "It was already hot to begin with.",
        PEPPER_SEEDS = "A handful of seeds.",

        WEREITEM_BEAVER = "I guess science works differently up North.",
        WEREITEM_GOOSE = "That thing's giving ME goosebumps!",
        WEREITEM_MOOSE = "A perfectly normal cursed moose thing.",

        MERMHAT = "Finally, I can show my face in public.",
        MERMTHRONE =
        {
            GENERIC = "Looks fit for a swamp king!",
            BURNT = "There was something fishy about that throne anyway.",
        },        
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Just what is she planning?",
            BURNT = "I suppose we'll never know what it was for now.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "It's actually kind of cute.",
            BURNT = "Ugh, the smell!",
        },

        MERMWATCHTOWER_REGULAR = "They seem happy to have found a king.",
        MERMWATCHTOWER_NOKING = "A royal guard with no Royal to guard.",
        MERMKING = "Your Majesty!",
        MERMGUARD = "I feel very guarded around these guys...",
        MERM_PRINCE = "They operate on a first-come, first-sovereigned basis.",

    },

    DESCRIBE_GENERIC = "It's a... thing.",
    DESCRIBE_TOODARK = "It's too dark to see!",
    DESCRIBE_SMOLDERING = "That thing is about to catch fire.",
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
    },
}
