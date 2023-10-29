require "csv"
puts "あっち向いてホイゲームを始めます"

def janken
  
  while true
   puts "最初はグー！じゃんけん...ホイ！"
   puts "[0]:グー、[1]:チョキ、[2]:パー、[3]:戦わない"
  
   player_hand = gets.to_i
   program_hand = rand(3)
  
   if player_hand == 3 #プレイヤーが戦わないを選んだ時の処理
     puts "じゃんけんゲームが放棄されました。ゲームを終了します。"
     exit
   end
  
   jankens = ["グー","チョキ","パー","戦わない"]
   puts "あなたの手:#{jankens[player_hand]},コンピューターの手:#{jankens[program_hand]}"
   puts "ーーーーーーーーーーーーーーーーーーー"
  
   if player_hand == program_hand
     puts "あいこです。もう一度じゃんけんをします。"
   elsif (player_hand == 0 && program_hand == 1) ||
         (player_hand == 1 && program_hand == 2) ||
         (player_hand == 2 && program_hand == 0)
     puts "じゃんけんに勝ちました。"
     acci_muite_hoi
   else
     puts "じゃんけんに負けました。"
     acci_muite_hoi
   end
  end
end


def acci_muite_hoi
  directions = ["上","下","左","右"]
  while true
   puts "あっち向いてホイ！"
   puts "0(上) 1(下) 2(左) 3(右)"
   
   player_choice = gets.to_i
   computer_choice = rand(3)
   
   puts "あなたの選択:#{directions[player_choice]},コンピューターの選択:#{directions[computer_choice]}"
   
   if player_choice == computer_choice
     puts "あなたの勝ちです！"
     puts "ゲームを終了します。"
     puts "ーーーーーーーーーーーーーーーーーーー"
     exit(0)
   else
     puts "勝負がつかなかったのでもう一度試しましょう！"
     puts "ーーーーーーーーーーーーーーーーーーー"
     janken
   end
  end
end

next_game = true

while next_game
  next_game = janken
end
