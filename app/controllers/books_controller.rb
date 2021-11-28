class BooksController < ApplicationController
    def index
        @books=Book.all
        @users=User.all
        
    end

 
    def new
        @book = Book.new
        @books = Book.all
        @venues=Venue.all
      end
    
      def create
        @book = Book.new(book_params)
    
        if @book.save
          redirect_to root_path
        else
          render :new
        end
      end
    

    private
    def book_params
        params.require(:book).permit(:date,:start_time,:end_time,:venue_id).merge(user_id:5)
    end

end

