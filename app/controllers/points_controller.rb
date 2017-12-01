class PointsController < ApplicationController
	  before_action :set_point_question, only: [:show, :edit, :update, :destroy]
  #before_action :set_question
  # GET /point_questions
  # GET /point_questions.json
  def index
    @point_questions = PointQuestion.all
  end

  # GET /point_questions/1
  # GET /point_questions/1.json
  def show
  end

  # GET /point_questions/new
  def new
    @point_question = PointQuestion.new
  end

  # GET /point_questions/1/edit
  def edit
  end

  # POST /point_questions
  # POST /point_questions.json
  def create
    @point_question = PointQuestion.new(point_question_params)
    respond_to do |format|
      if @point.save
        format.html { redirect_to @point.question, notice: 'Point question was successfully created.' }
        format.json { render :show, status: :created, location: @point_question }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_questions/1
  # PATCH/PUT /point_questions/1.json
  def update
    respond_to do |format|
      if @point_question.update(point_question_params)
        format.html { redirect_to @point_question, notice: 'Point question was successfully updated.' }
        format.json { render :show, status: :ok, location: @point_question }
      else
        format.html { render :edit }
        format.json { render json: @point_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_questions/1
  # DELETE /point_questions/1.json
  def destroy
    @point_question.destroy
    respond_to do |format|
      format.html { redirect_to point_questions_url, notice: 'Point question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_question
      @point_question = PointQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_question_params
      params.require(:point_question).permit(:puntos,:user_id)
    end
end
