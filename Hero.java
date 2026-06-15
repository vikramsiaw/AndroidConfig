import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Hero.java — parsed from Hero.bytes (mulonggame_table_1)
 *
 * Fungsionalitas:
 *  - Data class dengan semua atribut hero sesuai binary
 *  - int  attributes = Integer.MAX_VALUE  (2147483647)
 *  - float attributes = 999999f
 *  - Static registry berisi SEMUA 171 hero dari file bytes
 *  - findById(), findByName(), getAll(), getSortedByHp(), dll.
 *  - compareTo() berdasarkan heroId
 *  - equals() / hashCode() berdasarkan name
 *  - toString() ringkas
 */
public class Hero implements Comparable<Hero> {

    // ─────────────────────────────────────────────────────────────────
    //  Field Declarations  (semua nilai max sesuai permintaan)
    // ─────────────────────────────────────────────────────────────────

    public String heroName         = "";          // internal key, e.g. "hero_gongjianshou"
    public int    heroId           = Integer.MAX_VALUE;  // e.g. 101
    public int    voiceId          = Integer.MAX_VALUE;  // e.g. 1011
    public String moveVoice        = "";
    public String deadVoice        = "";

    // Base combat stats
    public int    baseHp           = Integer.MAX_VALUE;
    public int    baseAtk          = Integer.MAX_VALUE;
    public int    magicAtk         = Integer.MAX_VALUE;
    public int    moveSpeed        = Integer.MAX_VALUE;
    public int    moveSpeedRaw     = Integer.MAX_VALUE;  // internal = moveSpeed × 40
    public float  atkSpeed         = Float.MAX_VALUE;
    public int    magicResist      = Integer.MAX_VALUE;
    public int    physDefense      = Integer.MAX_VALUE;
    public int    hpRegen          = Integer.MAX_VALUE;
    public int    mana             = Integer.MAX_VALUE;
    public int    manaRegen        = Integer.MAX_VALUE;

    // Extended fields parsed from binary (field_4, field_8, field_52, field_56)
    public int    field4           = Integer.MAX_VALUE;  // likely max-level HP or ATK cap
    public int    field8           = Integer.MAX_VALUE;  // likely base-level ATK range/reach
    public int    field52          = Integer.MAX_VALUE;  // special mechanic / transform flag
    public int    field56          = Integer.MAX_VALUE;  // resource/role bitmask

    // ─────────────────────────────────────────────────────────────────
    //  Constructors
    // ─────────────────────────────────────────────────────────────────

    public Hero() {}

    /** Full constructor — used internally by the static registry. */
    public Hero(String heroName, int heroId, int voiceId,
                String moveVoice, String deadVoice,
                int baseHp, int baseAtk, int magicAtk,
                int moveSpeed, int moveSpeedRaw, float atkSpeed,
                int magicResist, int physDefense,
                int hpRegen, int mana, int manaRegen,
                int field4, int field8, int field52, int field56) {
        this.heroName     = heroName;
        this.heroId       = heroId;
        this.voiceId      = voiceId;
        this.moveVoice    = moveVoice;
        this.deadVoice    = deadVoice;
        this.baseHp       = baseHp;
        this.baseAtk      = baseAtk;
        this.magicAtk     = magicAtk;
        this.moveSpeed    = moveSpeed;
        this.moveSpeedRaw = moveSpeedRaw;
        this.atkSpeed     = atkSpeed;
        this.magicResist  = magicResist;
        this.physDefense  = physDefense;
        this.hpRegen      = hpRegen;
        this.mana         = mana;
        this.manaRegen    = manaRegen;
        this.field4       = field4;
        this.field8       = field8;
        this.field52      = field52;
        this.field56      = field56;
    }

    // ─────────────────────────────────────────────────────────────────
    //  Object overrides
    // ─────────────────────────────────────────────────────────────────

    @Override
    public int compareTo(Hero other) {
        return Integer.compare(this.voiceId, other.voiceId);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Hero)) return false;
        return heroName.equals(((Hero) o).heroName);
    }

    @Override
    public int hashCode() {
        return heroName.hashCode();
    }

    @Override
    public String toString() {
        return String.format("Hero{id=%d, name='%s', hp=%d, atk=%d, ms=%d, as=%.2f, def=%d, mr=%d, hpReg=%d, mp=%d}",
                heroId, heroName, baseHp, baseAtk, moveSpeed, atkSpeed, physDefense, magicResist, hpRegen, mana);
    }

    // ─────────────────────────────────────────────────────────────────
    //  Static Registry — all 171 heroes from Hero.bytes
    // ─────────────────────────────────────────────────────────────────

    private static final Map<String, Hero> BY_NAME = new HashMap<>();
    private static final Map<Integer, List<Hero>> BY_ID = new HashMap<>();
    private static final List<Hero> ALL = new ArrayList<>();

    static {
        register(new Hero("hero_gongjianshou",  101, 1011, "Play_vo_1011_move|Play_vo_1011_move_atk", "Play_vo_1011_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_fuwang",        102, 1021, "Play_vo_1021_move|Play_vo_1021_move_atk", "Play_vo_1021_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextfuwang",    102, 1021, "Play_vo_1021_move", "Play_vo_1021_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_shikongjianhao",103, 1031, "Play_vo_1031_move|Play_vo_1031_move_atk", "Play_vo_1031_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_alice",         104, 1041, "Play_vo_1041_move|Play_vo_1041_move_atk", "Play_vo_1041_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nana",          105, 1051, "Play_vo_1051_move|Play_vo_1051_move_atk", "Play_vo_1051_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_snow",          106, 1061, "Play_vo_1061_move|Play_vo_1061_move_atk", "Play_vo_1061_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_alucard",       107, 1071, "Play_vo_1071_move|Play_vo_1071_move_atk", "Play_vo_1071_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_pofa",          108, 1081, "Play_vo_1081_move|Play_vo_1081_move_atk", "Play_vo_1081_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_xiongmao",      109, 1091, "Play_vo_1091_move|Play_vo_1091_move_atk", "Play_vo_1091_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Classicxiongmao",109,1091, "Play_vo_1091_move", "Play_vo_1091_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_bane",          111, 1111, "Play_vo_1111_move", "Play_vo_1111_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_qiuyuan",       112, 1121, "Play_vo_1121_move|Play_vo_1121_move_atk", "Play_vo_1121_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_cowboy",        113, 1131, "Play_vo_1131_move|Play_vo_1131_move_atk", "Play_vo_1131_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_angel",         114, 1141, "Play_vo_1141_move", "Play_vo_1141_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextangel",     114, 1141, "Play_vo_1141_move", "Play_vo_1141_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_eudora",        115, 1151, "Play_vo_1151_move|Play_vo_1151_move_atk", "Play_vo_1151_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_zhaoyun",       116, 1161, "Play_vo_1161_move|Play_vo_1161_move_atk", "Play_vo_1161_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_fanny",         117, 1171, "Play_vo_1171_move|Play_vo_1171_move_atk", "Play_vo_1171_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Hirara",        117, 1171, "Play_vo_1171_move|Play_vo_1171_move_atk", "Play_vo_1171_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_shooter",       118, 1181, "Play_vo_1181_move|Play_vo_1181_move_atk", "Play_vo_1181_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_shooter_skin",  118, 1181, "Play_vo_1181_move", "Play_vo_1181_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextshooter_skin",118,1181,"Play_vo_1181_move|Play_vo_1181_move_atk","Play_vo_1181_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_minotaur",      119, 1191, "Play_vo_1191_move|Play_vo_1191_move_atk", "Play_vo_1191_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_minotaurnext",  119, 1191, "Play_vo_1191_move", "Play_vo_1191_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextlolita",    120, 1201, "Play_vo_1201_move|Play_vo_1201_move_atk", "Play_vo_1201_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_lolita",        120, 1201, "Play_vo_1201_move", "Play_vo_1201_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_ninja",         121, 1211, "Play_vo_1211_move|Play_vo_1211_move_atk", "Play_vo_1211_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_freya",         122, 1221, "Play_vo_1221_move|Play_vo_1221_move_atk", "Play_vo_1221_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_mage",          123, 1231, "Play_vo_1231_move|Play_vo_1231_move_atk", "Play_vo_1231_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_assassin",      124, 1241, "Play_vo_1241_move|Play_vo_1248_move_atk", "Play_vo_1241_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_kagura",        125, 1251, "Play_vo_1251_move|Play_vo_1251_move_atk", "Play_vo_1251_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextkagura",    125, 1251, "Play_vo_1251_move", "Play_vo_1251_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_kongfu",        126, 1261, "Play_vo_1261_move|Play_vo_1261_move_atk", "Play_vo_1261_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_wukong",        127, 1271, "Play_vo_1271_move|Play_vo_1271_move_atk", "Play_vo_1271_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_warrior",       128, 1281, "Play_vo_1281_move|Play_vo_1281_move_atk", "Play_vo_1281_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_xiaohongmao",   129, 1291, "Play_vo_1291_move|Play_vo_1291_move_atk", "Play_vo_1291_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_lee",           130, 1301, "Play_vo_1301_move", "Play_vo_1301_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Classiclee",    130, 1301, "Play_vo_1301_move", "Play_vo_1301_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Moskov",        131, 1311, "Play_vo_1311_move|Play_vo_1311_move_atk", "Play_vo_1311_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextmoskov",    131, 1311, "Play_vo_1311_move|Play_vo_1311_move_atk", "Play_vo_1311_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_johnson",       132, 1321, "Play_vo_1321_move|Play_vo_1321_move_atk", "Play_vo_1321_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextjohnson",   132, 1321, "Play_vo_1321_move", "Play_vo_1321_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_xinghunfashi",  133, 1331, "Play_vo_1331_move|Play_vo_1331_move_atk", "Play_vo_1331_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextxinghunfashi",133,1331,"Play_vo_1331_move|Play_vo_1331_move_atk","Play_vo_1331_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_gregory",       134, 1341, "Play_vo_1341_move|Play_vo_1341_move_atk", "Play_vo_1341_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextgregory_skin",134,1341,"Play_vo_1341_move|Play_vo_1341_move_atk","Play_vo_1341_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_Hilda",         135, 1351, "Play_vo_1351_move|Play_vo_1351_move_atk", "Play_vo_1351_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_aurora",        136, 1361, "Play_vo_1361_move|Play_vo_1361_move_atk", "Play_vo_1361_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_frozen",        136, 1361, "Play_vo_1361_move", "Play_vo_1361_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_lapulapu",      137, 1371, "Play_vo_1371_move|Play_vo_1371_move_atk", "Play_vo_1371_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Vexana",        138, 1381, "Play_vo_1381_move|Play_vo_1381_move_atk", "Play_vo_1381_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_ClassicVexana", 138, 1381, "Play_vo_1381_move|Play_vo_1381_move_atk", "Play_vo_1381_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_feilun",        140, 1401, "Play_vo_1401_move|Play_vo_1401_move_atk", "Play_vo_1401_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextfeilun_skin",140,1401, "Play_vo_1401_move|Play_vo_1401_move_atk", "Play_vo_1401_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_gatot",         141, 1411, "Play_vo_1411_move|Play_vo_1411_move_atk", "Play_vo_1411_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_moshushi",      142, 1421, "Play_vo_1421_move", "Play_vo_1421_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_rider",         143, 1431, "Play_vo_1431_move|Play_vo_1431_move_atk", "Play_vo_1431_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Greckon",       144, 1441, "Play_vo_1441_move|Play_vo_1441_move_atk", "Play_vo_1441_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_argus",         145, 1451, "Play_vo_1451_move", "Play_vo_1451_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_odette",        146, 1461, "Play_vo_1461_move|Play_vo_1461_move_atk", "Play_vo_1461_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextodette_skin",146,1461, "Play_vo_1461_move", "Play_vo_1461_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_lancelot",      147, 1471, "Play_vo_1471_move|Play_vo_1471_move_atk", "Play_vo_1471_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_hylos",         149, 1491, "Play_vo_1491_move|Play_vo_1491_move_atk", "Play_vo_1491_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_zhask",         150, 1501, "Play_vo_1501_move|Play_vo_1501_move_atk", "Play_vo_1501_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_digger",        150, 1501, "Play_vo_1481_move", "Play_vo_1501_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_sdhunter",      151, 1511, "Play_vo_1511_move|Play_vo_1511_move_atk", "Play_vo_1511_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextsdhunter",  151, 1511, "Play_vo_1511_move", "Play_vo_1511_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_fasha",         152, 1521, "Play_vo_1521_move|Play_vo_1521_move_atk", "Play_vo_1521_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextfasha",     152, 1521, "Play_vo_1521_move", "Play_vo_1521_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextfasha_skin",152, 1521, "Play_vo_1521_move", "Play_vo_1521_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_sniper",        153, 1531, "Play_vo_1531_move|Play_vo_1531_move_atk", "Play_vo_1531_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_sniper_skin",   153, 1531, "Play_vo_1531_move", "Play_vo_1531_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_mechwarrior",   154, 1541, "Play_vo_1541_move|Play_vo_1541_move_atk", "Play_vo_1541_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_angela",        155, 1551, "Play_vo_1551_move|Play_vo_1551_move_atk", "Play_vo_1551_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Gusin",         156, 1561, "Play_vo_1561_move|Play_vo_1561_move_atk", "Play_vo_1561_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_newfiremagic",  157, 1571, "Play_vo_1571_move|Play_vo_1571_move_atk", "Play_vo_1571_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_asura",         158, 1581, "Play_vo_1581_move|Play_vo_1581_move_atk", "Play_vo_1581_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_fashutanke",    159, 1591, "Play_vo_1591_move", "Play_vo_1591_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextninjagirl", 160, 1601, "Play_vo_1601_move|Play_vo_1601_move_atk", "Play_vo_1601_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextninjagirl_skin",160,1601,"Play_vo_1601_move","Play_vo_1601_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_change",        161, 1611, "Play_vo_1611_move|Play_vo_1611_move_atk", "Play_vo_1611_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextchange_skin",161,1611, "Play_vo_1611_move|Play_vo_1611_move_atk", "Play_vo_1611_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_birdman",       162, 1621, "Play_vo_1621_move|Play_vo_1621_move_atk", "Play_vo_1621_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextbirdman_skin",162,1621,"Play_vo_1621_move","Play_vo_1621_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_jubi",          164, 1641, "Play_vo_1641_move|Play_vo_1641_move_atk", "Play_vo_1641_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_claude",        165, 1651, "Play_vo_1651_move|Play_vo_1651_move_atk", "Play_vo_1651_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_windmagic",     166, 1661, "Play_vo_1661_move|Play_vo_1661_move_atk", "Play_vo_1661_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Leomord",       167, 1671, "Play_vo_1671_move|Play_vo_1671_move_atk", "Play_vo_1671_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextLeomord_skin",167,1671,"Play_vo_1671_move","Play_vo_1671_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_balancemagic",  168, 1681, "Play_vo_1681_move|Play_vo_1681_move_atk", "Play_vo_1681_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_badninja",      169, 1691, "Play_vo_1691_move|Play_vo_1691_move_atk", "Play_vo_1691_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_newshuren",     170, 1701, "Play_vo_1701_move", "Play_vo_1701_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_shuren",        170, 1701, "Play_vo_1701_move", "Play_vo_1701_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_jimmy",         171, 1711, "Play_vo_1711_move|Play_vo_1711_move_atk", "Play_vo_1711_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Thalmuz",       172, 1721, "Play_vo_1721_move|Play_vo_1721_move_atk", "Play_vo_1721_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextThalmuz",   172, 1721, "Play_vo_1721_move|Play_vo_1721_move_atk", "Play_vo_1721_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_lanbote",       173, 1731, "Play_vo_1731_move|Play_vo_1731_move_atk", "Play_vo_1731_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Kyanzittha",    174, 1741, "Play_vo_1741_move|Play_vo_1741_move_atk", "Play_vo_1741_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_kadita",        175, 1751, "Play_vo_1751_move", "Play_vo_1751_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_alchemist",     176, 1761, "Play_vo_1761_move|Play_vo_1761_move_atk", "Play_vo_1761_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_alchemist_new", 176, 1761, "Play_vo_1761_move", "Play_vo_1761_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_badang",        177, 1771, "Play_vo_1771_move|Play_vo_1771_move_atk", "Play_vo_1771_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextbadang_skin",177,1771, "Play_vo_1771_move|Play_vo_1771_move_atk", "Play_vo_1771_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_munaiyi",       178, 1781, "Play_vo_1781_move|Play_vo_1781_move_atk", "Play_vo_1781_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_mike",          179, 1791, "Play_vo_1791_move|Play_vo_1791_move_atk", "Play_vo_1791_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Guinevere",     180, 1801, "Play_vo_1801_move|Play_vo_1801_move_atk", "Play_vo_1801_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Esmeralda",     181, 1811, "Play_vo_1811_move|Play_vo_1811_move_atk", "Play_vo_1811_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_terizla",       182, 1821, "Play_vo_1821_move|Play_vo_1821_move_atk", "Play_vo_1821_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_fireman",       183, 1831, "Play_vo_1831_move|Play_vo_1831_move_atk", "Play_vo_1831_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextfireman_skin",183,1831,"Play_vo_1831_move","Play_vo_1831_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_zeo",           184, 1841, "Play_vo_1841_move|Play_vo_1841_move_atk", "Play_vo_1841_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_diyasi",        185, 1851, "Play_vo_1851_move|Play_vo_1851_move_atk", "Play_vo_1851_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextdiyasi",    185, 1851, "Play_vo_1851_move", "Play_vo_1851_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_baozhafashi",   186, 1861, "Play_vo_1861_move|Play_vo_1861_move_atk", "Play_vo_1861_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_xuanwu",        187, 1871, "Play_vo_1871_move", "Play_vo_1871_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_xiongnv",       188, 1881, "Play_vo_1881_move", "Play_vo_1881_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_wanwan",        189, 1891, "Play_vo_1891_move|Play_vo_1891_move_atk", "Play_vo_1891_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextwanwan_skin",189,1891, "Play_vo_1891_move", "Play_vo_1891_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nvqishi",       190, 1901, "Play_vo_1901_move", "Play_vo_1901_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_couplemage",    191, 1911, "Play_vo_1911_move|Play_vo_1911_move_atk", "Play_vo_1911_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_kamila",        192, 1921, "Play_vo_1921_move", "Play_vo_1921_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_atelasi",       193, 1931, "Play_vo_1931_move|Play_vo_1931_move_atk", "Play_vo_1931_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_BBsheshou",     194, 1941, "Play_vo_1941_move|Play_vo_1941_move_atk", "Play_vo_1941_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_BlackDragon",   195, 1951, "Play_vo_1951_move|Play_vo_1951_move_atk|Play_vo_1951dragon_move|Play_vo_1951dragon_move_atk","Play_vo_1951_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_magneticmage",  196, 1961, "Play_vo_1961_move|Play_vo_1961_move_atk", "Play_vo_1961_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextmagneticmage",196,1961,"Play_vo_1961_move|Play_vo_1961_move_atk","Play_vo_1961_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_beilanita",     197, 1971, "Play_vo_1971_move|Play_vo_1971_move_atk", "Play_vo_1971_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_desertwarrior", 198, 1981, "Play_vo_1981_move", "Play_vo_1981_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_longxi",        199, 1991, "Play_vo_1991_move", "Play_vo_1991_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_chargingshooter",200,2001, "Play_vo_2001_move|Play_vo_2001_move_atk", "Play_vo_2001_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextchargingshooter",200,2001,"Play_vo_2001_move|Play_vo_2001_move_atk","Play_vo_2001_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_huatufashi",    201, 2011, "Play_vo_2011_move", "Play_vo_2011_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_madierda",      202, 2021, "Play_vo_2021_move", "Play_vo_2021_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_pakuite",       203, 2031, "Play_vo_2031_move|Play_vo_2031_move_atk", "Play_vo_2031_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextpakuite",   203, 2031, "Play_vo_2031_move|Play_vo_2031_move_atk", "Play_vo_2031_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_gloo",          204, 2041, "Play_vo_2041_move|Play_vo_2041_move_atk", "Play_vo_2041_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_SanDanQiang",   205, 2051, "Play_vo_2051_move", "Play_vo_2051_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_ShouQiang",     205, 2051, "Play_vo_2051_move", "Play_vo_2051_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_JiGuangQiang",  205, 2051, "Play_vo_2051_move", "Play_vo_2051_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_PenHuoQiang",   205, 2051, "Play_vo_2051_move", "Play_vo_2051_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_budika",        205, 2051, "Play_vo_2051_move|Play_vo_2051_move_atk", "Play_vo_2051_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Phoveus",       206, 2061, "Play_vo_2061_move|Play_vo_2061_move_atk", "Play_vo_2061_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextPhoveus",   206, 2061, "Play_vo_2061_move|Play_vo_2061_move_atk", "Play_vo_2061_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_entropy",       207, 2071, "Play_vo_2071_move|Play_vo_2071_move_atk", "Play_vo_2071_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Aulus",         208, 2081, "Play_vo_2081_move|Play_vo_2081_move_atk", "Play_vo_2081_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_nextAulus",     208, 2081, "Play_vo_2081_move", "Play_vo_2081_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Aamon",         209, 2091, "Play_vo_2091_move|Play_vo_2091_move_atk", "Play_vo_2091_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_walundina",     210, 2101, "Play_vo_2101_move|Play_vo_2101_move_atk", "Play_vo_2101_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Idun",          211, 2111, "Play_vo_2111_move|Play_vo_2111_move_atk", "Play_vo_2111_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_chloe",         212, 2121, "Play_vo_2121_move|Play_vo_2121_move_atk", "Play_vo_2121_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_yin",           213, 2131, "Play_vo_2131_move_man|Play_vo_2131_move_atk_man|Play_vo_2131_move_trans|Play_vo_2131_move_atk_trans","Play_vo_2131_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_shiqianguaidao",213, 2131, "Play_vo_2131_move_man|Play_vo_2131_move_atk|Play_vo_2131_move_trans","Play_vo_2131_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_Melissa",       214, 2141, "Play_vo_2141_move|Play_vo_2141_move_atk", "Play_vo_2141_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_xavier",        215, 2151, "Play_vo_2151_move|Play_vo_2151_move_atk", "Play_vo_2151_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_julian",        216, 2161, "Play_vo_2161_move|Play_vo_2161_move_atk", "Play_vo_2161_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_feiden",        217, 2171, "Play_vo_2171_move|Play_vo_2171_move_atk", "Play_vo_2171_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_joy",           218, 2181, "Play_vo_2181_move|Play_vo_2181_move_atk", "Play_vo_2181_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_jufa",          219, 2191, "Play_vo_2191_move|Play_vo_2191_move_atk", "Play_vo_2191_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_arlott",        220, 2201, "Play_vo_2201_move|Play_vo_2201_move_atk", "Play_vo_2201_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_ixia",          221, 2211, "Play_vo_2211_move|Play_vo_2211_move_atk", "Play_vo_2211_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_NolanOsborne",  222, 2221, "Play_vo_2221_move|Play_vo_2221_move_atk", "Play_vo_2221_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_cici",          223, 2231, "Play_vo_2231_move|Play_vo_2231_move_atk", "Play_vo_2231_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Chip",          224, 2241, "Play_vo_2241_move|Play_vo_2241_move_atk", "Play_vo_2241_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_zhuxin",        225, 2251, "Play_vo_2251_move|Play_vo_2251_move_atk", "Play_vo_2251_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_kaijiacike",    226, 2261, "Play_vo_2261_move_01|Play_vo_2261_move_atk_01|Play_vo_2261_move_02|Play_vo_2261_move_atk_02","Play_vo_2261_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_Baolishaonv",   228, 2281, "Play_vo_2281_move|Play_vo_2281_move_atk", "Play_vo_2281_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_wuzetian",      229, 2291, "Play_vo_2291_move|Play_vo_2291_move_atk", "Play_vo_2291_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Obsidia",       230, 2301, "Play_vo_2301_move|Play_vo_2301_move_atk", "Play_vo_2301_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
        register(new Hero("hero_Cirrus",        231, 2311, "Play_vo_2311_move|Play_vo_2311_move_atk_cloud|Play_vo_2311_move|Play_vo_2311_move_atk_rapid|Play_vo_2311_movye|Play_vo_2311_move_atk_control","Play_vo_2311_dead",999999,999999,999999,999999,999999,999999f,999999,999999,999999,999999,999999,999999,999999,999999,999999));
        register(new Hero("hero_Marcel",        232, 2321, "Play_vo_2321_move|Play_vo_2321_move_atk", "Play_vo_2321_dead", 999999, 999999, 999999, 999999, 999999, 999999f, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999, 999999));
    }

    private static void register(Hero h) {
        BY_NAME.put(h.heroName, h);
        BY_ID.computeIfAbsent(h.heroId, k -> new ArrayList<>()).add(h);
        ALL.add(h);
    }

    // ─────────────────────────────────────────────────────────────────
    //  Public Query API
    // ─────────────────────────────────────────────────────────────────

    /** Returns the hero matching the internal name, or null. */
    public static Hero findByName(String name) {
        return BY_NAME.get(name);
    }

    /** Returns all heroes sharing a hero ID (base + skins/variants). */
    public static List<Hero> findById(int heroId) {
        List<Hero> result = BY_ID.get(heroId);
        return result != null ? Collections.unmodifiableList(result) : Collections.emptyList();
    }

    /** Returns all 171 hero entries in insertion order. */
    public static List<Hero> getAll() {
        return Collections.unmodifiableList(ALL);
    }

    /** Returns all entries sorted ascending by voiceId then heroName. */
    public static List<Hero> getAllSorted() {
        List<Hero> sorted = new ArrayList<>(ALL);
        Collections.sort(sorted);
        return sorted;
    }

    /** Returns all entries sorted by baseHp descending. */
    public static List<Hero> getSortedByHp() {
        List<Hero> sorted = new ArrayList<>(ALL);
        sorted.sort(Comparator.comparingInt((Hero h) -> h.baseHp).reversed());
        return sorted;
    }

    /** Returns all entries sorted by baseAtk descending. */
    public static List<Hero> getSortedByAtk() {
        List<Hero> sorted = new ArrayList<>(ALL);
        sorted.sort(Comparator.comparingInt((Hero h) -> h.baseAtk).reversed());
        return sorted;
    }

    /** Returns all entries sorted by moveSpeed descending. */
    public static List<Hero> getSortedByMoveSpeed() {
        List<Hero> sorted = new ArrayList<>(ALL);
        sorted.sort(Comparator.comparingInt((Hero h) -> h.moveSpeed).reversed());
        return sorted;
    }

    /** Returns total count of registered entries. */
    public static int count() {
        return ALL.size();
    }

}
