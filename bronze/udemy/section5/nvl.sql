-- nvl関数 Nullの場合別の値に変換する
select
    ENAME,
    COMM,
    NVL(COMM, -1) -- NULLの場合-1に変換する
FROM
    EMP