class DesaparecidosController < ApplicationController
  before_action :set_desaparecido, only: [:show, :edit, :update, :destroy]

  layout 'external'
  # GET /desaparecidos
  # GET /desaparecidos.json
  def index
    @desaparecidos = Desaparecido.all
  end

  # GET /desaparecidos/1
  # GET /desaparecidos/1.json
  def show
  end

  # GET /desaparecidos/new
  def new
    @desaparecido = Desaparecido.new
  end

  # GET /desaparecidos/1/edit
  def edit
  end

  # POST /desaparecidos
  # POST /desaparecidos.json
  def create
    @desaparecido = Desaparecido.new(desaparecido_params)

    respond_to do |format|
      if @desaparecido.save
        format.html { redirect_to @desaparecido, notice: 'Desaparecido was successfully created.' }
        format.json { render :show, status: :created, location: @desaparecido }
      else
        format.html { render :new }
        format.json { render json: @desaparecido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desaparecidos/1
  # PATCH/PUT /desaparecidos/1.json
  def update
    respond_to do |format|
      if @desaparecido.update(desaparecido_params)
        format.html { redirect_to @desaparecido, notice: 'Desaparecido was successfully updated.' }
        format.json { render :show, status: :ok, location: @desaparecido }
      else
        format.html { render :edit }
        format.json { render json: @desaparecido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desaparecidos/1
  # DELETE /desaparecidos/1.json
  def destroy
    @desaparecido.destroy
    respond_to do |format|
      format.html { redirect_to desaparecidos_url, notice: 'Desaparecido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desaparecido
      @desaparecido = Desaparecido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desaparecido_params
      params.require(:desaparecido).permit(:usuario_id, :nome, :idade, :sexo, :data_nascimento, :mae, :pai)
    end
end
