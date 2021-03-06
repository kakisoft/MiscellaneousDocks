#### NGパターン
```

この方法でインストールすると、ApacheがPHPを認識しなかった。
（ロードモジュール  libphp5.so  が無かった）
```

## PHP 5.6をインストール.

## CentOS 7.4に、PHP 5.6 をインストール
参考サイト
<https://qiita.com/ddss/items/6c704334a0fde4a29dc0>

## 一旦、普通にPHPをインストール
```
sudo yum install php
```

## 現在インストールされているバージョンをアンインストール
```
sudo yum remove php-*
```

## リポジトリを追加する
```
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
```

## entOS-Baseリポジトリを一時的に切る
```
sudo vi /etc/yum.repos.d/CentOS-Base.repo
```
編集内容
```
[base]
enabled=0
[updates]
enabled=0
[extras]
enabled=0
[centosplus]
enabled=0
[contrib]
enabled=0
```

## php5.6をインストール
```
sudo yum install --enablerepo=remi --enablerepo=remi-php56 php php-devel php-mbstring php-mcrypt php-mysql

（エラー発生時は以下で）
sudo yum install --skip-broken --enablerepo=remi --enablerepo=remi-php56 php php-devel php-mbstring php-mcrypt php-mysql
```

## PHP のバージョン確認
```
php -v
```



_________________________________________

## ハマった点

エラー
```
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/6/remi/i386//remi-release-6.9-4.el6.remi.noarch.rpm


[vagrant@localhost ~]$ rpm -Uvh remi-release-6.rpm
error: Failed dependencies:
        epel-release = 6 is needed by remi-release-6.9-3.el6.remi.noarch
```

以下のコマンドで epelをインストールすると、「remi-release-7.1」がインストールされていた。（要 remi-release-6）
```
sudo yum install epel-release
```







