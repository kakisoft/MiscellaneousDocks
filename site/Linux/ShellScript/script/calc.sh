#!/usr/bin/bash

echo 5+2 #=> "5+2"

echo `expr 5 + 2` #=> 7

## 今はこっちが主流。
echo $((5 + 2)) #=> 7

## (())にて使う変数には、$は不要。
n=5
((n=n+5)) #=> 10 
echo $n

## + - * / % ** ++ --

echo $((10 / 3)) #=> 3
