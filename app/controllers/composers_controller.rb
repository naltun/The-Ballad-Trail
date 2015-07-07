class ComposersController < ApplicationController
	before_action :find_composer, only: [:show, :edit, :update, :destroy]

	def index
		@composers = Composer.all.order("fname ASC")
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
		if @composer.update(composer_params)
			redirect_to @composer
		else
			render 'edit'
		end
	end

	def destroy
		@composer.destroy
		redirect_to root_path
	end

	private

	def find_composer
		@composer = Composer.find(params[:id])
	end

	def composer_params
		params.require(:composer).permit(:fname, :lname, :type, :bio)
	end
end
