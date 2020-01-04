class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する


    array =  [*(0..2)]     
    i = -1
    while !array.include?(i)  do
        puts "数字を入力してください。"
        puts "0: グー"
        puts "1: チョキ"
        puts "2: パー"
        i = gets().to_i
    end 
    return i
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
    return rand(3)
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

    hands = ["グー", "チョキ", "パー"]

    diff = player_hand - enemy_hand
    # プレイヤーの値 - Enemyの値が2の時勝ち
    if (diff == 2) then
        puts "相手の手は#{hands[enemy_hand]}です。あなたの勝ちです"
    # プレイヤーの値 - Enemyの値が1の時負け
    elsif (diff == 1) then
        puts "相手の手は#{hands[enemy_hand]}です。あなたの負けです"
    # プレイヤーの値 - Enemyの値が0のときあいこ
    elsif (diff == 0) then
        puts "相手の手は#{hands[enemy_hand]}です。もう一度じゃんけんをお願いします"
    # プレイヤーの値 - Enemyの値が-1のとき勝ち
    elsif (diff == -1) then
        puts "相手の手は#{hands[enemy_hand]}です。あなたの勝ちです"
    # プレイヤーの値 - Enemyの値が-2のとき負け
    else
        puts "相手の手は#{hands[enemy_hand]}です。あなたの負けです"
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装でも合格になる。