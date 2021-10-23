-- GROUP BY
--　グループ化 SELECT句で指定した列をグルーピングしたい場合に指定する
-- グループ化する場合 SELECTする列は全てGROUP BY句でも指定されている必要あり

-- 評価順
-- where -> group by -> order by の順

SELECT
    DEPTNO,
    SAL
FROM
    EMP;

-- DEPT NO毎(所属部署毎 の　平均給料を抽出)
SELECT
    DEPTNO,
    AVG(SAL)
FROM
    EMP
GROUP BY
    DEPTNO
ORDER BY
    DEPTNO;

SELECT
    DEPTNO,
    COUNT(SAL),
    SUM(SAL),
    MAX(SAL),
    MIN(SAL),
    AVG(SAL)
FROM
    EMP
GROUP BY
    DEPTNO;

SELECT
    DEPTNO,
    COUNT(SAL),
    SUM(SAL),
    MAX(SAL),
    MIN(SAL),
    AVG(SAL)
FROM
    EMP
GROUP BY
    DEPTNO
ORDER BY
    DEPTNO;

-- 所属部署と 職業別の合計給与を調べる
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