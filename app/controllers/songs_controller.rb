class SongsController < ApplicationController
	
	def index
	end

	def show
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)

		if @song.save
			redirect_to @song
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

	def find_song
	end

	def song_params
		params.require(:song).permit(:title, :description, :link, :lyrics)
	end

end
