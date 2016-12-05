# Activity:
#
# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
# Specification:
#
# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.
# Extensions:
#
# Let the user choose the maximum value (so they can play a long game with a random value between 0 and 10000, for example).
# Give feedback to the user: "Wrong, guess higher!" or "Wrong, guess lower!"

puts "What's the highest number?"
game_size = gets.to_i

puts "Guess a number"
user_number = gets.to_i




@computer_guess = 1 + rand(game_size)


while user_number != @computer_guess do
  if user_number > @computer_guess
    puts "Wrong, guess lower!"
    user_number = gets.to_i
  elsif user_number < @computer_guess
    puts "Wrong, guess higher!"
    user_number = gets.to_i
  end
end

puts "You are correct"
