-- ◆　売上管理テーブル　◆
CREATE TABLE IF NOT EXISTS urikantbl(
    cd          int(3)   PRIMARY KEY,
    dno         VARCHAR(10),
    tkid        int(2),
    tkno        VARCHAR(3),
    endtime     TIME,
    ccd         int(3),
    castname    VARCHAR(256),
    ins         int(3),
    bcd         int(3),
    bun         VARCHAR(128),
    ccdh        int(3),
    hsimei      VARCHAR(256),
    hssuu       int(3),
    dousu       int(3),
    turesu      int(3),
    ccd1        int(3),
    cast1       VARCHAR(256),
    js1         int(3),
    ccd2        int(3),
    cast2       VARCHAR(256),
    js2         int(3),
    ccd3        int(3),
    cast3       VARCHAR(256),
    js3         int(3),
    ccdd        int(3),
    drkname     VARCHAR(256),
    drksuu      int(5),
    encd        int(3),
    enbun       VARCHAR(128),
    entime      int(3),
    ccde        int(3),
    entaisyou   VARCHAR(256));

-- ◆　キャスト管理テーブル　◆
CREATE TABLE IF NOT EXISTS caskantbl(
    cd          int(3)   PRIMARY KEY,
    ccd         int(3),
    castname    VARCHAR(256),
    doum        int(3),
    intime      TIME,
    outtime     TIME,
    doukei      int(5),
    turekei     int(5),
    hskei       int(5),
    hse60kei    int(5),
    hse30kei    int(5),
    fe60kei     int(5),
    fe30kei     int(5),
    jskei       int(5),
    drkkei      int(5),
    btlkei      int(7),
    dpay        int(6));

-- ◆　ボトル管理テーブル　◆
CREATE TABLE IF NOT EXISTS btltbl(
    cd          int(3)   PRIMARY KEY,
    ccd         int(3),
    castname    VARCHAR(256),
    btlcd       int(3),
    btlsb       VARCHAR(128),
    btlname     VARCHAR(1024),
    urine       int(7),
    sirne       int(7),
    back        int(7));

-- ◆　キャストマスタ　◆
CREATE TABLE IF NOT EXISTS castmst(
    ccd         int(3)   PRIMARY KEY,
    castname    VARCHAR(256));

-- ◆　卓番マスタ　◆
CREATE TABLE IF NOT EXISTS takumst(
    tkid        int(2)   PRIMARY KEY,
    tkno        VARCHAR(2),
    yostart     time,
    yoend       time);

-- ◆　時給マスタ①　◆
CREATE TABLE IF NOT EXISTS zikyumst1(
    zikyucd1    int(3)   PRIMARY KEY,
    zikyu1      int(6));

-- ◆　時給マスタ②　◆
CREATE TABLE IF NOT EXISTS zikyumst2(
    zikyucd2    int(3)   PRIMARY KEY,
    zikyu2      int(6));

-- ◆　同伴マスタ　◆
CREATE TABLE IF NOT EXISTS douhmst(
    doucd       int(3)   PRIMARY KEY,
    doutanka    int(6));

-- ◆　本指名マスタ　◆
CREATE TABLE IF NOT EXISTS honsmst(
    honscd      int(3)   PRIMARY KEY,
    honstanka   int(6));

-- ◆　場内指名マスタ　◆
CREATE TABLE IF NOT EXISTS jsmst(
    jscd        int(3)   PRIMARY KEY,
    jstanka     int(6));

-- ◆　延長マスタ　◆
CREATE TABLE IF NOT EXISTS enmst(
    encd        int(3)   PRIMARY KEY,
    enbun       VARCHAR(50),
    entime      int(3),
    entanka     int(6));

-- ◆　ドリンクマスタ　◆
CREATE TABLE IF NOT EXISTS drkmst(
    drkcd       int(3)   PRIMARY KEY,
    drktanka    int(6));

-- ◆　ボトルマスタ　◆
CREATE TABLE IF NOT EXISTS btlmst(
    btlcd       int(3)   PRIMARY KEY,
    btlsb       VARCHAR(128),
    btlname     VARCHAR(1024),
    urine       int(7),
    sirne       int(7));

-- ◆　分類マスタ　◆
CREATE TABLE IF NOT EXISTS brmst(
    bcd         int(3)   PRIMARY KEY,
    bri         VARCHAR(128));

-- ◆　日付マスタ　◆
CREATE TABLE IF NOT EXISTS datmst(
    datcd       int(3)   PRIMARY KEY,
    edat        time);