## 日付
```sql
SELECT
    DATEADD(MONTH, 1, CAST('2018/01/28' AS DATE)) AS "1/28 の１か月後"
   ,DATEADD(MONTH, 1, CAST('2018/01/29' AS DATE)) AS "1/29 の１か月後"
   ,DATEADD(MONTH, 1, CAST('2018/01/30' AS DATE)) AS "1/30 の１か月後"
   ,DATEADD(MONTH, 1, CAST('2018/01/31' AS DATE)) AS "1/31 の１か月後"

   ,DATEADD(MONTH, -1, CAST('2018/03/28' AS DATE)) AS "3/28 の１か月前"
   ,DATEADD(MONTH, -1, CAST('2018/03/29' AS DATE)) AS "3/29 の１か月前"
   ,DATEADD(MONTH, -1, CAST('2018/03/30' AS DATE)) AS "3/30 の１か月前"
   ,DATEADD(MONTH, -1, CAST('2018/03/31' AS DATE)) AS "3/31 の１か月前"

   ,DATEADD(MONTH, 1, CAST('2020/01/28' AS DATE)) AS "1/28 の１か月後（うるう年）"
   ,DATEADD(MONTH, 1, CAST('2020/01/29' AS DATE)) AS "1/29 の１か月後（うるう年）"
   ,DATEADD(MONTH, 1, CAST('2020/01/30' AS DATE)) AS "1/30 の１か月後（うるう年）"
   ,DATEADD(MONTH, 1, CAST('2020/01/31' AS DATE)) AS "1/31 の１か月後（うるう年）"

   ,DATEADD(MONTH, -1, CAST('2020/03/28' AS DATE)) AS "3/28 の１か月前（うるう年）"
   ,DATEADD(MONTH, -1, CAST('2020/03/29' AS DATE)) AS "3/29 の１か月前（うるう年）"
   ,DATEADD(MONTH, -1, CAST('2020/03/30' AS DATE)) AS "3/30 の１か月前（うるう年）"
   ,DATEADD(MONTH, -1, CAST('2020/03/31' AS DATE)) AS "3/31 の１か月前（うるう年）"
```