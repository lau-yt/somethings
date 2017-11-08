class EtiquetaController < ApplicationController
  before_action :set_etiquetum, only: [:show, :edit, :update, :destroy]

  # GET /etiqueta
  # GET /etiqueta.json
  def index
    @etiqueta = Etiquetum.all
  end

  # GET /etiqueta/1
  # GET /etiqueta/1.json
  def show
  end

  # GET /etiqueta/new
  def new
    @etiquetum = Etiquetum.new
  end

  # GET /etiqueta/1/edit
  def edit
  end

  # POST /etiqueta
  # POST /etiqueta.json
  def create
    @etiquetum = Etiquetum.new(etiquetum_params)

    respond_to do |format|
      if @etiquetum.save
        format.html { redirect_to @etiquetum, notice: 'Etiquetum was successfully created.' }
        format.json { render :show, status: :created, location: @etiquetum }
      else
        format.html { render :new }
        format.json { render json: @etiquetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /etiqueta/1
  # PATCH/PUT /etiqueta/1.json
  def update
    respond_to do |format|
      if @etiquetum.update(etiquetum_params)
        format.html { redirect_to @etiquetum, notice: 'Etiquetum was successfully updated.' }
        format.json { render :show, status: :ok, location: @etiquetum }
      else
        format.html { render :edit }
        format.json { render json: @etiquetum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etiqueta/1
  # DELETE /etiqueta/1.json
  def destroy
    @etiquetum.destroy
    respond_to do |format|
      format.html { redirect_to etiqueta_url, notice: 'Etiquetum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_etiquetum
      @etiquetum = Etiquetum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def etiquetum_params
      params.require(:etiquetum).permit(:nombre)
    end
end
