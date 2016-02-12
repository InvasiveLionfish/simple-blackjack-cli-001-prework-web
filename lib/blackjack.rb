def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  draw = get_user_input
  if draw == "h"
    card_total += deal_card
  elsif !(draw == "h" || draw == "s")
    invalid_command
  end
  return card_total
end

def invalid_command
  puts "That is an invalid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

=begin
def runner
  welcome
  card_total = initial_round

  while card_total.to_i < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end

  end_game(card_total)
end
=end

def runner
  welcome
  card_total = initial_round

  while card_total < 21
      card_total = hit?(card_total)
      display_card_total(card_total)
    if card_total == 21
      puts "Blackjack!"
    else card_total > 21
      end_game(card_total)
      break
    end
  end

end
