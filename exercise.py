books=[]
def add_new_book():
            title=input("Enter the title of the book:")
            author=input(" Author of the book:")
            year=int(input("Year of publication:"))
            genre=input("Genre of the book:")
            book={"title":title,"author":author,"year":year,"genre":genre}
            books.append(book)
            print("Book added successfully!\n")

#def view_books():
#def review_rating():

def book_menu():
    while True:
        print("Welcome to the Book List progrram!")
        print("1. Add a new book")
        print("2. View all books in the list")
        print("3. Write a review or add a rating for the book ")
        print("4. Exit the program\n")
        choice=int(input("Enter your choice (1-4):"))

        match choice:
            case 1:
                add_new_book()
            case 2:
                view_books()
            case 3:
                review_rating()
            case 4:
                print("Thank you for using the Book List program!")
                break
            case _:
                print("Invalid choice, please enter 1-4.")
            
    if __name__ == "__main__":
       book_menu()

   
        


          



      