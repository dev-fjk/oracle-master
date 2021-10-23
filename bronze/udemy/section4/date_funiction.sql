-- 日付計算
-- SYSDATE : システム日付
-- 日付に数値を足すと 数値が日付として足される(減算も同様) 日付 + 日付は不可
SELECT
    HIREDATE,
    HIREDATE + 3 AS PLUS3,
    HIREDATE - 3 AS MINUS3,
    SYSDATE,          -- OSのタイムゾーンでの現在の日付を返します
    CURRENT_DATE,     -- セッションのタイムゾーンでの、現在の日付を返します。
    CURRENT_TIMESTAMP -- セッションのタイムゾーンでの、現在の日付を返します。(ミリ秒まで表示)
FROM
    EMP;

-- 日付関数
-- ADD_MONTHS : 月の加算
-- LAST_DATE  : 月末の日を返す
-- NEXT_DAY  : 次の指定曜日の日付を返す
-- MONTHS_BETWEEN : 月の差分の返却
SELECT
    HIREDATE,
    ADD_MONTHS(HIREDATE, 3)                AS "三ヶ月後",
    ADD_MONTHS(HIREDATE, -3)               AS "三ヶ月前",
    LAST_DAY(HIREDATE)                     AS "月末の日付",
    NEXT_DAY(HIREDATE, '土曜日')            AS "HIREDATEの次の土曜日",
    MONTHS_BETWEEN('2015-12-01', '2015-10-01') AS "月の差分"
FROM
    EMP;
