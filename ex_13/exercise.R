# A librarian has a dataset containing details about every books in the library, such as:
# - title: The name of the book
# - category: The category this book belongs to
# - borrowed: Amount of times this book has been borrowed
# - price: Price of the book
# This librarian want you to create a program to keep track of several information
# about the library.
# Implement the functions bellow so the program output the expected results
require(XML)

# Returns a dataframe from the books dataset at the given filepath
get_books_dataframe = function(dataset_path)
{

}

# Draw a plot with the book count for each category
draw_books_per_category = function(data)
{

}

# Draw a plot with the amount of times each book has been borrowed
draw_books_borrow_count = function(data)
{

}

# Print the amount of books in the library
print_books_count = function(data)
{

}

# Print to net worth of the library (Sum of the price of every books in the library)
print_library_net_worth = function(data)
{

}

# Print the average price for a book in the library
print_book_average_price = function(data)
{

}

application = function(dataset_path)
{
  books_data = get_books_dataframe(dataset_path)
  
  repeat
  {
    cat("\014")
    cat("--- Ze Book Store ---\n")
    cat("[1] Books per category\n")
    cat("[2] Books Borrow Count\n")
    cat("[3] Books count\n")
    cat("[4] Library Net Worth\n")
    cat("[5] Book Average Price\n")
    cat("[0] Exit\n")
    
    input = readline("> ")
    
    if (input == "1")       draw_books_per_category(books_data)
    else if (input == "2")  draw_books_borrow_count(books_data)
    else if (input == "3")  print_books_count(books_data)
    else if (input == "4")  print_library_net_worth(books_data) 
    else if (input == "5")  print_book_average_price(books_data) 
    else
    {
      cat("Bye!")
      break
    }
    
    readline(prompt="Press [enter] to continue")
  }
}

application("books.xml")