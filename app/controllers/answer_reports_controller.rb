class AnswerReportsController < ApplicationController
  before_action :set_answer_report, only: [:show, :edit, :update, :destroy]

  # GET /answer_reports
  # GET /answer_reports.json
  def index
    @answer_reports = AnswerReport.all
  end

  # GET /answer_reports/1
  # GET /answer_reports/1.json
  def show
  end

  # GET /answer_reports/new
  def new
    @answer = Answer.find(params[:id])
    @answer_report = AnswerReport.new
  end

  # GET /answer_reports/1/edit
  def edit
  end

  # POST /answer_reports
  # POST /answer_reports.json
  def create
    @answer = Answer.find(params[:answer_id])
    @answer_report = AnswerReport.new(answer_report_params)
    @answer_report.answer = @answer
    respond_to do |format|
      if @answer_report.save
        format.html { redirect_to @answer_report.answer, notice: 'La denuncia fue realizada!' }
        format.json { render :show, status: :created, location: @answer_report }
      else
        format.html { render :new }
        format.json { render json: @answer_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_reports/1
  # PATCH/PUT /answer_reports/1.json
  def update
    respond_to do |format|
      if @answer_report.update(answer_report_params)
        format.html { redirect_to @answer_report, notice: 'Answer report was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer_report }
      else
        format.html { render :edit }
        format.json { render json: @answer_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_reports/1
  # DELETE /answer_reports/1.json
  def destroy
    @answer_report.destroy
    respond_to do |format|
      format.html { redirect_to answer_reports_url, notice: 'El reporte ha sido eliminado!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_report
      @answer_report = AnswerReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_report_params
      params.require(:answer_report).permit(:titulo, :answer_id)
    end
end
