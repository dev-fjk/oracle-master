-- DECODE/CASE関数
-- 条件に従った出力を行う(if文 / switch文に近い)

-- DECODE
SELECT
    JOB,
    DECODE(JOB, 'CLERK', 'C', 'MANAGER', 'M', 'OTHER')
FROM
    EMP;

-- CASE 列名指定あり
-- DECODEよりも可読性高いが冗長
SELECT
    JOB,
    CASE JOB
        WHEN 'CLERK' THEN 'C'
        WHEN 'MANAGER' THEN 'M'
        ELSE 'OTHER'
        END
FROM
    EMP;

-- CASE
-- 条件式埋め込みたいならこっち
SELECT
    SAL,
    CASE
        WHEN SAL > 1500 THEN 'very high'
        WHEN SAL > 1000 THEN 'high'
        ELSE 'normal'
        END
FROM
    EMP;


--------------------------------------------------
-- 文法
-- DECODE(列名,値1,出力1,値2,出力2, ・・・,標準出力)

-- CASE　列名
--   WHEN 値1 THEN 出力1
--   WHEN 値2 THEN 出力2
--   ELSE 標準出力
-- END

-- CASE
--   WHEN 条件式1 THEN 出力1
--   WHEN 条件式2 THEN 出力2
--   ELSE 標準出力
-- END
