```
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
vb.netで起動した、EXCELのプロセスが残る。
http://social.msdn.microsoft.com/Forums/ja-JP/vbgeneralja/thread/d2d47134-93d2-4b88-ba6d-18dfecb65563/



（参考）
COM オブジェクトの参照カウントを解放する
http://jeanne.wankuma.com/tips/csharp/programming/releasecom.html

 

xlSheet = CType(xlSheets(1), Excel.Worksheet)
Dim range As Excel.Range = xlApp.Range("A1")
range.Value = "AAA"
System.Runtime.InteropServices.Marshal.ReleaseComObject(range)
System.Runtime.InteropServices.Marshal.ReleaseComObject(xlSheets)

 

Range オブジェクトもちゃんと解放しましょう。
回答としてマーク 山本春海Microsoft Contingent Staff, Moderator 2011年4月6日 1:13

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

netリクエストパラメータ取得

==============================================

Page.Request プロパティ 
   要求されたページに対する HttpRequest オブジェクトを取得します


HttpContext.Request プロパティ 
   現在の HTTP 要求の HttpRequest オブジェクトを取得します。


型 : System.Net.WebResponse
インターネット要求への応答を格納する WebResponse。

==============================================

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝

幸い、VB.NET（VC#）では、ドキュメント（HTML ヘルプなど）を

自動生成するツール（NDoc など）があります。


VB.NET で、NDoc を利用するには「VBCommenter Help」という

アドオンを導入する必要がありますが、これを使用することによって、

ドキュメント生成用のタグなどが自動挿入され、コメントを入力しやすくなります。

■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

□□□□□□□□□□□□□□□□□□□□□□
            factory = DbProviderFactories.GetFactory("Oracle.DataAccess.Client")
            ocsb = factory.CreateConnectionStringBuilder
            ocsb("Data Source") = ConfigurationManager.AppSettings("dataSource")
            ocsb("User ID") = ConfigurationManager.AppSettings("userId")
            ocsb("Password") = ConfigurationManager.AppSettings("pass")
            ocsb("Pooling") = ConfigurationManager.AppSettings("pooling")

□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□



```