def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..10)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  puts "Your cards add up to #{card_total}"
  return card_total
end

def hit?(card_total)
  prompt_user
  playerChoice = get_user_input
  case playerChoice
    when "h"
      card_total += deal_card
      display_card_total(card_total)
    when "s"
    else
      invalid_command
  end
  return card_total
end



def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = hit?(initial_round)
  until card_total > 21
    hit?(card_total)
  end
  end_game(card_total)
end
