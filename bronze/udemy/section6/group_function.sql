-- グループ関数 グループ化
-- 特定の列をグループ別に集計する処理

SELECT
    COUNT(*),
    SUM(SAL),
    MAX(SAL),
    MIN(SAL),
    AVG(SAL),
    STDDEV(SAL),
    VARIANCE(SAL),
    MEDIAN(SAL)
FROM
    EMP;

-------------------------------------------
-- 頻出
-- COUNT : レコードの件数
-- SUM : 列の合計値
-- MAX : 列の最大値
-- MIN : 列の最小値
-- AVG : 列の平均値

-- 使用頻度低い
-- STDDEV : 標準偏差
-- VARIANCE : 分散
-- MEDIAN : 中央値
