class UsersController < ApplicationController
 
 def show
   	@usuario = User.find(params[:id])
 	if @usuario.university != nil
 		@uni = University.find(@usuario.university_id)       
 	end
  end

  
  def new
    @user = User.new
  end

end
