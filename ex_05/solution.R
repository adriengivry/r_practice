# Write a function returning the position of the first occurrence of the given number in a list
# In the event the number hasn't been found, 0 must be returned
get_position_in_list = function(number, list)
{
  for (i in 1:length(list))
  {
    if (list[i] == number)
    {
      return(i)
    }
  }
  
  return(0)
}

print(paste("Expected:", 3, "|", "Your result:", get_position_in_list(3, list(1, 2, 3))))
print(paste("Expected:", 6, "|", "Your result:", get_position_in_list(2, list(1, 8, 0, 1, 3, 2, 5))))
print(paste("Expected:", 1, "|", "Your result:", get_position_in_list(0, list(0, 0, 7))))
print(paste("Expected:", 2, "|", "Your result:", get_position_in_list(1, list(9, 1, 1))))
print(paste("Expected:", 0, "|", "Your result:", get_position_in_list(3, list(8, 5, 4, 1, 2))))