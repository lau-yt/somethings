class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy, :downvote, :upvote]
  # GET /questions
  # GET /questions.json
  def index
    if params[:query].present?
      @questions = Question.search(params[:query])
    else
      @questions = Question.all
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @answer = Answer.new
    @comment_question = CommentQuestion.new
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  def mifacu
    @questions = Question.facu(current_user.university_id)
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = current_user.questions.new(question_params)
    if current_user.university != nil 
      @question.university_id = current_user.university_id
    end
    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'La pregunta fue creado correctamente.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'La pregunta fue modificada correctamente.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def upvote 
    @question.upvote_from current_user
    @point = Point.new()
    @point.puntos=5
    @point.user_id=@question.user_id
    respond_to do |format|
      if @point.save
        format.html { redirect_to root_path, notice: 'Gracias por puntuar!' }
        format.json { render :show, status: :created, location: @point_question }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end

  end

  
    #para el viw de answer
  #link_to 'Votar', voto_positivo_answer_path(answer.id)
  def downvote
    @question.downvote_from current_user
     #si votas negativo automaticamente el usuario logueaado tiene un punto negativo -1
    @pointuser = Point.new()
    @pointuser.puntos=-1
    @pointuser.user_id=current_user.id
    @pointuser.save
    
    @point = Point.new()
    @point.puntos=-2
    @point.user_id=@question.user_id
    respond_to do |format|
      if @point.save
        format.html { redirect_to root_path, notice: 'Gracias por puntuar!' }
        format.json { render :show, status: :created, location: @point_question }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  def asigna_mejor_respuesta
    @question = Question.find(params[:id])
    @answer = Answer.find(params[:answer_id])
    @question.best_answer_id = @answer.id
    respond_to do |format|
      if @question.save
        format.html { redirect_to root_path, notice: 'Se ha elegido una mejor respuesta!' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:titulo, :descripcion, :user_id, :university_id, :tag_ids => [])
    end
end