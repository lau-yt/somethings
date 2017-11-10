class UsersController < ApplicationController
  before_action :set_user, only: [ :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    @user.cantpuntaje=1 #agregado
  end

  # GET /users/1/edit
  def edit
@user = User.find(params[:id]) #agregado
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.cantpuntaje=1 #agregado

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
       @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else 
       render :edit
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:nombre, :apellido, :mail, :cantpuntaje, :contraseña, :university_id, :level_id)
    end
end
