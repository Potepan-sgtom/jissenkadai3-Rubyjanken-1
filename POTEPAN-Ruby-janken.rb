require "csv"


#じゃんけん
puts "今からじゃんけんをしましょう。"
  puts "最初はグー！！じゃ〜け〜ん・・・"
  puts "[0]グー [1]チョキ [2]パー"
  
  number = gets.to_i
  computer = rand(3)
  
  if number == computer
      puts "あいこで・・・しょ！！"
      #繰り返し
      if number == computer
        puts "[0]グー [1]チョキ [2]パー"
        number = gets.to_i
        computer = rand(3)
        if number == 0 && computer == 1 ||
           number == 1 && number == 2 ||
           number == 2 && number == 0
           puts "勝利！！　あっちむいて〜・・・ホイ！！"
        else 
           puts "負け〜 あっちむいて〜・・・ホイ！！"
        end
        
      end
      
  elsif number == 0 && computer == 1 ||
      number == 1 && number == 2 ||
      number == 2 && number == 0
      puts "勝利！！　あっちむいて〜・・・ホイ！！"
  
  else 
      puts "負け〜 あっちむいて〜・・・ホイ！！"
  end

#あっち向いてホイ
puts "[0]上 [1]下 [2]左 [3]右"
 select_number = gets.to_i
 random_number =rand(3)
 directions = ["上","下","左","右"]
  puts "あなた：#{directions[select_number]} 相手：#{directions[random_number]}"
   if select_number == random_number
    puts"あなた(相手)の勝ちです"
   elsif select_number == random_number
    puts"あなた(相手)の負けです"
   else
    puts "あっち向いて・・・"
   end

#あっちむいてほい繰り返し
if select_number != random_number
  loop do
   puts "[0]上 [1]下 [2]左 [3]右"
   select_number = gets.to_i
   random_number =rand(3)
   directions = ["上","下","左","右"]
    puts "あなた：#{directions[select_number]} 相手：#{directions[random_number]}"
     if select_number == random_number
      puts"あなた(相手)の勝ちです"
     elsif select_number == random_number
      puts"あなた(相手)の負けです"
     else
      puts "あっち向いて・・・"
     end
 end
end
