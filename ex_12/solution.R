# Write a "Guess The Number" game.
# Rules:
# - The computer starts by generating a random number between 0 and 100
# - The user try guessing the number by inputting a number
# - The computer then answers:
#   - It's less: if the given number is higher than the expected number
#   - It's more: if the given number is lower than the expected number
#   - Congrats!: If the given number is the expected number
# We do not expect you to ensure that the user input is correct, just assume the user is not a monkey
# Resources:
# - sample(): generates a random number within a given range
# - readline(): reads a line from the terminal (used to retrieve user inputs)
# - as.numeric(): converts characters to a value of type "numeric" (number)

cat("\014")

is_playing = TRUE

print("Welcome to this FANTASTIC 'Guess The number!' game")
print("Rules are simple, the computer thinks about a number, and you have to guess it!")
print("Let's get started!")

while (is_playing)
{
  number = sample(1:100, 1)
  attempts = 0
  
  repeat
  {
    repeat
    {
      user_number = as.numeric(readline("Your guess:"))
      if (!is.na(user_number))
      {
        break;
      }
      else
      {
        print("This isn't a valid number, please try again!")
      }
    }

    attempts = attempts + 1
    
    if (user_number == number)
    {
      print(paste("Congrats, you found the correct number in", attempts, "attempts!"))
      break
    }
    else if (user_number > number)
    {
      print("It's less!")
    }
    else
    {
      print("It's more!")
    }
  }
  
  print("Do you want to play again? (Y/n)")
  if (tolower(readline("> ")) != "y")
  {
    is_playing = FALSE
  }
  else
  {
    print("Sweet, let's go!")
  }
}

print("Thanks for playing! Bye :)")