-- having
-- グループ化した集計結果に対する条件指定(グループ関数に対するwhere句のようなイメージ)
-- 評価順序 where -> group by -> having -> order by

SELECT
    DEPTNO,
    JOB,
    COUNT(SAL),
    SUM(SAL)
FROM
    EMP
GROUP BY
    DEPTNO, JOB
ORDER BY
    DEPTNO;

-- 給料の合計値が1000以上のレコードだけ出力
SELECT
    DEPTNO,
    JOB,
    COUNT(SAL),
    SUM(SAL)
FROM
    EMP
GROUP BY
    DEPTNO, JOB
HAVING
    SUM(SAL) > 1000
ORDER BY
    DEPTNO;

SELECT
    JOB
FROM
    EMP
GROUP BY
    JOB;

-- JOBでグループ化して　1人しかいない職種を出力する
SELECT
    JOB
FROM
    EMP
GROUP BY
    JOB
HAVING
    COUNT(*) = 1;