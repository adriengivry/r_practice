# Using the digit_count function you wrote previously, write a function that multiply a number by 2 until this number is 4 digits long
# Once the number is at least 4 digits, return this number
digit_count = function(x)
{
  floor(log10(x)) + 1
}

multiple_by_two_until_big = function(x)
{
  while (digit_count(x) < 4)
  {
    x = x * 2;
  }
  
  return(x)
}

print(paste("Expected:", 1024, "|", "Your result:", multiple_by_two_until_big(1)))
print(paste("Expected:", 1536, "|", "Your result:", multiple_by_two_until_big(24)))
print(paste("Expected:", 1600, "|", "Your result:", multiple_by_two_until_big(100)))
      
