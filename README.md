# 概要
DICのruby課題

以下のように出力するようにrubyでプログラムを作成する。

```
$ ruby janken.rb
数字を入力してください。
0: グー
1: チョキ
2: パー

0            # プレイヤーが0を入力
相手の手はチョキです。あなたの勝ちです。
```


以下の条件を満たす

- 数字の0をグー、1をチョキ、2をパーとみなす処理にすること
- 相手の手はランダムで、あいこの場合は繰り返し勝負をする処理であること
- 0〜2以外の入力時はジャンケンできない処理内容であること
- （「0〜2の数字を入力してください。」と出力し、あいこの時と同様に繰り返し勝負を行う）
- プログラムのメソッドは、インスタンスメソッドの形で定義すること
- ソースコードをGitHubのリポジトリにあげ、そのGitHubのURLを提出すること