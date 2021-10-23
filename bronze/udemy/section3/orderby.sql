-- ORDER BY ソート設定

-- ASC 昇順(デフォルトなので省略可能) DESC 降順
-- NULLS LAST NULLは最後(昇順の時はデフォルトなので省略可能)
-- NULLS FIRST NULLは最初(降順の時はデフォルトなので省略可能)　※NULL は 無限という扱いとなるため。
SELECT
    ENAME,
    SAL,
    COMM
FROM
    EMP
WHERE
    DEPTNO = 30;

SELECT
    ENAME,
    SAL,
    COMM
FROM
    EMP
WHERE
    DEPTNO = 30
ORDER BY
    COMM ASC;
-- ASCは省略可能

-- 複数指定時は 第一ソートキーの SALが優先される。
SELECT
    ENAME,
    SAL,
    COMM
FROM
    EMP
WHERE
    DEPTNO = 30
ORDER BY
    SAL, COMM;

SELECT
    ENAME,
    SAL,
    COMM
FROM
    EMP
WHERE
    DEPTNO = 30
ORDER BY
    COMM NULLS FIRST;

SELECT
    ENAME,
    SAL,
    COMM
FROM
    EMP
WHERE
    DEPTNO = 30
ORDER BY
    COMM DESC;

SELECT
    ENAME,
    SAL,
    COMM
FROM
    EMP
WHERE
    DEPTNO = 30
ORDER BY
    COMM NULLS LAST;