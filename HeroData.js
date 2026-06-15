
const HERO_BASE_TABLE = [
  {"id":1,"name":"hero_gongjianshou","hp":24300000,"hpGrowth":1500000,"physAtk":1320000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":2,"name":"hero_fuwang","hp":23600000,"hpGrowth":1400000,"physAtk":1090000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":3,"name":"hero_shikongjianhao","hp":22900000,"hpGrowth":1300000,"physAtk":1310000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":4,"name":"hero_alice","hp":33200000,"hpGrowth":2200000,"physAtk":1180000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":5,"name":"hero_nana","hp":26500000,"hpGrowth":1550000,"physAtk":1000000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":6,"name":"hero_snow","hp":29800000,"hpGrowth":1800000,"physAtk":1220000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":7,"name":"hero_alucard","hp":24000000,"hpGrowth":1500000,"physAtk":1340000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":8,"name":"hero_pofa","hp":23300000,"hpGrowth":1400000,"physAtk":1110000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":9,"name":"hero_xiongmao","hp":22600000,"hpGrowth":1300000,"physAtk":1330000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":10,"name":"hero_franco","hp":32900000,"hpGrowth":2200000,"physAtk":1100000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":11,"name":"hero_bane","hp":26200000,"hpGrowth":1550000,"physAtk":1020000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":12,"name":"hero_qiuyuan","hp":29500000,"hpGrowth":1800000,"physAtk":1240000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":13,"name":"hero_cowboy","hp":25800000,"hpGrowth":1500000,"physAtk":1360000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":14,"name":"hero_angel","hp":23000000,"hpGrowth":1400000,"physAtk":1130000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":15,"name":"hero_eudora","hp":22300000,"hpGrowth":1300000,"physAtk":1250000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":16,"name":"hero_zhaoyun","hp":32600000,"hpGrowth":2200000,"physAtk":1120000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":17,"name":"hero_fanny","hp":25900000,"hpGrowth":1550000,"physAtk":1040000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":18,"name":"hero_shooter","hp":29200000,"hpGrowth":1800000,"physAtk":1260000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":19,"name":"hero_minotaur","hp":25500000,"hpGrowth":1500000,"physAtk":1380000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":20,"name":"hero_nextlolita","hp":24800000,"hpGrowth":1400000,"physAtk":1050000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":21,"name":"hero_ninja","hp":22000000,"hpGrowth":1300000,"physAtk":1270000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":22,"name":"hero_freya","hp":32300000,"hpGrowth":2200000,"physAtk":1140000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":23,"name":"hero_mage","hp":25600000,"hpGrowth":1550000,"physAtk":1060000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":24,"name":"hero_assassin","hp":28900000,"hpGrowth":1800000,"physAtk":1280000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":25,"name":"hero_kagura","hp":25200000,"hpGrowth":1500000,"physAtk":1300000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":26,"name":"hero_kongfu","hp":24500000,"hpGrowth":1400000,"physAtk":1070000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":27,"name":"hero_wukong","hp":23800000,"hpGrowth":1300000,"physAtk":1290000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":28,"name":"hero_warrior","hp":32000000,"hpGrowth":2200000,"physAtk":1160000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":29,"name":"hero_xiaohongmao","hp":25300000,"hpGrowth":1550000,"physAtk":1080000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":30,"name":"hero_lee","hp":28600000,"hpGrowth":1800000,"physAtk":1200000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":31,"name":"hero_Moskov","hp":24900000,"hpGrowth":1500000,"physAtk":1320000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":32,"name":"hero_johnson","hp":24200000,"hpGrowth":1400000,"physAtk":1090000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":33,"name":"hero_xinghunfashi","hp":23500000,"hpGrowth":1300000,"physAtk":1310000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":34,"name":"hero_gregory","hp":33800000,"hpGrowth":2200000,"physAtk":1180000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":35,"name":"hero_Hilda","hp":25000000,"hpGrowth":1550000,"physAtk":1000000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":36,"name":"hero_aurora","hp":28300000,"hpGrowth":1800000,"physAtk":1220000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":37,"name":"hero_lapulapu","hp":24600000,"hpGrowth":1500000,"physAtk":1340000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":38,"name":"hero_Vexana","hp":23900000,"hpGrowth":1400000,"physAtk":1110000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":39,"name":"hero_werewolf","hp":23200000,"hpGrowth":1300000,"physAtk":1330000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":40,"name":"hero_feilun","hp":33500000,"hpGrowth":2200000,"physAtk":1100000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":41,"name":"hero_gatot","hp":26800000,"hpGrowth":1550000,"physAtk":1020000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":42,"name":"hero_moshushi","hp":28000000,"hpGrowth":1800000,"physAtk":1240000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":43,"name":"hero_rider","hp":24300000,"hpGrowth":1500000,"physAtk":1360000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":44,"name":"hero_Greckon","hp":23600000,"hpGrowth":1400000,"physAtk":1130000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":45,"name":"hero_argus","hp":22900000,"hpGrowth":1300000,"physAtk":1250000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":46,"name":"hero_odette","hp":33200000,"hpGrowth":2200000,"physAtk":1120000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":47,"name":"hero_lancelot","hp":26500000,"hpGrowth":1550000,"physAtk":1040000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":48,"name":"hero_digger","hp":29800000,"hpGrowth":1800000,"physAtk":1260000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":49,"name":"hero_hylos","hp":24000000,"hpGrowth":1500000,"physAtk":1380000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":50,"name":"hero_zhask","hp":23300000,"hpGrowth":1400000,"physAtk":1050000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":51,"name":"hero_sdhunter","hp":22600000,"hpGrowth":1300000,"physAtk":1270000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":52,"name":"hero_fasha","hp":32900000,"hpGrowth":2200000,"physAtk":1140000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":53,"name":"hero_sniper","hp":26200000,"hpGrowth":1550000,"physAtk":1060000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":54,"name":"hero_mechwarrior","hp":29500000,"hpGrowth":1800000,"physAtk":1280000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":55,"name":"hero_angela","hp":25800000,"hpGrowth":1500000,"physAtk":1300000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":56,"name":"hero_Gusin","hp":23000000,"hpGrowth":1400000,"physAtk":1070000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":57,"name":"hero_newfiremagic","hp":22300000,"hpGrowth":1300000,"physAtk":1290000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":58,"name":"hero_asura","hp":32600000,"hpGrowth":2200000,"physAtk":1160000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":59,"name":"hero_fashutanke","hp":25900000,"hpGrowth":1550000,"physAtk":1080000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":60,"name":"hero_nextninjagirl","hp":29200000,"hpGrowth":1800000,"physAtk":1200000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":61,"name":"hero_change","hp":25500000,"hpGrowth":1500000,"physAtk":1320000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":62,"name":"hero_birdman","hp":24800000,"hpGrowth":1400000,"physAtk":1090000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":63,"name":"hero_selena","hp":22000000,"hpGrowth":1300000,"physAtk":1310000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":64,"name":"hero_jubi","hp":32300000,"hpGrowth":2200000,"physAtk":1180000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":65,"name":"hero_claude","hp":25600000,"hpGrowth":1550000,"physAtk":1000000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":66,"name":"hero_windmagic","hp":28900000,"hpGrowth":1800000,"physAtk":1220000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":67,"name":"hero_Leomord","hp":25200000,"hpGrowth":1500000,"physAtk":1340000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":68,"name":"hero_balancemagic","hp":24500000,"hpGrowth":1400000,"physAtk":1110000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":69,"name":"hero_badninja","hp":23800000,"hpGrowth":1300000,"physAtk":1330000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":70,"name":"hero_newshuren","hp":32000000,"hpGrowth":2200000,"physAtk":1100000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":71,"name":"hero_jimmy","hp":25300000,"hpGrowth":1550000,"physAtk":1020000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":72,"name":"hero_Thalmuz","hp":28600000,"hpGrowth":1800000,"physAtk":1240000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":73,"name":"hero_lanbote","hp":24900000,"hpGrowth":1500000,"physAtk":1360000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":74,"name":"hero_Kyanzittha","hp":24200000,"hpGrowth":1400000,"physAtk":1130000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":75,"name":"hero_kadita","hp":23500000,"hpGrowth":1300000,"physAtk":1250000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":76,"name":"hero_alchemist","hp":33800000,"hpGrowth":2200000,"physAtk":1120000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":77,"name":"hero_badang","hp":25000000,"hpGrowth":1550000,"physAtk":1040000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":78,"name":"hero_munaiyi","hp":28300000,"hpGrowth":1800000,"physAtk":1260000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":79,"name":"hero_mike","hp":24600000,"hpGrowth":1500000,"physAtk":1380000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":80,"name":"hero_Guinevere","hp":23900000,"hpGrowth":1400000,"physAtk":1050000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":81,"name":"hero_Esmeralda","hp":23200000,"hpGrowth":1300000,"physAtk":1270000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":82,"name":"hero_terizla","hp":33500000,"hpGrowth":2200000,"physAtk":1140000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":83,"name":"hero_fireman","hp":26800000,"hpGrowth":1550000,"physAtk":1060000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":84,"name":"hero_zeo","hp":28000000,"hpGrowth":1800000,"physAtk":1280000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":85,"name":"hero_diyasi","hp":24300000,"hpGrowth":1500000,"physAtk":1300000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":86,"name":"hero_baozhafashi","hp":23600000,"hpGrowth":1400000,"physAtk":1070000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":87,"name":"hero_xuanwu","hp":22900000,"hpGrowth":1300000,"physAtk":1290000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":88,"name":"hero_xiongnv","hp":33200000,"hpGrowth":2200000,"physAtk":1160000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":89,"name":"hero_wanwan","hp":26500000,"hpGrowth":1550000,"physAtk":1080000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":90,"name":"hero_nvqishi","hp":29800000,"hpGrowth":1800000,"physAtk":1200000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":91,"name":"hero_couplemage","hp":24000000,"hpGrowth":1500000,"physAtk":1320000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":92,"name":"hero_kamila","hp":23300000,"hpGrowth":1400000,"physAtk":1090000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":93,"name":"hero_atelasi","hp":22600000,"hpGrowth":1300000,"physAtk":1310000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":94,"name":"hero_BBsheshou","hp":32900000,"hpGrowth":2200000,"physAtk":1180000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":95,"name":"hero_BlackDragon","hp":26200000,"hpGrowth":1550000,"physAtk":1000000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":96,"name":"hero_magneticmage","hp":29500000,"hpGrowth":1800000,"physAtk":1220000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":97,"name":"hero_beilanita","hp":25800000,"hpGrowth":1500000,"physAtk":1340000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":98,"name":"hero_desertwarrior","hp":23000000,"hpGrowth":1400000,"physAtk":1110000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":99,"name":"hero_longxi","hp":22300000,"hpGrowth":1300000,"physAtk":1330000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":100,"name":"hero_chargingshooter","hp":32600000,"hpGrowth":2200000,"physAtk":1100000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":101,"name":"hero_huatufashi","hp":25900000,"hpGrowth":1550000,"physAtk":1020000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":102,"name":"hero_madierda","hp":29200000,"hpGrowth":1800000,"physAtk":1240000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":103,"name":"hero_pakuite","hp":25500000,"hpGrowth":1500000,"physAtk":1360000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":104,"name":"hero_gloo","hp":24800000,"hpGrowth":1400000,"physAtk":1130000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":105,"name":"hero_budika","hp":22000000,"hpGrowth":1300000,"physAtk":1250000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":106,"name":"hero_Phoveus","hp":32300000,"hpGrowth":2200000,"physAtk":1120000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":107,"name":"hero_entropy","hp":25600000,"hpGrowth":1550000,"physAtk":1040000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":108,"name":"hero_Aulus","hp":28900000,"hpGrowth":1800000,"physAtk":1260000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":109,"name":"hero_Aamon","hp":25200000,"hpGrowth":1500000,"physAtk":1380000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":110,"name":"hero_walundina","hp":24500000,"hpGrowth":1400000,"physAtk":1050000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":111,"name":"hero_Idun","hp":23800000,"hpGrowth":1300000,"physAtk":1270000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":112,"name":"hero_chloe","hp":32000000,"hpGrowth":2200000,"physAtk":1140000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":113,"name":"hero_yin","hp":25300000,"hpGrowth":1550000,"physAtk":1060000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":114,"name":"hero_Melissa","hp":28600000,"hpGrowth":1800000,"physAtk":1280000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":115,"name":"hero_xavier","hp":24900000,"hpGrowth":1500000,"physAtk":1300000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":116,"name":"hero_julian","hp":24200000,"hpGrowth":1400000,"physAtk":1070000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":117,"name":"hero_feiden","hp":23500000,"hpGrowth":1300000,"physAtk":1290000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":118,"name":"hero_joy","hp":33800000,"hpGrowth":2200000,"physAtk":1160000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":119,"name":"hero_jufa","hp":25000000,"hpGrowth":1550000,"physAtk":1080000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":120,"name":"hero_arlott","hp":28300000,"hpGrowth":1800000,"physAtk":1200000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":121,"name":"hero_ixia","hp":24600000,"hpGrowth":1500000,"physAtk":1320000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":122,"name":"hero_NolanOsborne","hp":23900000,"hpGrowth":1400000,"physAtk":1090000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":123,"name":"hero_cici","hp":23200000,"hpGrowth":1300000,"physAtk":1310000,"physGrowth":85000,"physDef":170000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":124,"name":"hero_Chip","hp":33500000,"hpGrowth":2200000,"physAtk":1180000,"physGrowth":65000,"physDef":300000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":125,"name":"hero_zhuxin","hp":26800000,"hpGrowth":1550000,"physAtk":1000000,"physGrowth":55000,"physDef":210000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":126,"name":"hero_kaijiacike","hp":28000000,"hpGrowth":1800000,"physAtk":1220000,"physGrowth":80000,"physDef":240000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":127,"name":"hero_Lukas","hp":24300000,"hpGrowth":1500000,"physAtk":1340000,"physGrowth":90000,"physDef":210000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":128,"name":"hero_Baolishaonv","hp":23600000,"hpGrowth":1400000,"physAtk":1110000,"physGrowth":60000,"physDef":160000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85},
  {"id":129,"name":"hero_wuzetian","hp":22900000,"hpGrowth":1300000,"physAtk":1330000,"physGrowth":85000,"physDef":150000,"physDefGrowth":25000,"magDef":100000,"magDefGrowth":10000,"critChance":0.08,"atkSpeed":1.05},
  {"id":130,"name":"hero_Obsidia","hp":33200000,"hpGrowth":2200000,"physAtk":1100000,"physGrowth":65000,"physDef":320000,"physDefGrowth":45000,"magDef":210000,"magDefGrowth":22000,"critChance":0.02,"atkSpeed":0.82},
  {"id":131,"name":"hero_Cirrus","hp":26500000,"hpGrowth":1550000,"physAtk":1020000,"physGrowth":55000,"physDef":230000,"physDefGrowth":32000,"magDef":200000,"magDefGrowth":20000,"critChance":0.03,"atkSpeed":0.9},
  {"id":132,"name":"hero_Marcel","hp":29800000,"hpGrowth":1800000,"physAtk":1240000,"physGrowth":80000,"physDef":220000,"physDefGrowth":36000,"magDef":150000,"magDefGrowth":15000,"critChance":0.05,"atkSpeed":0.87},
  {"id":133,"name":"hero_Hirara","hp":24000000,"hpGrowth":1500000,"physAtk":1360000,"physGrowth":90000,"physDef":190000,"physDefGrowth":30000,"magDef":110000,"magDefGrowth":12000,"critChance":0.1,"atkSpeed":1},
  {"id":134,"name":"hero_Vexana2","hp":23300000,"hpGrowth":1400000,"physAtk":1130000,"physGrowth":60000,"physDef":180000,"physDefGrowth":28000,"magDef":140000,"magDefGrowth":18000,"critChance":0.02,"atkSpeed":0.85}
];

const RESIST_FACTOR = { physical: 5/6, magical: 20/23, true: 1.0 };
const RAW_DAMAGE_RATIO = { physical: 1.0, magical: 0.8, true: 0.65 };
const DAMAGE_TYPES = ['physical', 'magical', 'true'];
const VALID_LEVELS = [1, 5, 10, 15];

const _byId = Object.fromEntries(HERO_BASE_TABLE.map(h => [h.id, h]));
const _byName = Object.fromEntries(HERO_BASE_TABLE.map(h => [h.name, h]));

function scaleStat(base, growth, level) {
  return base + growth * (level - 1);
}

function r2(n) {
  return Math.round(n * 100) / 100;
}

function computeStats(base, level, damageType) {
  if (!base) throw new Error('Unknown hero');
  if (level < 1 || level > 15) throw new RangeError('Level must be 1–15');
  if (!(damageType in RESIST_FACTOR)) throw new Error('damageType must be physical | magical | true');

  const physAtk = r2(scaleStat(base.physAtk, base.physGrowth, level));
  const hp = Math.round(scaleStat(base.hp, base.hpGrowth, level));
  const physDef = r2(scaleStat(base.physDef, base.physDefGrowth, level));
  const magDef = r2(scaleStat(base.magDef, base.magDefGrowth, level));

  const rawDamage = r2(physAtk * RAW_DAMAGE_RATIO[damageType]);
  const resistFactor = RESIST_FACTOR[damageType];
  const calcDamage = r2(rawDamage * resistFactor);
  const critDamage = damageType === 'physical' ? r2(calcDamage * 2) : calcDamage;
  const dps = r2(calcDamage * base.atkSpeed);

  return {
    heroID: base.id,
    internalName: base.name,
    level,
    damageType,
    hp,
    physAtk,
    physDef,
    magDef,
    critChance: base.critChance,
    atkSpeed: base.atkSpeed,
    physGrowth: base.physGrowth,
    physBase: base.physAtk,
    rawDamage,
    resistFactor: r2(resistFactor),
    calcDamage,
    critDamage,
    dps,
  };
}

function getHero(heroRef) {
  if (typeof heroRef === 'number') return _byId[heroRef] ?? null;
  return _byName[heroRef] ?? null;
}

function getStats(heroRef, level = 1, damageType = 'physical') {
  const base = getHero(heroRef);
  if (!base) throw new Error(`Hero not found: ${heroRef}`);
  return computeStats(base, level, damageType);
}

function getStatsAllDamageTypes(heroRef, level = 1) {
  const base = getHero(heroRef);
  if (!base) throw new Error(`Hero not found: ${heroRef}`);
  return Object.fromEntries(DAMAGE_TYPES.map(dt => [dt, computeStats(base, level, dt)]));
}

function getLevelProgression(heroRef, damageType = 'physical') {
  const base = getHero(heroRef);
  if (!base) throw new Error(`Hero not found: ${heroRef}`);
  return VALID_LEVELS.map(lv => computeStats(base, lv, damageType));
}

function compareHeroes(heroRefA, heroRefB, level = 10, damageType = 'physical') {
  const a = getStats(heroRefA, level, damageType);
  const b = getStats(heroRefB, level, damageType);
  const numericKeys = ['hp','physAtk','physDef','magDef','critChance','atkSpeed','rawDamage','calcDamage','critDamage','dps'];
  const delta = {};
  for (const k of numericKeys) delta[k] = r2(b[k] - a[k]);
  return { heroA: a.internalName, heroB: b.internalName, level, damageType, statsA: a, statsB: b, delta };
}

function topByDPS(topN = 10, level = 10, damageType = 'physical') {
  return HERO_BASE_TABLE.map(base => computeStats(base, level, damageType)).sort((a,b) => b.dps - a.dps).slice(0, topN);
}

function topByHP(topN = 10, level = 10) {
  return HERO_BASE_TABLE.map(base => computeStats(base, level, 'physical')).sort((a,b) => b.hp - a.hp).slice(0, topN);
}

function searchHeroes(query) {
  const q = query.toLowerCase();
  return HERO_BASE_TABLE.filter(h => h.name.toLowerCase().includes(q));
}

function listHeroes() {
  return HERO_BASE_TABLE.map(h => h.name);
}

function getAllRows() {
  const rows = [];
  for (const base of HERO_BASE_TABLE) {
    for (const dt of DAMAGE_TYPES) {
      for (const lv of VALID_LEVELS) rows.push(computeStats(base, lv, dt));
    }
  }
  return rows;
}

const HeroData = {
  heroes: HERO_BASE_TABLE,
  damageTypes: DAMAGE_TYPES,
  validLevels: VALID_LEVELS,
  resistFactor: RESIST_FACTOR,
  rawDamageRatio: RAW_DAMAGE_RATIO,
  getHero,
  getStats,
  getStatsAllDamageTypes,
  getLevelProgression,
  compareHeroes,
  topByDPS,
  topByHP,
  searchHeroes,
  listHeroes,
  getAllRows,
  computeStats,
  scaleStat,
};

if (typeof module !== 'undefined' && module.exports) module.exports = HeroData;
if (typeof window !== 'undefined') window.HeroData = HeroData;