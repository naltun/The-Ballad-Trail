class SongsController < ApplicationController
	before_action :authenticate_end_user!, except: [:index, :show]
	before_action :find_song, only: [:show, :edit, :update, :destroy]
	
	
	def index
		@songs = Song.all.order("created_at DESC")
	end

	def show
		@place = Place.where(song_id: @song)
		@song = Song.find(params[:id])
	end

	def new
		@song = current_end_user.songs.build
	end

	def create
		@place = Place.find(params[:place_id])
		@song = current_end_user.songs.build(song_params)
		@song.place_id = @place.id

		if @song.save
			redirect_to @song
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @song.update(song_params)
			redirect_to @song
		else
			render 'edit'
		end
	end

	def destroy
		@song.destroy
		redirect_to root_path
	end

	private

	def find_song
		@song = Song.find(params[:id])
	end

	def song_params
		params.require(:song).permit(:title, :description, :medialink, :lyrics, :place_id, :composer_id)
	end
end