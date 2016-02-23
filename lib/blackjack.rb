def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_count)
  puts "Your cards add up to #{card_count}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   gets.chomp
end

def end_game(card_count)
  if card_count > 21
    puts "Sorry, you hit #{card_count}. Thanks for playing!"
  end
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

card_count = initial_round

def hit?(card_count)
  prompt_user
  answer = get_user_input

  if answer == "s"
    return card_count
  elsif answer == "h"
    hit_me = deal_card
    new_hand = card_count += hit_me
    new_hand
    return new_hand
  elsif (answer != "h") && (answer != "s")
    invalid_command
    return card_count
  end
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
  card_count = initial_round

until card_count > 21
  card_count += hit?(card_count)
  display_card_total(card_count)
return card_count
end

end_game(card_count)

end

