class PoemsController < ApplicationController
	before_action :authenticate_end_user!, except: [:index, :show]
	before_action :find_poem, only: [:show, :edit, :update, :destroy]
	
	def index
		@poems = Poem.all.order("created_at DESC")
	end

	def show
		@poem = Poem.find(params[:id])
		@place = @poem.place
	end

	def new
		@poem = current_end_user.poems.build
	end

	def create
		@poem = current_end_user.poems.build(poem_params)

		if @poem.save
			redirect_to @poem
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @poem.update(poem_params)
			redirect_to @poem
		else
			render 'edit'
		end
	end

	def destroy
		@poem.destroy
		redirect_to root_path
	end

	private

	def find_poem
		@poem = Poem.find(params[:id])
	end

	def poem_params
		params.require(:poem).permit(:title, :description, :medialink, :subtitle, :place_id, :composer_id)
	end
end