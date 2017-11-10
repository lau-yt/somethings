class UserloginsController < ApplicationController
  before_action :set_userlogin, only: [:show, :edit, :update, :destroy]

  # GET /userlogins
  # GET /userlogins.json
  def index
    @userlogins = Userlogin.all
  end

  # GET /userlogins/1
  # GET /userlogins/1.json
  def show
  end

  # GET /userlogins/new
  def new
    @userlogin = Userlogin.new
  end

  # GET /userlogins/1/edit
  def edit
  end

  # POST /userlogins
  # POST /userlogins.json   onstruo.tweets.each do |tweet|%>
  def create
    @userlogin = Userlogin.new(userlogin_params)
    if @userlogin.save
       User.all.each do |u|
        if @userlogin.email = u.mail
          if @userlogin.contr = u.contr
            @userlogin.on = true
            @userlogin.save
            redirect_to "questions#index"
          end
        end
      end
    end
        @userlogin.destroy
        redirect_to "userlogins#new"
  end

  # PATCH/PUT /userlogins/1
  # PATCH/PUT /userlogins/1.json
  def update
    respond_to do |format|
      if @userlogin.update(userlogin_params)
        format.html { redirect_to @userlogin, notice: 'Userlogin was successfully updated.' }
        format.json { render :show, status: :ok, location: @userlogin }
      else
        format.html { render :edit }
        format.json { render json: @userlogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlogins/1
  # DELETE /userlogins/1.json
  def destroy
    @userlogin.destroy
    respond_to do |format|
      format.html { redirect_to userlogins_url, notice: 'Userlogin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userlogin
      @userlogin = Userlogin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userlogin_params
      params.require(:userlogin).permit(:email, :contr, :on)
    end
end
