```
playbook.yml 

1 行目は「---」で YAML ファイルということを示します。
====================================
---
- hosts: all
  sudo: yes
  tasks:
    - name: add a new user
      user: name=taguchi
====================================

ansible-playbook playbook.yml


━
ファイル形式は YAML なので、yml という拡張子にしましょう。

1 行目は「---」で YAML ファイルということを示します。

最初に書かなければいけないのは「- hosts: 」で、対象となるサーバを指定しましょう。

「web」「db」でもいいのですが、今回は全部なので「all」とします。

ユーザを追加するにあたっては管理者権限が必要なので、そういう場合は「sudo: yes」としましょう。

そこまで来たらようやくタスクを実行することができて、「tasks:」でモジュールを指定していきます。

ここではタスクの名前を指定するのが推奨されているので、必須ではないですが付けておきましょう。
「- name: add a new user」としましょう。

モジュール自体は user モジュールを使っていきます。

オプションで name が必須になるので、今回は「user: name=taguchi」としましょう。

これでとりあえずできたのですが、注意しておいていただきたいのは、ここに書いているものは「サーバのあるべき状態を記述したもの」だと思ってください。

なので、このタスクは毎回実行するたびに taguchi ユーザがどんどん追加されていくのではなくて、もし taguchi ユーザがあった場合には何もしないというものになるので、意識しておいてください。

これは難しい言葉で「冪等性（べきとうせい）」というのですが、興味がある人は調べてみるといいでしょう。
1:44
ここまでできたら保存して、実行していきます。

実行するには absible-playbook というコマンドを使って、Playbook のファイル名を指定しましょう。

実行すると「WARNING」が出てきていますが、これは無視しておいてください。

「TASK」に実行結果が出ています。

タスクをやりましたよ、と。

実際処理は OK で、サーバの状態が変わりましたよということで、「changed」となっています。

ここで冪等性を試すために、もう 1 回同じ Playbook を実行してみましょう。

そうすると、タスク自体は OK なのですが、すでにユーザがあるので、「changed=0」になっているのが分かるかと思います。

こういった冪等性というか、サーバのあるべき状態を Playbook に書くのを意識しておくといいかと思います。

それからちゃんとユーザが追加されているかというのも確認しておきましょう。

「ssh web」で Web にログインして、「cat /etc/passwd」を見るとユーザの一覧が出てきます。

一番下にちゃんと taguchi ユーザが追加されているのが分かるかと思います。

「exit」で Host に戻って続きをやっていきたいのですが、長くなりそうなので次回以降にしていきましょう。

```