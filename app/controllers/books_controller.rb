class BooksController < ApplicationController
  before_action :load_venue, only: [:create]

    def index
        @books = Book.all
        @users = User.all
        @venues = Venue.all 
    end

 
    def new
        @book = Book.new
        @books = Book.all
        @venues=Venue.all
      end
    
    def create
      @venues=Venue.all
      @books=Book.all
      @book = Book.new(book_params)
      if bookingcheck
        if @book.save
          redirect_to root_path
        else
          flash[:notice] = 'Please try again.'
          render :new
        end
      else 
        flash[:notice] = 'Booking already exists for the selected venue and time'
        render :new
      end

    end
    
    def bookingcheck
      current_start_time = book_params[:start_time]
      current_end_time = book_params[:end_time]
      @venue.books.each do |b|
        if current_start_time <= b.end_time && b.start_time <= current_end_time
          return false
        end
      end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
    
        redirect_to books_path
    end

    private

    def book_params
      params.require(:book).permit(:date,:start_time,:end_time,:venue_id).merge(user_id:@current_user.id)
    end
    
    def load_venue
      @venue = Venue.find_by(id: book_params[:venue_id])
    end
end

