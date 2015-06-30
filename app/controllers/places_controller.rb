class PlacesController < ApplicationController
	def index
	end

	def show
	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)

		if @place.save
			redirect_to @place
		else
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def find_place
	end

	def place_params
		params.require(:place).permit(:name, :latitude, :longitude, :region)
	end
end
