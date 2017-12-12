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

  def blogico
    @user = User.find(params[:id])
    @user.update(marca: params[:marca])
    redirect_to users_danger_path(:id => @user.id)
  end

  def blogico2
    @user = User.find(params[:id])
    @user.update(marca: params[:marca])
    redirect_to root_path
  end

  def danger
    @user = User.find(params[:id])
  end

end
