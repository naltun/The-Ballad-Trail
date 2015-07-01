class PoemsController < ApplicationController

	def index
	end

	def show
	end

	def new
		@poem = Poem.new
	end

	def create
		@poem = Poem.new(poem_params)

		if @poem.save
			redirect_to @poem
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

	def find_poem
	end

	def poem_params
		params.require(:poem).permit(:title, :description, :link, :subtitle)
	end
end
