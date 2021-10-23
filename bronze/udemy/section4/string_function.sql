-- 文字列操作関数 select句でもwhere句でも指定可能
SELECT
    ENAME,
    LOWER(ENAME),  -- UPPERで小文字 -> 大文字に置換
    INITCAP(ENAME) -- 単語の開始文字だけ大文字 以降小文字 ORACLE MASTER -> Oracle Master
FROM
    EMP;

-- 長さの抽出
SELECT
    LENGTH(ENAME),
    LENGTHB(ENAME),
    LENGTHB('あいうえお')
FROM
    EMP;

-- 文字列の位置検索
SELECT
    ENAME,
    INSTR(ENAME, 'L', 1, 2),
    INSTR(ENAME, 'L', 1)
FROM
    EMP;

-- 指定した文字数まで文字埋めする
SELECT
    ENAME,
    LPAD(ENAME, 10, '*'),
    RPAD(ENAME, 10, 'x')
FROM
    EMP;

-- 置換
SELECT
    ENAME,
    REPLACE(ENAME, 'L', 'x')
FROM
    EMP;


SELECT *
FROM
    EMP
where
    'king' = LOWER(ENAME);