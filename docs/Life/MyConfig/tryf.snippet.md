```
<?xml version="1.0" encoding="utf-8"?>
<CodeSnippets xmlns="http://schemas.microsoft.com/VisualStudio/2005/CodeSnippet">
  <CodeSnippet Format="1.0.0">
    <Header>
      <Title>tryf</Title>
      <Shortcut>SSEtry</Shortcut>
      <Description>try finally に対するコード スニペット</Description>
      <Author>Microsoft Corporation</Author>
      <SnippetTypes>
        <SnippetType>Expansion</SnippetType>
        <SnippetType>SurroundsWith</SnippetType>
      </SnippetTypes>
    </Header>
    <Snippet>
      <Code Language="csharp"><![CDATA[try 
      {         
        $selected$
      }
      catch( System.Exception ex )
      {
#if DEBUG
                System.Console.WriteLine(
                    string.Format( "{0}.{1}\n\t|-{2} : {3}", this.ToString(), System.Reflection.MethodBase.GetCurrentMethod().Name
                    , nameof( System.Exception ), ex.Message )
                    );
#else
                MessageBox.Show(
                    string.Format( "{0}.{1}\n{2} : {3}", this.ToString(), System.Reflection.MethodBase.GetCurrentMethod().Name
                    , nameof( System.Exception )
                    , ex.Message
                    )
                    , this.ToString()
                    , MessageBoxButton.OK, MessageBoxImage.Warning );
#endif

      }
      finally
      {
        $end$
      }]]>
      </Code>
    </Snippet>
  </CodeSnippet>
</CodeSnippets>
```