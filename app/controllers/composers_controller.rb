class ComposersController < ApplicationController

	def index
	end

	def show
	end

	def new
		@composer = Composer.new
	end

	def create
		@composer = Composer.new(composer_params)

		if @composer.save
			redirect_to @composer
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

	def find_composer
	end

	def composer_params
		params.require(:composer).permit(:fname, :lname, :type, :bio)
	end
end
