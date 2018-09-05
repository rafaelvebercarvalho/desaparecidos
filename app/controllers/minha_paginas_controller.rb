class MinhaPaginasController < ApplicationController
  before_action :set_minha_pagina, only: [:autenticacao, :show, :edit, :update, :destroy]
  def autenticacao
    autenticacao
  end

  # GET /minha_paginas
  # GET /minha_paginas.json
  def index
  end

  # GET /minha_paginas/1
  # GET /minha_paginas/1.json
  def show
  end

  # GET /minha_paginas/new
  def new
    @minha_pagina = MinhaPagina.new
  end

  # GET /minha_paginas/1/edit
  def edit
    @usuario = autenticacao
  end

  # POST /minha_paginas
  # POST /minha_paginas.json
  def create
    @minha_pagina = MinhaPagina.new(minha_pagina_params)

    respond_to do |format|
      if @minha_pagina.save
        format.html { redirect_to @minha_pagina, notice: 'Minha pagina was successfully created.' }
        format.json { render :show, status: :created, location: @minha_pagina }
      else
        format.html { render :new }
        format.json { render json: @minha_pagina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minha_paginas/1
  # PATCH/PUT /minha_paginas/1.json
  def update
    respond_to do |format|
      if @minha_pagina.update(minha_pagina_params)
        format.html { redirect_to @minha_pagina, notice: 'Minha pagina was successfully updated.' }
        format.json { render :show, status: :ok, location: @minha_pagina }
      else
        format.html { render :edit }
        format.json { render json: @minha_pagina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minha_paginas/1
  # DELETE /minha_paginas/1.json
  def destroy
    @minha_pagina.destroy
    respond_to do |format|
      format.html { redirect_to minha_paginas_url, notice: 'Minha pagina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minha_pagina
      @minha_pagina = MinhaPagina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minha_pagina_params
      params.fetch(:minha_pagina, {})
    end
end
