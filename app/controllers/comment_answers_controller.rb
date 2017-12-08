class CommentAnswersController < ApplicationController
  before_action :set_comment_answer, only: [:show, :edit, :update, :destroy, :upvote, :downvote]

  # GET /comment_answers
  # GET /comment_answers.json
  def index
    @comment_answers = CommentAnswer.all
  end

  # GET /comment_answers/1
  # GET /comment_answers/1.json
  def show
  end

  # GET /comment_answers/new
  def new
    @comment_answer = CommentAnswer.new
  end

  # GET /comment_answers/1/edit
  def edit
  end

  # POST /comment_answers
  # POST /comment_answers.json
  def create
    @answer = Answer.find(params[:answer_id])
    @comment_answer = CommentAnswer.new(comment_answer_params)
    @comment_answer.user = current_user
    @comment_answer.answer = @answer
    respond_to do |format|
      if @comment_answer.save
        format.html { redirect_to @comment_answer.answer, notice: 'El comentario ha sido creado!' }
        format.json { render :show, status: :created, location: @comment_answer }
      else
        format.html { render :new }
        format.json { render json: @comment_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_answers/1
  # PATCH/PUT /comment_answers/1.json
  def update
    respond_to do |format|
      if @comment_answer.update(comment_answer_params)
        format.html { redirect_to @comment_answer, notice: 'Comment answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_answer }
      else
        format.html { render :edit }
        format.json { render json: @comment_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_answers/1
  # DELETE /comment_answers/1.json
  def destroy
    @comment_answer.destroy
    respond_to do |format|
      format.html { redirect_to comment_answers_url, notice: 'Comment answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def upvote 
    @comment_answer.upvote_from current_user
    @comment_answer.user.puntaje+=5
    @comment_answer.user.save
    redirect_to @comment_answer.answer, notice: 'Gracias por puntuar!'  
  end

  
    #para el viw de answer
  #link_to 'Votar', voto_positivo_answer_path(answer.id)
  def downvote
    @comment_answer.downvote_from current_user
    #si votas negativo automaticamente el usuario logueaado tiene un punto negativo -1
    @comment_answer.user.puntaje-=2
    @comment_answer.user.save

    current_user.puntaje-=1
    current_user.save
    redirect_to @comment_answer.answer, notice: 'Gracias por puntuar'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_answer
      @comment_answer = CommentAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_answer_params
      params.require(:comment_answer).permit(:descripcion, :user_id, :answer_id)
    end
end
