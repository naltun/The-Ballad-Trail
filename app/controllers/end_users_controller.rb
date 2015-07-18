class EndUsersController < ApplicationController
before_action :authenticate_admin!

def index
	    @end_users = EndUser.all
	    
end
	
	def show
	  @end_user = EndUser.find(params[:id])
	end
 
  
  
  
 def destroy
    EndUser.find(params[:id]).destroy
    redirect_to end_users_path
  end
  	
  	
  	
 private

    def end_user_params
      params.require(:end_user).permit(:email, :password,
                                   :password_confirmation)
    end
end

