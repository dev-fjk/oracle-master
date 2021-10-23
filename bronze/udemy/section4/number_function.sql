-- 数値関数
-- ROUND / TRUNC / MOD は頻出

-- ROUND 小数点以下 四捨五入　第二引数は四捨五入対象の桁数
SELECT
    SAL,
    SAL / 3,
    ROUND(SAL / 3),
    ROUND(SAL / 3, 1)
FROM
    EMP;

-- TRUNC 小数点以下 切り捨て　
SELECT
    SAL,
    SAL / 3,
    TRUNC(SAL / 3),
    TRUNC(SAL / 3, 1)
FROM
    EMP;

-- MOD 第二引数で割った余りを抽出　
SELECT
    SAL,
    SAL / 3,
    MOD(SAL, 3)
FROM
    EMP;

-- 補足 使用頻度低めの数値関数
    -- CEIL 切り上げ
    -- FLOOR 切捨
    -- POWER 乗算 第二引数乗した数を返す
    -- SQRT 平方根を返す
SELECT
    CEIL(55.56),  -- 56
    FLOOR(55.56), -- 55
    POWER(3, 2),  -- 3の2乗なので 9
    SQRT(4)       -- 4の平方根なので2
FROM
    DUAL;