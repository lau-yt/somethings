class QuestionReportsController < ApplicationController
  before_action :set_question_report, only: [:show, :edit, :update, :destroy]

  # GET /question_reports
  # GET /question_reports.json
  def index
    @question_reports = QuestionReport.all
  end

  # GET /question_reports/1
  # GET /question_reports/1.json
  def show
  end

  # GET /question_reports/new
  def new
    @question = Question.find(params[:id])
    @question_report = QuestionReport.new
  end

  # GET /question_reports/1/edit
  def edit
  end

  # POST /question_reports
  # POST /question_reports.json
  def create
    @question = Question.find(params[:question_id])
    @question_report = QuestionReport.new(question_report_params)
    @question_report.question = @question
    respond_to do |format|
      if @question_report.save
        format.html { redirect_to @question_report.question, notice: 'La denuncia fue realizada!' }
        format.json { render :show, status: :created, location: @question_report }
      else
        format.html { render :new }
        format.json { render json: @question_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_reports/1
  # PATCH/PUT /question_reports/1.json
  def update
    respond_to do |format|
      if @question_report.update(question_report_params)
        format.html { redirect_to @question_report, notice: 'Question report was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_report }
      else
        format.html { render :edit }
        format.json { render json: @question_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_reports/1
  # DELETE /question_reports/1.json
  def destroy
    @question_report.destroy
    respond_to do |format|
      format.html { redirect_to question_reports_url, notice: 'Question report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_report
      @question_report = QuestionReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_report_params
      params.require(:question_report).permit(:titulo, :question_id)
    end
end
