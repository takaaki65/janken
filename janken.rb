puts "ジャンケン..."

def janken

    puts "0(グー)1(チョキ)2(パー)"

    player_hand = gets.to_i

    com_hand = rand(3)
    
    jankens = ["グー","チョキ","パー"]

    puts "ほい"

    puts "あなたのが出したのは#{jankens[player_hand]} , 相手が出したのは#{[com_hand]}"
    
    drow = player_hand == com_hand
    win = (player_hand == 0 && com_hand == 1) || (player_hand == 1 && com_hand == 2) || (player_hand == 2 && com_hand == 0)
    #lose = !(win)

    if drow
        puts "あいこで"
        return true
        
    elsif win
        puts "あなたの勝ちです！"
        puts "-----------------"
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        
        player_play = gets.to_i
        com_play = rand(4)

        plays = ["上","下","左","右"]
        puts "ホイ"
        puts "あなたは#{plays[player_play]}"
        puts "相手は#{plays[com_play]}"

        if player_play == com_play
            puts "あなたの勝ちです!"
            
        else
            puts "やり直しです!"
            return true
        end

    else 
        puts "あなたの負けです!"
        puts "-----------------"
        puts "あっち向いて"
        puts "0(上)1(下)2(左)3(右)"
        
        player_play = gets.to_i
        com_play = rand(4)

        plays = ["上","下","左","右"]
        puts "ホイ"
        puts "あなたは#{plays[player_play]}"
        puts "相手は#{plays[com_play]}"

            if player_play == com_play
                puts "あなたの負けです!"              
            else
                puts "やり直しです!"
                return true
            end
    end
end

next_game = true

while next_game
    next_game = janken
end