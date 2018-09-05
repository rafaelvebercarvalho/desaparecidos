class DesaparecidasController < ApplicationController
  before_action :set_desaparecida, only: [:show, :edit, :update, :destroy]

  # GET /desaparecidas
  # GET /desaparecidas.json
  def index
    @desaparecidas = Desaparecida.all
  end

  # GET /desaparecidas/1
  # GET /desaparecidas/1.json
  def show
  end

  # GET /desaparecidas/new
  def new
    @desaparecida = Desaparecida.new
  end

  # GET /desaparecidas/1/edit
  def edit
  end

  # POST /desaparecidas
  # POST /desaparecidas.json
  def create
    @desaparecida = Desaparecida.new(desaparecida_params)

    respond_to do |format|
      if @desaparecida.save
        format.html { redirect_to @desaparecida, notice: 'Desaparecida was successfully created.' }
        format.json { render :show, status: :created, location: @desaparecida }
      else
        format.html { render :new }
        format.json { render json: @desaparecida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desaparecidas/1
  # PATCH/PUT /desaparecidas/1.json
  def update
    respond_to do |format|
      if @desaparecida.update(desaparecida_params)
        format.html { redirect_to @desaparecida, notice: 'Desaparecida was successfully updated.' }
        format.json { render :show, status: :ok, location: @desaparecida }
      else
        format.html { render :edit }
        format.json { render json: @desaparecida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desaparecidas/1
  # DELETE /desaparecidas/1.json
  def destroy
    @desaparecida.destroy
    respond_to do |format|
      format.html { redirect_to desaparecidas_url, notice: 'Desaparecida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desaparecida
      @desaparecida = Desaparecida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desaparecida_params
      params.require(:desaparecida).permit(:usuario_id, :nome, :idade, :sexo, :data_nascimento, :mae, :pai)
    end
end
