class ComposersController < ApplicationController
	before_action :find_composer, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_end_user!, except: [:index, :show]

	def index
		@composers = Composer.all.order("created_at DESC")
	end

	def show
	end

	def new
		@composer = current_end_user.composers.build
	end

	def create
		@composer = current_end_user.composers.build(composer_params)
		#@last_composer = Composer.last

		if @composer.save

			if @composer.composer_type == "Poet"
				redirect_to new_poem_path	
			else
				redirect_to new_song_path
			end
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @composer.update(composer_params)
			redirect_to @composer
		else
			render 'edit'
		end
	end

	def destroy
		@composer.destroy
		redirect_to composers_path
	end

	private

	def find_composer
		@composer = Composer.find(params[:id])
	end

	def composer_params
		params.require(:composer).permit(:fname, :lname, :composer_type, :bio)
	end
end
