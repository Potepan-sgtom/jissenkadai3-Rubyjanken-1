  require "csv"
  puts "今からじゃんけんをしましょう。"
  puts "------------------------------"

#じゃんけん
def janken
  puts "最初はグー！！じゃ〜け〜ん・・・"
  puts "[0]グー [1]チョキ [2]パー"
  
  number = gets.to_i
  computer = rand(3)
  
  janken = ["グー","チョキ","パー"]
    puts "自分:#{janken[number]} 相手:#{janken[computer]}"
  
  if number == computer
      puts "あいこで・・・しょ！！"
      
      
  elsif number == 0 && computer == 1 ||
      number == 1 && computer == 2 ||
      number == 2 && computer == 0
      puts "勝利！！　あっちむいて〜・・・ホイ！！"
  
  else 
      puts "負け〜 あっちむいて〜・・・ホイ！！"
  end
  
end
  
#最初のじゃんけんで勝敗が決している場合あっち向いてホイ
def acchimuitehoi
 puts "[0]上 [1]下 [2]左 [3]右"
 select_number = gets.to_i
 random_number =rand(3)
 directions = ["上","下","左","右"]
  puts "あなた：#{directions[select_number]} 相手：#{directions[random_number]}"
   if select_number == random_number
    true
   else
    false
   end
end
   
 #最初のじゃんけんであいこの場合
if number == computer
   loop do
    puts "[0]グー [1]チョキ [2]パー"
        
    number = gets.to_i
    computer = rand(3)
        
    janken = ["グー","チョキ","パー"]
    puts "自分:#{janken[number]} 相手:#{janken[computer]}"
    puts "--------------------------"
      
      
   if number == 0 && computer == 1 ||
      number == 1 && computer == 2 ||
      number == 2 && computer == 0
      puts "勝利！！　あっちむいて〜・・・ホイ！！"
      next if acchimuitehoi
    else 
      puts "負け〜 あっちむいて〜・・・ホイ！！"
      next if acchimuitehoi
    end
   end
   
      #勝敗がついたらループを終わらせる。(nextタグ)
   
 end

#最終判定
if janken
 puts "あなたの勝ちです"
else
 puts "あなたの負けです"
end
