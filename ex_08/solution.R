# Write a function that calculate the absolute difference between two numbers.
absolute_difference = function(a, b)
{
  if (a > b)
  {
    return(a-b)
  }
  else
  {
    return(b-a)
  }
}

print(paste("Expected: 8 |", "Your result:", absolute_difference(10, 2)))
print(paste("Expected: 2 |", "Your result:", absolute_difference(3, 5)))
print(paste("Expected: 10 |", "Your result:", absolute_difference(7, -3)))