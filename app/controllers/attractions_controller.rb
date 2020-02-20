class AttractionsController < ApplicationController

def index
    @attractions = Attraction.all
end

def show
   # raise params.inspect
    @attraction = Attraction.find_by(id: params[:id])
end

def new
    @attraction = Attraction.new
end

def create
  #  raise params.inspect
  @attraction = Attraction.new(attraction_params)
  if @attraction.save 
              redirect_to attraction_path(@attraction)
          else
              render 'new'
          end
    
end


    def edit
        @attraction = Attraction.find_by(id: params[:id])
    end

private

    def attraction_params
        params.require(:attraction).permit(:name, :nausea_rating, :happiness_rating, :min_height, :tickets)
    end
end
