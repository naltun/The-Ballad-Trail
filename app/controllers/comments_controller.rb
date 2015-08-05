class CommentsController < ApplicationController
	before_action :authenticate_end_user!

	def create
		@comment = Comment.create(params[:comment].permit(:content))
		@comment.end_user_id = current_end_user.id

		if @comment.save
			redirect_to :back
		end
	end
end