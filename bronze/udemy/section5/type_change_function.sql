-- 型変換関数
SELECT
    TO_CHAR(1234),
    TO_NUMBER('1234'),
    '1234' + 3, --暗黙的な型変換
    TO_DATE('2018-11-15')
FROM
    DUAL;

-- TO_CHAR format
SELECT
    TO_CHAR(123),
    TO_CHAR(123, '9999'),         -- 9で数字1桁(先行0なし) 123
    TO_CHAR(123, '0000'),         -- 9で数字1桁(先行0あり) 0123
    TO_CHAR(123, 'L999'),         -- Lでローカル通貨記号を付与 \123(円マークがつく)
    TO_CHAR(123, '999.0'),        -- 少数点以下の表示 123.0
    TO_CHAR(10000, '999,999,999') -- ,を区切り文字として表示 10,000
FROM
    DUAL;

-- DATE系のformat
-- YYYY : 西暦
-- MM : 月
-- DD : 日付
-- HH24 : 時刻 24を外すと12h表示
-- MI : 分
-- SS 秒
-- FM 前にある空白/0の除去
SELECT
    TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS'),
    TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS'),
    TO_CHAR(SYSDATE, 'fmYYYY-MM-DD HH24:MI:SS'), -- FMをつけると 01秒と表示されるところが 1 となるイメージ
    TO_DATE('2021/10/23 10:15:50', 'YYYY-MM-DD HH24:MI:SS'),
    TO_DATE('2021/01/01', 'YYYY-MM-DD')
FROM
    DUAL;