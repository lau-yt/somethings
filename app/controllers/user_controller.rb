class UserController < ApplicationController
 
 def show
   

 	@usuario = current_user
 	if current_user.university != nil
 		@uni = University.find(current_user.university_id)       
 	end
  end

  
  def new
    @user = User.new
  end

end
