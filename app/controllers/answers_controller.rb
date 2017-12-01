class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy, :downvote, :upvote]
  #before_action :set_question
  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @comment_answer = CommentAnswer.new
    
  end

  # GET /answers/new
  def new
    @answer = Answer.new
   # @point = Point.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    #@answer = current_user.answers.new(answer_params)

    @answer = Answer.new(answer_params)
    #@answer.question = @question
    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer.question, notice: 'La respuesta fue creada correctamente.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer.question, notice: 'La respuesta fue modificada correctamente.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to @question, notice: 'La respuesta fue eliminada correctamente.' }
      format.json { head :no_content }
    end
  end


  def upvote 
      @answer.upvote_from current_user
      if  current_user.voted_up_on? @answer
      @point = Point.new()
      @point.puntos=10
      @point.user_id=@answer.user_id
      respond_to do |format|
      if @point.save
        format.html { redirect_to root_path, notice: 'Gracias por puntuar!' }
        format.json { render :show, status: :created, location: @point_question }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
      end
    else
      redirect_to root_path
    end
  end

  
    #para el viw de answer
  #link_to 'Votar', voto_positivo_answer_path(answer.id)
  def downvote
       @answer.downvote_from current_user
      #si votas negativo automaticamente el usuario logueaado tiene un punto negativo -1
      @pointuser = Point.new()
      @pointuser.puntos=-1
      @pointuser.user_id=current_user.id
      @pointuser.save
      
      if  current_user.voted_down_on? @answer 
      @point = Point.new()
      @point.puntos=-2
      @point.user_id=@answer.user_id
      respond_to do |format|
        if @point.save
          format.html { redirect_to root_path, notice: 'Gracias por puntuar!' }
          format.json { render :show, status: :created, location: @point_question }
        else
          format.html { render :new }
          format.json { render json: @point.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_path
    end

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def set_question
      @question = Question.find(params[:question_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:descripcion, :question_id,:user_id)
    end
end