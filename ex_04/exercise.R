# Write a function to add two numbers (a and b).
# In the event one of these two numbers (or both) are NULL (undefined), return 0 instead
# You can use the function "is.null" to check if a variable is equal to NULL
add_if_not_null = function(a, b)
{

}

print(paste("Expected:", 1, "|", "Your result:", add_if_not_null(0, 1)))
print(paste("Expected:", 0, "|", "Your result:", add_if_not_null(NULL, 8)))
print(paste("Expected:", 0, "|", "Your result:", add_if_not_null(3, NULL)))
print(paste("Expected:", 0, "|", "Your result:", add_if_not_null(NULL, NULL)))
print(paste("Expected:", 19, "|", "Your result:", add_if_not_null(12, 7)))