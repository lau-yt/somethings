class CommentQuestionsController < ApplicationController
  before_action :set_comment_question, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  #before_action :set_question
  # GET /comment_questions
  # GET /comment_questions.json
  def index
    @comment_questions = CommentQuestion.all
  end

  # GET /comment_questions/1
  # GET /comment_questions/1.json
  def show
  end

  # GET /comment_questions/new
  def new
    @comment_question = CommentQuestion.new
  end

  # GET /comment_questions/1/edit
  def edit
  end

  # POST /comment_questions
  # POST /comment_questions.json
  def create
    @question = Question.find(params[:question_id])
    @comment_question = CommentQuestion.new(comment_question_params)
    @comment_question.user = current_user
    @comment_question.question = @question

    respond_to do |format|
      if @comment_question.save
        format.html { redirect_to @comment_question.question, notice: 'Se ha enviado tu comentario de manera correcta!' }
        format.json { render :show, status: :created, location: @comment_question }
      else
        format.html { render :new }
        format.json { render json: @comment_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_questions/1  
  # PATCH/PUT /comment_questions/1.json
  def update
    respond_to do |format|
      if @comment_question.update(comment_question_params)
        format.html { redirect_to @comment_question, notice: 'Comment question was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_question }
      else
        format.html { render :edit }
        format.json { render json: @comment_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_questions/1
  # DELETE /comment_questions/1.json
  def destroy
    @comment_question.destroy
    respond_to do |format|
      format.html { redirect_to comment_questions_url, notice: 'Comment question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote 
    @comment_question.upvote_from current_user
    @point = Point.new()
    @point.puntos=5
    @point.user_id=@comment_question.user_id
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
    @comment_question.downvote_from current_user
    #si votas negativo automaticamente el usuario logueaado tiene un punto negativo -1
    @pointuser = Point.new()
    @pointuser.puntos=-1
    @pointuser.user_id=current_user.id
    @pointuser.save
    
    @point = Point.new()
    @point.puntos=-2
    @point.user_id=@comment_question.user_id
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_question
      @comment_question = CommentQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_question_params
      params.require(:comment_question).permit(:descripcion, :user_id, :question_id)
    end
end
