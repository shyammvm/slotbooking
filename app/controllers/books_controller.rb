class BooksController < ApplicationController
    def index
        @books=Book.all
        @users=User.all
        @venues=Venue.all 
        
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
            render :new
          end
        else 
          render :new
        end

      end
    
      def bookingcheck
        Book.all.each do |b|
          
          if b.date == params[:date]
            byebug
           if b.start_time >= params[:end_time] or b.end_time <= params[:start_time]
            return true
           else 
            return false
           end
          else 
            return true
          end 
        end
      end

    private
    def book_params
        params.require(:book).permit(:date,:start_time,:end_time,:venue_id).merge(user_id:@current_user.id)
    end

end

