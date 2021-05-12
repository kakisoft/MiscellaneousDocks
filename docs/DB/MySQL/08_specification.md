# サイズ

<https://dev.mysql.com/doc/refman/8.0/en/integer-types.html>  

|  Type       |  Storage (Bytes)  |  Minimum Value Signed  |  Minimum Value Unsigned  |  Maximum Value Signed  |  Maximum Value Unsigned  |
|:------------|:------------------|:-----------------------|:-------------------------|:-----------------------|:-------------------------|
|  TINYINT    |  1                |  -128                  |  0                       |  127                   |  255                     |
|  SMALLINT   |  2                |  -32768                |  0                       |  32767                 |  65535                   |
|  MEDIUMINT  |  3                |  -8388608              |  0                       |  8388607               |  16777215                |
|  INT        |  4                |  -2147483648           |  0                       |  2147483647            |  4294967295              |
|  BIGINT     |  8                |  -263                  |  0                       |  2^63 - 1              |  2^64 -1                 |


 * MySQL の一部の型は、型によって既にサイズが確定しており、サイズを好き勝手に変える事は出来ない。
 * 2^63 - 1 = 922,3372,0368,5477,5808  - 1
 * 2^64 - 1 = 1844,6744,0737,0955,1616 - 1

INT で範囲指定をするなら、「1～999999999（9桁）」ぐらいにしておくのが無難か。
