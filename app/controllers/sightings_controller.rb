class SightingsController < ApplicationController

    def index
        @sights = Sighting.all
    end    
    
    def new
        aminal = Aminal.find(params[:aminal_id] )
        @sight = aminal.sightings.new
    end
    
    def create
     @sight = Sighting.new(sight_params)
      if @sight.save
        redirect_to aminal_path(@sight.aminal)
      else
        render action: :new
      end
    end
    
    def edit
         @sight = Sighting.find(params[:id])
    end    
    
    def update
        @sight = Sighting.find(params[:id])
        @sight.update sight_params
            redirect_to aminal_path(@sight.aminal)
    end
    
    def destroy
        @add = Aminal.find(params{:aminal_id})
        @sight = Sighting.find(params[:id])
        @sight.destroy
          redirect_to aminal_path(@sight.aminal)
    end
    
    
    private
    
    def sight_params
        params.require(:sighting).permit(:aminal_id, :date, :time, :latitude, :longitude, :regions)
    end


    
end
