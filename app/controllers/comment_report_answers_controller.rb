class CommentReportAnswersController < ApplicationController
  before_action :set_comment_report_answer, only: [:show, :edit, :update, :destroy]

  # GET /comment_report_answers
  # GET /comment_report_answers.json
  def index
    @comment_report_answers = CommentReportAnswer.all
  end

  # GET /comment_report_answers/1
  # GET /comment_report_answers/1.json
  def show
  end

  # GET /comment_report_answers/new
  def new
    @comment_answer = CommentAnswer.find(params[:id])
    @comment_report_answer = CommentReportAnswer.new
  end

  # GET /comment_report_answers/1/edit
  def edit
  end

  def find_comment_answer
    @comment_answer = CommentAnswer.find(params[:id])
  end
  # POST /comment_report_answers
  # POST /comment_report_answers.json
  def create
    @comment_answer = CommentAnswer.find(params[:comment_answer_id])
    @comment_report_answer = CommentReportAnswer.new(comment_report_answer_params)
    @comment_report_answer.comment_answer = @comment_answer
    respond_to do |format|
      if @comment_report_answer.save
        format.html { redirect_to @comment_report_answer.comment_answer.answer, notice: 'La denuncia al comentario fue realizada!' }
        format.json { render :show, status: :created, location: @comment_report_answer }
      else
        format.html { render :new }
        format.json { render json: @comment_report_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_report_answers/1
  # PATCH/PUT /comment_report_answers/1.json
  def update
    respond_to do |format|
      if @comment_report_answer.update(comment_report_answer_params)
        format.html { redirect_to @comment_report_answer, notice: 'Comment report answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_report_answer }
      else
        format.html { render :edit }
        format.json { render json: @comment_report_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_report_answers/1
  # DELETE /comment_report_answers/1.json
  def destroy
    @comment_report_answer.destroy
    respond_to do |format|
      format.html { redirect_to comment_report_answers_url, notice: 'Comment report answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_report_answer
      @comment_report_answer = CommentReportAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_report_answer_params
      params.require(:comment_report_answer).permit(:titulo, :comment_answer_id)
    end
end
