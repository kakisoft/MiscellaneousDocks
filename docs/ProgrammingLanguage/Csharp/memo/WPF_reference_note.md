```

System.Object
  System.Windows.Threading.DispatcherObject
    System.Windows.DependencyObject
      System.Windows.Media.Visual
        System.Windows.UIElement
          System.Windows.FrameworkElement
__________________________________________________________________________________
## DataContext
WPF、怒りのツリー外DataContext伝播
https://qiita.com/ugaya40/items/58e9e3c3340cc1f61b4f

FrameworkElementに親子関係があればDataContextが継承される。親のDataContextが変われば子のDataContextも自動で変わる。
この機能のおかげでXAMLの記述量少なくできている。
（GridにしかDataContextを設定していないが、Buttonにも同じDataContextが継承されているので、バインドができる）

この機能は基本的に「VisualTree(LogicalTreeの方かもしんない)上で親子関係があるFrameworkElement同士」でしか機能しない。
（FrameworkElementじゃないとそもそもDataContextプロパティが無い。）


## FrameworkElement.DataContext プロパティ
https://msdn.microsoft.com/ja-jp/library/system.windows.frameworkelement.datacontext(v=vs.110).aspx
要素がデータ バインディングに含まれている場合に、その要素のデータ コンテキストを取得または設定します。

__________________________________________________________________________________

## バックグラウンド スレッドで UI 要素を作るとメモリリークする (WPF)Add Star
http://grabacr.net/archives/1851

### Freezable Class
Defines an object that has a modifiable state and a read-only (frozen) state.

 * Freeze()
     現在のオブジェクトを変更不可能にし、その IsFrozen プロパティを true に設定します。

ImageSource は Freezable なので、バックグラウンドで画像を作って Freeze() してしまえば、UI スレッドに渡してもだいじょうぶ。 
なるべく UI スレッドの負担を減らしたいのです。
```
Console.WriteLine("Total Memory = {0} KB", GC.GetTotalMemory(true) / 1024);
```

## ImageSource クラス
BitmapSource と DrawingImage など幅、高さ、および ImageMetadata を持つオブジェクト型を表します。 これは抽象クラスです。
要は、WPFで利用されている画像オブジェクト。

WinFormsでは、System.Drawing.Bitmap


__________________________________________________________________________________

## System.ServiceModel.Web
チュートリアル : ASP.NET アプリケーション サービスの使用
https://msdn.microsoft.com/ja-jp/library/bb515342(v=vs.100).aspx

__________________________________________________________________________________
## CustomDataGrid
https://social.msdn.microsoft.com/Forums/ja-JP/e9909a42-ce31-4b1f-9443-d5fa77c76a77/datagridenter?forum=silvelightdotnetja
自前でDataGridを継承したCustomDataGridを定義できる。
（例）
```
    public class CustomDataGrid : DataGrid
    {

        public CustomDataGrid() : base()
        {
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                this.MoveNextCell();
                e.Handled = true;
            };

            base.OnKeyDown(e);
        }

        private void MoveNextCell()
        {

            DataGridColumn currentcol = this.CurrentColumn;
            
            // 現在のカラムが最大かどうか
            bool isLastCol = (currentcol.DisplayIndex == this.Columns.Count - 1); 

            if (!isLastCol)
            {
                // 編集を終了して次へ
                this.CommitEdit();
                this.CurrentColumn = this.Columns[currentcol.DisplayIndex + 1];
                this.BeginEdit();
            };

        }

    }
```
__________________________________________________________________________________



```