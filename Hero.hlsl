
#ifndef HERO_HLSL
#define HERO_HLSL

// ─── Hero Count ───────────────────────────────────────────────────────────────
#define HERO_COUNT 134

// ─── Damage Type Indices ──────────────────────────────────────────────────────
#define DAMAGE_PHYSICAL 0
#define DAMAGE_MAGICAL  1
#define DAMAGE_TRUE     2

// ─── Hero Stat Struct ─────────────────────────────────────────────────────────
struct HeroMaxStat
{
    // Base Stats (shared across damage types)
    float HP;           // Max HP at Level 15
    float PhysAtk;      // Physical Attack at Level 15
    float PhysDef;      // Physical Defense at Level 15
    float MagDef;       // Magic Defense at Level 15
    float CritChance;   // Critical Hit Chance [0..1]
    float AtkSpeed;     // Attack Speed multiplier
    float PhysGrowth;   // Physical growth per level
    float PhysBase;     // Physical base attack
    // Per-Damage-Type Output (index: physical=0, magical=1, true=2)
    float RawDamage[3]; // Raw damage before resistance
    float ResistFactor[3]; // Resistance mitigation factor
    float CalcDamage[3];   // Damage after resistance
    float CritDamage[3];   // Damage on critical hit
    float DPS[3];          // Damage Per Second
};

// ─── Hero Max Stats Table (Level 15) ──────────────────────────────────────────
// Index matches HeroID - 1  (HeroID 1 = index 0)
static const HeroMaxStat g_HeroMaxStats[HERO_COUNT] =
{
    // [  0] HeroID=1  hero_gongjianshou
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  1] HeroID=2  hero_fuwang
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  2] HeroID=3  hero_shikongjianhao
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  3] HeroID=4  hero_alice
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  4] HeroID=5  hero_nana
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  5] HeroID=6  hero_snow
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  6] HeroID=7  hero_alucard
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  7] HeroID=8  hero_pofa
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  8] HeroID=9  hero_xiongmao
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [  9] HeroID=10  hero_franco
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 10] HeroID=11  hero_bane
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 11] HeroID=12  hero_qiuyuan
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 12] HeroID=13  hero_cowboy
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 13] HeroID=14  hero_angel
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 14] HeroID=15  hero_eudora
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 15] HeroID=16  hero_zhaoyun
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 16] HeroID=17  hero_fanny
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 17] HeroID=18  hero_shooter
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 18] HeroID=19  hero_minotaur
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 19] HeroID=20  hero_nextlolita
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 20] HeroID=21  hero_ninja
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 21] HeroID=22  hero_freya
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 22] HeroID=23  hero_mage
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 23] HeroID=24  hero_assassin
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 24] HeroID=25  hero_kagura
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 25] HeroID=26  hero_kongfu
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 26] HeroID=27  hero_wukong
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 27] HeroID=28  hero_warrior
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 28] HeroID=29  hero_xiaohongmao
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 29] HeroID=30  hero_lee
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 30] HeroID=31  hero_Moskov
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 31] HeroID=32  hero_johnson
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 32] HeroID=33  hero_xinghunfashi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 33] HeroID=34  hero_gregory
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 34] HeroID=35  hero_Hilda
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 35] HeroID=36  hero_aurora
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 36] HeroID=37  hero_lapulapu
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 37] HeroID=38  hero_Vexana
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 38] HeroID=39  hero_werewolf
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 39] HeroID=40  hero_feilun
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 40] HeroID=41  hero_gatot
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 41] HeroID=42  hero_moshushi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 42] HeroID=43  hero_rider
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 43] HeroID=44  hero_Greckon
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 44] HeroID=45  hero_argus
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 45] HeroID=46  hero_odette
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 46] HeroID=47  hero_lancelot
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 47] HeroID=48  hero_digger
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 48] HeroID=49  hero_hylos
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 49] HeroID=50  hero_zhask
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 50] HeroID=51  hero_sdhunter
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 51] HeroID=52  hero_fasha
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 52] HeroID=53  hero_sniper
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 53] HeroID=54  hero_mechwarrior
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 54] HeroID=55  hero_angela
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 55] HeroID=56  hero_Gusin
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 56] HeroID=57  hero_newfiremagic
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 57] HeroID=58  hero_asura
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 58] HeroID=59  hero_fashutanke
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 59] HeroID=60  hero_nextninjagirl
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 60] HeroID=61  hero_change
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 61] HeroID=62  hero_birdman
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 62] HeroID=63  hero_selena
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 63] HeroID=64  hero_jubi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 64] HeroID=65  hero_claude
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 65] HeroID=66  hero_windmagic
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 66] HeroID=67  hero_Leomord
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 67] HeroID=68  hero_balancemagic
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 68] HeroID=69  hero_badninja
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 69] HeroID=70  hero_newshuren
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 70] HeroID=71  hero_jimmy
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 71] HeroID=72  hero_Thalmuz
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 72] HeroID=73  hero_lanbote
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 73] HeroID=74  hero_Kyanzittha
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 74] HeroID=75  hero_kadita
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 75] HeroID=76  hero_alchemist
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 76] HeroID=77  hero_badang
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 77] HeroID=78  hero_munaiyi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 78] HeroID=79  hero_mike
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 79] HeroID=80  hero_Guinevere
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 80] HeroID=81  hero_Esmeralda
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 81] HeroID=82  hero_terizla
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 82] HeroID=83  hero_fireman
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 83] HeroID=84  hero_zeo
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 84] HeroID=85  hero_diyasi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 85] HeroID=86  hero_baozhafashi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 86] HeroID=87  hero_xuanwu
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 87] HeroID=88  hero_xiongnv
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 88] HeroID=89  hero_wanwan
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 89] HeroID=90  hero_nvqishi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 90] HeroID=91  hero_couplemage
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 91] HeroID=92  hero_kamila
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 92] HeroID=93  hero_atelasi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 93] HeroID=94  hero_BBsheshou
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 94] HeroID=95  hero_BlackDragon
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 95] HeroID=96  hero_magneticmage
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 96] HeroID=97  hero_beilanita
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 97] HeroID=98  hero_desertwarrior
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 98] HeroID=99  hero_longxi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [ 99] HeroID=100  hero_chargingshooter
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [100] HeroID=101  hero_huatufashi
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [101] HeroID=102  hero_madierda
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [102] HeroID=103  hero_pakuite
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [103] HeroID=104  hero_gloo
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [104] HeroID=105  hero_budika
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [105] HeroID=106  hero_Phoveus
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [106] HeroID=107  hero_entropy
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [107] HeroID=108  hero_Aulus
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [108] HeroID=109  hero_Aamon
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [109] HeroID=110  hero_walundina
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [110] HeroID=111  hero_Idun
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [111] HeroID=112  hero_chloe
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [112] HeroID=113  hero_yin
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [113] HeroID=114  hero_Melissa
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [114] HeroID=115  hero_xavier
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [115] HeroID=116  hero_julian
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [116] HeroID=117  hero_feiden
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [117] HeroID=118  hero_joy
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [118] HeroID=119  hero_jufa
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [119] HeroID=120  hero_arlott
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [120] HeroID=121  hero_ixia
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [121] HeroID=122  hero_NolanOsborne
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [122] HeroID=123  hero_cici
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [123] HeroID=124  hero_Chip
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [124] HeroID=125  hero_zhuxin
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [125] HeroID=126  hero_kaijiacike
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [126] HeroID=127  hero_Lukas
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [127] HeroID=128  hero_Baolishaonv
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [128] HeroID=129  hero_wuzetian
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [129] HeroID=130  hero_Obsidia
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [130] HeroID=131  hero_Cirrus
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [131] HeroID=132  hero_Marcel
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [132] HeroID=133  hero_Hirara
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    },
    // [133] HeroID=134  hero_Vexana
    {
        /* HP           */ 999999.0f,
        /* PhysAtk      */ 999999.0f,
        /* PhysDef      */ 999999.0f,
        /* MagDef       */ 999999.0f,
        /* CritChance   */ 999999.0f,
        /* AtkSpeed     */ 999999.0f,
        /* PhysGrowth   */ 999999.0f,
        /* PhysBase     */ 999999.0f,
        /* RawDamage    */ { 999999.0f, 999999.0f, 999999.0f },
        /* ResistFactor */ { 999999.0f, 999999.0f, 999999.0f },
        /* CalcDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* CritDamage   */ { 999999.0f, 999999.0f, 999999.0f },
        /* DPS          */ { 999999.0f, 999999.0f, 999999.0f }
    }
};

// ─── Helper Functions ─────────────────────────────────────────────────────────

// Get max DPS for a hero across all damage types
float GetHeroMaxDPS(int heroIndex)
{
    HeroMaxStat s = g_HeroMaxStats[heroIndex];
    return max(s.DPS[0], max(s.DPS[1], s.DPS[2]));
}

// Get effective DPS for a given damage type index
float GetHeroDPS(int heroIndex, int damageType)
{
    return g_HeroMaxStats[heroIndex].DPS[damageType];
}

// Get effective HP
float GetHeroHP(int heroIndex)
{
    return g_HeroMaxStats[heroIndex].HP;
}

// Compute raw DPS given attack speed override
float ComputeDPS(int heroIndex, int damageType, float atkSpeedOverride)
{
    HeroMaxStat s = g_HeroMaxStats[heroIndex];
    float dmg = s.CalcDamage[damageType];
    float speed = atkSpeedOverride > 0.0f ? atkSpeedOverride : s.AtkSpeed;
    float critBonus = s.CritChance * s.CalcDamage[damageType];
    return (dmg + critBonus) * speed;
}

#endif // HERO_HLSL