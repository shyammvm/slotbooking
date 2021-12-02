class VenuesController < ApplicationController
    def index
        @venue = Venue.all
    end


    def show
        @venue = Venue.find(params[:id])
    end
        


    def new
        @venue = Venue.new
    end

    def create
        @venue = Venue.new(form_params)
        @venue.images.attach(params[:venue][:images])
        if @venue.save
          redirect_to root_path
        else 
          flash[:notice] = 'Please try again'
          redirect_to new_venue_path
        end
    end

    def edit
        @venue = Venue.find(params[:id])
      end

      def update
        @venue = Venue.find(params[:id])
    
        if @venue.update(form_params)
          redirect_to @venue
        else
          render :edit
        end
      end



    def destroy
        @venue = Venue.find(params[:id])
        @venue.destroy
    
        redirect_to root_path
      end




    def form_params
        params.require(:venue).permit(:title, :body)
    end
    
    

end
