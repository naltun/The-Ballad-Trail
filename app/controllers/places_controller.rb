class PlacesController < ApplicationController
	before_action :find_place, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_end_user!, except: [:index, :show]

	def index
		@places = Place.all.order("created_at DESC")
	end

	def show
	end

	def new
		@place = current_end_user.places.build
	end

	def create
		@place = current_end_user.places.build(place_params)

		if @place.save
			redirect_to new_composer_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @place.update(place_params)
			redirect_to @place
		else
			render 'edit'
		end
	end

	def destroy
		@place.destroy
		redirect_to root_path
	end

	private

	def find_place
		@place = Place.find(params[:id])
	end

	def place_params
		params.require(:place).permit(:name, :latitude, :longitude, :region, :image)
	end
end
