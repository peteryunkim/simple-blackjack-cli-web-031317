def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
 puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  answer
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total_card = card1 + card2
  display_card_total(total_card)
  total_card
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == "s"
      number
  elsif input == "h"
      number += deal_card
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_in_hand = initial_round
  until total_in_hand > 21 do
    total_in_hand = hit?(total_in_hand)
    display_card_total(total_in_hand)
  end
  end_game(total_in_hand)
end
