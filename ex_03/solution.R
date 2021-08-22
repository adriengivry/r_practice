# Write the factorial function.
# Factorial example: 5! = 1 * 2 * 3 * 4 * 5 = 120
factorial = function(n)
{
  if (n == 0 || n == 1)
  {
    return(1)
  }
  else
  {
    result = 1
    
    for (i in 2:n)
    {
      result = result * i
    }
    
    return(result)
  }
}

print(paste("Expected:", 1, "|", "Your result:", factorial(0)))
print(paste("Expected:", 1, "|", "Your result:", factorial(1)))
print(paste("Expected:", 2, "|", "Your result:", factorial(2)))
print(paste("Expected:", 5040, "|", "Your result:", factorial(7)))
print(paste("Expected:", 3628800, "|", "Your result:", factorial(10)))