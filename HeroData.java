import java.util.*;
import java.util.stream.*;

public class HeroData {

    // ─── Hero Base Data ────────────────────────────────────────────────────────

    public static class HeroBase {
        public final int id;
        public final String name;
        public final long hp, hpGrowth, physAtk, physGrowth;
        public final long physDef, physDefGrowth, magDef, magDefGrowth;
        public final double critChance, atkSpeed;

        public HeroBase(int id, String name, long hp, long hpGrowth,
                        long physAtk, long physGrowth,
                        long physDef, long physDefGrowth,
                        long magDef, long magDefGrowth,
                        double critChance, double atkSpeed) {
            this.id = id; this.name = name;
            this.hp = hp; this.hpGrowth = hpGrowth;
            this.physAtk = physAtk; this.physGrowth = physGrowth;
            this.physDef = physDef; this.physDefGrowth = physDefGrowth;
            this.magDef = magDef; this.magDefGrowth = magDefGrowth;
            this.critChance = critChance; this.atkSpeed = atkSpeed;
        }

        @Override
        public String toString() {
            return String.format("HeroBase{id=%d, name='%s'}", id, name);
        }
    }

    // ─── Computed Stats ────────────────────────────────────────────────────────

    public static class HeroStats {
        public final int heroID;
        public final String internalName;
        public final int level;
        public final String damageType;
        public final long hp;
        public final double physAtk, physDef, magDef;
        public final double critChance, atkSpeed;
        public final long physGrowth, physBase;
        public final double rawDamage, resistFactor, calcDamage, critDamage, dps;

        public HeroStats(int heroID, String internalName, int level, String damageType,
                         long hp, double physAtk, double physDef, double magDef,
                         double critChance, double atkSpeed, long physGrowth, long physBase,
                         double rawDamage, double resistFactor, double calcDamage,
                         double critDamage, double dps) {
            this.heroID = heroID; this.internalName = internalName;
            this.level = level; this.damageType = damageType;
            this.hp = hp; this.physAtk = physAtk; this.physDef = physDef; this.magDef = magDef;
            this.critChance = critChance; this.atkSpeed = atkSpeed;
            this.physGrowth = physGrowth; this.physBase = physBase;
            this.rawDamage = rawDamage; this.resistFactor = resistFactor;
            this.calcDamage = calcDamage; this.critDamage = critDamage; this.dps = dps;
        }

        @Override
        public String toString() {
            return String.format(
                "HeroStats{name='%s', lv=%d, type=%s, hp=%d, physAtk=%.0f, dps=%.2f}",
                internalName, level, damageType, hp, physAtk, dps);
        }
    }

    // ─── Constants ────────────────────────────────────────────────────────────

    public static final Map<String, Double> RESIST_FACTOR;
    public static final Map<String, Double> RAW_DAMAGE_RATIO;
    public static final List<String> DAMAGE_TYPES = List.of("physical", "magical", "true");
    public static final List<Integer> VALID_LEVELS = List.of(1, 5, 10, 15);

    static {
        Map<String, Double> rf = new LinkedHashMap<>();
        rf.put("physical", 5.0 / 6.0);
        rf.put("magical",  20.0 / 23.0);
        rf.put("true",     1.0);
        RESIST_FACTOR = Collections.unmodifiableMap(rf);

        Map<String, Double> rdr = new LinkedHashMap<>();
        rdr.put("physical", 1.0);
        rdr.put("magical",  0.8);
        rdr.put("true",     0.65);
        RAW_DAMAGE_RATIO = Collections.unmodifiableMap(rdr);
    }

    // ─── Hero Table ───────────────────────────────────────────────────────────

    public static final List<HeroBase> HERO_BASE_TABLE = List.of(
        new HeroBase(1,"hero_gongjianshou",24300000,1500000,1320000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(2,"hero_fuwang",23600000,1400000,1090000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(3,"hero_shikongjianhao",22900000,1300000,1310000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(4,"hero_alice",33200000,2200000,1180000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(5,"hero_nana",26500000,1550000,1000000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(6,"hero_snow",29800000,1800000,1220000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(7,"hero_alucard",24000000,1500000,1340000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(8,"hero_pofa",23300000,1400000,1110000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(9,"hero_xiongmao",22600000,1300000,1330000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(10,"hero_franco",32900000,2200000,1100000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(11,"hero_bane",26200000,1550000,1020000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(12,"hero_qiuyuan",29500000,1800000,1240000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(13,"hero_cowboy",25800000,1500000,1360000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(14,"hero_angel",23000000,1400000,1130000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(15,"hero_eudora",22300000,1300000,1250000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(16,"hero_zhaoyun",32600000,2200000,1120000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(17,"hero_fanny",25900000,1550000,1040000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(18,"hero_shooter",29200000,1800000,1260000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(19,"hero_minotaur",25500000,1500000,1380000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(20,"hero_nextlolita",24800000,1400000,1050000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(21,"hero_ninja",22000000,1300000,1270000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(22,"hero_freya",32300000,2200000,1140000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(23,"hero_mage",25600000,1550000,1060000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(24,"hero_assassin",28900000,1800000,1280000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(25,"hero_kagura",25200000,1500000,1300000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(26,"hero_kongfu",24500000,1400000,1070000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(27,"hero_wukong",23800000,1300000,1290000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(28,"hero_warrior",32000000,2200000,1160000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(29,"hero_xiaohongmao",25300000,1550000,1080000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(30,"hero_lee",28600000,1800000,1200000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(31,"hero_Moskov",24900000,1500000,1320000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(32,"hero_johnson",24200000,1400000,1090000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(33,"hero_xinghunfashi",23500000,1300000,1310000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(34,"hero_gregory",33800000,2200000,1180000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(35,"hero_Hilda",25000000,1550000,1000000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(36,"hero_aurora",28300000,1800000,1220000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(37,"hero_lapulapu",24600000,1500000,1340000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(38,"hero_Vexana",23900000,1400000,1110000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(39,"hero_werewolf",23200000,1300000,1330000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(40,"hero_feilun",33500000,2200000,1100000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(41,"hero_gatot",26800000,1550000,1020000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(42,"hero_moshushi",28000000,1800000,1240000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(43,"hero_rider",24300000,1500000,1360000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(44,"hero_Greckon",23600000,1400000,1130000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(45,"hero_argus",22900000,1300000,1250000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(46,"hero_odette",33200000,2200000,1120000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(47,"hero_lancelot",26500000,1550000,1040000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(48,"hero_digger",29800000,1800000,1260000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(49,"hero_hylos",24000000,1500000,1380000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(50,"hero_zhask",23300000,1400000,1050000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(51,"hero_sdhunter",22600000,1300000,1270000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(52,"hero_fasha",32900000,2200000,1140000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(53,"hero_sniper",26200000,1550000,1060000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(54,"hero_mechwarrior",29500000,1800000,1280000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(55,"hero_angela",25800000,1500000,1300000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(56,"hero_Gusin",23000000,1400000,1070000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(57,"hero_newfiremagic",22300000,1300000,1290000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(58,"hero_asura",32600000,2200000,1160000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(59,"hero_fashutanke",25900000,1550000,1080000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(60,"hero_nextninjagirl",29200000,1800000,1200000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(61,"hero_change",25500000,1500000,1320000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(62,"hero_birdman",24800000,1400000,1090000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(63,"hero_selena",22000000,1300000,1310000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(64,"hero_jubi",32300000,2200000,1180000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(65,"hero_claude",25600000,1550000,1000000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(66,"hero_windmagic",28900000,1800000,1220000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(67,"hero_Leomord",25200000,1500000,1340000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(68,"hero_balancemagic",24500000,1400000,1110000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(69,"hero_badninja",23800000,1300000,1330000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(70,"hero_newshuren",32000000,2200000,1100000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(71,"hero_jimmy",25300000,1550000,1020000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(72,"hero_Thalmuz",28600000,1800000,1240000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(73,"hero_lanbote",24900000,1500000,1360000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(74,"hero_Kyanzittha",24200000,1400000,1130000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(75,"hero_kadita",23500000,1300000,1250000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(76,"hero_alchemist",33800000,2200000,1120000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(77,"hero_badang",25000000,1550000,1040000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(78,"hero_munaiyi",28300000,1800000,1260000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(79,"hero_mike",24600000,1500000,1380000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(80,"hero_Guinevere",23900000,1400000,1050000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(81,"hero_Esmeralda",23200000,1300000,1270000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(82,"hero_terizla",33500000,2200000,1140000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(83,"hero_fireman",26800000,1550000,1060000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(84,"hero_zeo",28000000,1800000,1280000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(85,"hero_diyasi",24300000,1500000,1300000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(86,"hero_baozhafashi",23600000,1400000,1070000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(87,"hero_xuanwu",22900000,1300000,1290000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(88,"hero_xiongnv",33200000,2200000,1160000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(89,"hero_wanwan",26500000,1550000,1080000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(90,"hero_nvqishi",29800000,1800000,1200000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(91,"hero_couplemage",24000000,1500000,1320000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(92,"hero_kamila",23300000,1400000,1090000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(93,"hero_atelasi",22600000,1300000,1310000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(94,"hero_BBsheshou",32900000,2200000,1180000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(95,"hero_BlackDragon",26200000,1550000,1000000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(96,"hero_magneticmage",29500000,1800000,1220000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(97,"hero_beilanita",25800000,1500000,1340000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(98,"hero_desertwarrior",23000000,1400000,1110000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(99,"hero_longxi",22300000,1300000,1330000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(100,"hero_chargingshooter",32600000,2200000,1100000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(101,"hero_huatufashi",25900000,1550000,1020000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(102,"hero_madierda",29200000,1800000,1240000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(103,"hero_pakuite",25500000,1500000,1360000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(104,"hero_gloo",24800000,1400000,1130000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(105,"hero_budika",22000000,1300000,1250000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(106,"hero_Phoveus",32300000,2200000,1120000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(107,"hero_entropy",25600000,1550000,1040000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(108,"hero_Aulus",28900000,1800000,1260000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(109,"hero_Aamon",25200000,1500000,1380000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(110,"hero_walundina",24500000,1400000,1050000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(111,"hero_Idun",23800000,1300000,1270000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(112,"hero_chloe",32000000,2200000,1140000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(113,"hero_yin",25300000,1550000,1060000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(114,"hero_Melissa",28600000,1800000,1280000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(115,"hero_xavier",24900000,1500000,1300000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(116,"hero_julian",24200000,1400000,1070000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(117,"hero_feiden",23500000,1300000,1290000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(118,"hero_joy",33800000,2200000,1160000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(119,"hero_jufa",25000000,1550000,1080000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(120,"hero_arlott",28300000,1800000,1200000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(121,"hero_ixia",24600000,1500000,1320000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(122,"hero_NolanOsborne",23900000,1400000,1090000,60000,180000,28000,140000,18000,0.02,0.85),
        new HeroBase(123,"hero_cici",23200000,1300000,1310000,85000,170000,25000,100000,10000,0.08,1.05),
        new HeroBase(124,"hero_Chip",33500000,2200000,1180000,65000,300000,45000,210000,22000,0.02,0.82),
        new HeroBase(125,"hero_zhuxin",26800000,1550000,1000000,55000,210000,32000,200000,20000,0.03,0.90),
        new HeroBase(126,"hero_kaijiacike",28000000,1800000,1220000,80000,240000,36000,150000,15000,0.05,0.87),
        new HeroBase(127,"hero_Lukas",24300000,1500000,1340000,90000,210000,30000,110000,12000,0.10,1.00),
        new HeroBase(128,"hero_Baolishaonv",23600000,1400000,1110000,60000,160000,28000,140000,18000,0.02,0.85),
        new HeroBase(129,"hero_wuzetian",22900000,1300000,1330000,85000,150000,25000,100000,10000,0.08,1.05),
        new HeroBase(130,"hero_Obsidia",33200000,2200000,1100000,65000,320000,45000,210000,22000,0.02,0.82),
        new HeroBase(131,"hero_Cirrus",26500000,1550000,1020000,55000,230000,32000,200000,20000,0.03,0.90),
        new HeroBase(132,"hero_Marcel",29800000,1800000,1240000,80000,220000,36000,150000,15000,0.05,0.87),
        new HeroBase(133,"hero_Hirara",24000000,1500000,1360000,90000,190000,30000,110000,12000,0.10,1.00),
        new HeroBase(134,"hero_Vexana2",23300000,1400000,1130000,60000,180000,28000,140000,18000,0.02,0.85)
    );

    // ─── Lookup Maps ──────────────────────────────────────────────────────────

    private static final Map<Integer, HeroBase> BY_ID;
    private static final Map<String, HeroBase> BY_NAME;

    static {
        Map<Integer, HeroBase> byId = new HashMap<>();
        Map<String, HeroBase> byName = new HashMap<>();
        for (HeroBase h : HERO_BASE_TABLE) {
            byId.put(h.id, h);
            byName.put(h.name, h);
        }
        BY_ID   = Collections.unmodifiableMap(byId);
        BY_NAME = Collections.unmodifiableMap(byName);
    }

    // ─── Core Math ────────────────────────────────────────────────────────────

    public static double scaleStat(long base, long growth, int level) {
        return base + growth * (level - 1);
    }

    private static double r2(double n) {
        return Math.round(n * 100.0) / 100.0;
    }

    // ─── Lookup ───────────────────────────────────────────────────────────────

    /** Find by numeric id or by internal name. Returns null if not found. */
    public static HeroBase getHero(int id) {
        return BY_ID.get(id);
    }

    public static HeroBase getHero(String name) {
        return BY_NAME.get(name);
    }

    // ─── computeStats ─────────────────────────────────────────────────────────

    public static HeroStats computeStats(HeroBase base, int level, String damageType) {
        if (base == null) throw new IllegalArgumentException("Unknown hero");
        if (level < 1 || level > 15) throw new IllegalArgumentException("Level must be 1–15");
        if (!RESIST_FACTOR.containsKey(damageType))
            throw new IllegalArgumentException("damageType must be physical | magical | true");

        double physAtk  = r2(scaleStat(base.physAtk, base.physGrowth, level));
        long   hp       = Math.round(scaleStat(base.hp, base.hpGrowth, level));
        double physDef  = r2(scaleStat(base.physDef, base.physDefGrowth, level));
        double magDef   = r2(scaleStat(base.magDef, base.magDefGrowth, level));

        double rawDamage  = r2(physAtk * RAW_DAMAGE_RATIO.get(damageType));
        double resFactor  = RESIST_FACTOR.get(damageType);
        double calcDamage = r2(rawDamage * resFactor);
        double critDamage = "physical".equals(damageType) ? r2(calcDamage * 2) : calcDamage;
        double dps        = r2(calcDamage * base.atkSpeed);

        return new HeroStats(
            base.id, base.name, level, damageType,
            hp, physAtk, physDef, magDef,
            base.critChance, base.atkSpeed, base.physGrowth, base.physAtk,
            rawDamage, r2(resFactor), calcDamage, critDamage, dps
        );
    }

    // ─── getStats ─────────────────────────────────────────────────────────────

    public static HeroStats getStats(int id, int level, String damageType) {
        HeroBase base = getHero(id);
        if (base == null) throw new IllegalArgumentException("Hero not found: " + id);
        return computeStats(base, level, damageType);
    }

    public static HeroStats getStats(String name, int level, String damageType) {
        HeroBase base = getHero(name);
        if (base == null) throw new IllegalArgumentException("Hero not found: " + name);
        return computeStats(base, level, damageType);
    }

    // ─── getStatsAllDamageTypes ────────────────────────────────────────────────

    public static Map<String, HeroStats> getStatsAllDamageTypes(String name, int level) {
        HeroBase base = getHero(name);
        if (base == null) throw new IllegalArgumentException("Hero not found: " + name);
        Map<String, HeroStats> result = new LinkedHashMap<>();
        for (String dt : DAMAGE_TYPES) result.put(dt, computeStats(base, level, dt));
        return result;
    }

    // ─── getLevelProgression ──────────────────────────────────────────────────

    public static List<HeroStats> getLevelProgression(String name, String damageType) {
        HeroBase base = getHero(name);
        if (base == null) throw new IllegalArgumentException("Hero not found: " + name);
        return VALID_LEVELS.stream()
            .map(lv -> computeStats(base, lv, damageType))
            .collect(Collectors.toList());
    }

    // ─── compareHeroes ────────────────────────────────────────────────────────

    public static class CompareResult {
        public final String heroA, heroB;
        public final int level;
        public final String damageType;
        public final HeroStats statsA, statsB;
        public final Map<String, Double> delta;

        CompareResult(String heroA, String heroB, int level, String damageType,
                      HeroStats statsA, HeroStats statsB, Map<String, Double> delta) {
            this.heroA = heroA; this.heroB = heroB;
            this.level = level; this.damageType = damageType;
            this.statsA = statsA; this.statsB = statsB;
            this.delta = delta;
        }
    }

    public static CompareResult compareHeroes(String nameA, String nameB,
                                               int level, String damageType) {
        HeroStats a = getStats(nameA, level, damageType);
        HeroStats b = getStats(nameB, level, damageType);
        Map<String, Double> delta = new LinkedHashMap<>();
        delta.put("hp",          r2(b.hp         - a.hp));
        delta.put("physAtk",     r2(b.physAtk     - a.physAtk));
        delta.put("physDef",     r2(b.physDef     - a.physDef));
        delta.put("magDef",      r2(b.magDef      - a.magDef));
        delta.put("critChance",  r2(b.critChance  - a.critChance));
        delta.put("atkSpeed",    r2(b.atkSpeed    - a.atkSpeed));
        delta.put("rawDamage",   r2(b.rawDamage   - a.rawDamage));
        delta.put("calcDamage",  r2(b.calcDamage  - a.calcDamage));
        delta.put("critDamage",  r2(b.critDamage  - a.critDamage));
        delta.put("dps",         r2(b.dps         - a.dps));
        return new CompareResult(a.internalName, b.internalName, level, damageType, a, b, delta);
    }

    // ─── topByDPS ─────────────────────────────────────────────────────────────

    public static List<HeroStats> topByDPS(int topN, int level, String damageType) {
        return HERO_BASE_TABLE.stream()
            .map(base -> computeStats(base, level, damageType))
            .sorted(Comparator.comparingDouble((HeroStats s) -> s.dps).reversed())
            .limit(topN)
            .collect(Collectors.toList());
    }

    // ─── topByHP ──────────────────────────────────────────────────────────────

    public static List<HeroStats> topByHP(int topN, int level) {
        return HERO_BASE_TABLE.stream()
            .map(base -> computeStats(base, level, "physical"))
            .sorted(Comparator.comparingLong((HeroStats s) -> s.hp).reversed())
            .limit(topN)
            .collect(Collectors.toList());
    }

    // ─── searchHeroes ─────────────────────────────────────────────────────────

    public static List<HeroBase> searchHeroes(String query) {
        String q = query.toLowerCase();
        return HERO_BASE_TABLE.stream()
            .filter(h -> h.name.toLowerCase().contains(q))
            .collect(Collectors.toList());
    }

    // ─── listHeroes ───────────────────────────────────────────────────────────

    public static List<String> listHeroes() {
        return HERO_BASE_TABLE.stream()
            .map(h -> h.name)
            .collect(Collectors.toList());
    }

    // ─── getAllRows ───────────────────────────────────────────────────────────

    public static List<HeroStats> getAllRows() {
        List<HeroStats> rows = new ArrayList<>();
        for (HeroBase base : HERO_BASE_TABLE)
            for (String dt : DAMAGE_TYPES)
                for (int lv : VALID_LEVELS)
                    rows.add(computeStats(base, lv, dt));
        return rows;
    }

}
