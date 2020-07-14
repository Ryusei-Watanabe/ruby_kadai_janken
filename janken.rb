class Player
  def hand
    index = ["0:グー", "1:チョキ", "2:パー"]
    puts "数字を入力してください"
    index.each do |content|
      puts content
    end
    input_hand = gets.to_i
    while true
      if input_hand == 0
        return input_hand
      elsif input_hand == 1
        return input_hand
      elsif input_hand == 2
        return input_hand
      else
        puts "もう一度数字を入力してください"
        index.each do |content|
          puts content
        end
        input_hand = gets.to_i
      end
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(0..2)
  end
end

class Janken
  def pon(player_hand,enemy_hand)
    janken = ["グー","チョキ","パー"]
    content = "相手の手は#{janken[enemy_hand]}です。"
    if  enemy_hand == player_hand
      puts "あいこ"
      return true
    elsif (player_hand == 0 && enemy_hand == 1) ||
          (player_hand == 1 && enemy_hand == 2) ||
          (player_hand == 2 && enemy_hand == 0)
      puts content.chomp + "あなたの勝ちです"
      return false
    else
      puts content.chomp + "あなたの負けです"
      return false
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new


next_game = true
while next_game
next_game = janken.pon(player.hand,enemy.hand)
end

# ① player = Player.newの記述の意味 = F
# ② 大文字のPlayerと小文字のplayerの違い = F
