class TestesController < ApplicationController
  before_action :set_teste, only: [:show, :edit, :update, :destroy]

  # GET /testes
  # GET /testes.json
  def index
    @testes = Teste.all
  end

  # GET /testes/1
  # GET /testes/1.json
  def show
  end

  # GET /testes/new
  def new
    @teste = Teste.new
  end

  # GET /testes/1/edit
  def edit
  end

  # POST /testes
  # POST /testes.json
  def create
    @teste = Teste.new(teste_params)

    respond_to do |format|
      if @teste.save
        format.html { redirect_to @teste, notice: 'Teste was successfully created.' }
        format.json { render :show, status: :created, location: @teste }
      else
        format.html { render :new }
        format.json { render json: @teste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testes/1
  # PATCH/PUT /testes/1.json
  def update
    respond_to do |format|
      if @teste.update(teste_params)
        format.html { redirect_to @teste, notice: 'Teste was successfully updated.' }
        format.json { render :show, status: :ok, location: @teste }
      else
        format.html { render :edit }
        format.json { render json: @teste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testes/1
  # DELETE /testes/1.json
  def destroy
    @teste.destroy
    respond_to do |format|
      format.html { redirect_to testes_url, notice: 'Teste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teste
      @teste = Teste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teste_params
      params.require(:teste).permit(:nome, :descricao)
    end
end
