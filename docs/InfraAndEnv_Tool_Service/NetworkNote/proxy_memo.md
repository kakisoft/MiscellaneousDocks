```
＜proxy.pac出力＞
curl http://hoge/proxy.pac -Method Get -ContentType 'application/json;charset=utf8' -Outfile "C:\tmp/proxypac.js"

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【git】

＜設定＞
git config --global http.proxy http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
git config --global https.proxy http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
git config --global url."https://".insteadOf git://

＜内容確認＞
git config --list

＜設定解除＞
git config --global --unset http.proxy
git config --global --unset https.proxy
git config --global --unset url."https://".insteadOf git://


━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【npm】

＜設定＞
npm -g config set proxy http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
npm -g config set https-proxy http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
npm -g config set registry "http://registry.npmjs.org/"

＜内容確認＞
npm config list


＜設定解除＞
npm -g config rm proxy
npm -g config rm https-proxy
npm -g config rm registry

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【apt】

/etc/apt/apt.conf
に、以下を追記。

Acquire::http::proxy "http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]/";
Acquire::https::proxy "http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]/";

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【gem】

＜設定＞


set http_proxy=http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
set https_proxy=http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]



export HTTP_PROXY=http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]/


gem install rails -r -p http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]/



set http_proxy=http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
set http_proxy_user=70190485
set http_proxy_pass=70190485D
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
【Vagrant】

set http_proxy=http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]
set https_proxy=http://[ID:PASSWORD]@[プロキシサーバのURL]:[ポート番号]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

＜日々プロキシで苦しむ人の為のプロキシ設定まとめ＞
http://qiita.com/uzresk/items/bc7c4a9dc764390cd5ce

```