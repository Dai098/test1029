require "csv"
puts "あっち向いてホイゲームを始めます"


def janken
  puts "最初はグー！じゃんけん..."
  puts "[0]:グー、[1]:チョキ、[2]:パー、[3]:戦わない"
  puts "0〜2の数字から選んで・・・ホイ！"
  
  player_hand = gets.to_i
  if !(player_hand == 0 || player_hand == 1 || player_hand == 2)
    player_hand = 3
  end
  
  program_hand = rand(3)
  case_pattern = 0
  
  jankens = ["グー","チョキ","パー","戦わない"]
  puts "あなたの手:#{jankens[player_hand]}, プログラムの手:#{jankens[program_hand]}"
  puts "ーーーーーーーーーーーーーーー"
  
  if player_hand == 3 || program_hand == 3
    puts "じゃんけんゲームが放棄されました。ゲームを終了します。"
    case_pattern = 3
  else
    number = player_hand - program_hand
    case number
    when 0 then
      puts "あいこです。もう一度じゃんけんをします。"
      case_pattern = janken
    when 1, -2 then
      puts "じゃんけんに負けました。あっち向いて・・・ホイ！"
      case_pattern = 2
    when -1,2 then
      puts "じゃんけんに勝ちました。あっち向いて・・・ホイ！"
      case_pattern = 1
    end
  end
end

result = janken
if result == 3
  return
end

puts "0(上)1(下)2(左)3(右)"
player_hand2 = gets.to_i
program_hand2 = rand(3)
directions = ["上","下","左","右"]
puts "あなた：#{directions[player_hand2]} 相手：#{directions[program_hand2]}"
puts "ーーーーーーーーーーーーーーー"

#あっち向いてホイの結果勝ったか負けたかを表示させたい
case result
 when player_hand2 == program_hand2 then
  puts "あなたの勝ちです"
 else
  puts "あなたの負けです"
end