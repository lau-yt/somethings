class CommentReportQuestionsController < ApplicationController
  before_action :set_comment_report_question, only: [:show, :edit, :update, :destroy]

  # GET /comment_report_questions
  # GET /comment_report_questions.json
  def index
    @comment_report_questions = CommentReportQuestion.all
  end

  # GET /comment_report_questions/1
  # GET /comment_report_questions/1.json
  def show
  end

  # GET /comment_report_questions/new
  def new
    @comment_question = CommentQuestion.find(params[:id])
    @comment_report_question = CommentReportQuestion.new
  end

  # GET /comment_report_questions/1/edit
  def edit
  end

  # POST /comment_report_questions
  # POST /comment_report_questions.json
  def create
    @comment_question = CommentQuestion.find(params[:comment_question_id])
    @comment_report_question = CommentReportQuestion.new(comment_report_question_params)
    @comment_report_question.comment_question = @comment_question
    respond_to do |format|
      if @comment_report_question.save
        format.html { redirect_to @comment_report_question.comment_question.question, notice: 'La denuncia fue realizada!' }
        format.json { render :show, status: :created, location: @comment_report_question }
      else
        format.html { render :new }
        format.json { render json: @comment_report_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_report_questions/1
  # PATCH/PUT /comment_report_questions/1.json
  def update
    respond_to do |format|
      if @comment_report_question.update(comment_report_question_params)
        format.html { redirect_to @comment_report_question, notice: 'Comment report question was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_report_question }
      else
        format.html { render :edit }
        format.json { render json: @comment_report_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_report_questions/1
  # DELETE /comment_report_questions/1.json
  def destroy
    @comment_report_question.destroy
    respond_to do |format|
      format.html { redirect_to comment_report_questions_url, notice: 'Comment report question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_report_question
      @comment_report_question = CommentReportQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_report_question_params
      params.require(:comment_report_question).permit(:titulo, :comment_question_id)
    end
end
