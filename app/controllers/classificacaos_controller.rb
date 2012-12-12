class ClassificacaosController < ApplicationController
  # GET /classificacaos
  # GET /classificacaos.json
  def index
    @classificacaos = Classificacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @classificacaos }
    end
  end

  # GET /classificacaos/1
  # GET /classificacaos/1.json
  def show
    @classificacao = Classificacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @classificacao }
    end
  end

  # GET /classificacaos/new
  # GET /classificacaos/new.json
  def new
    @classificacao = Classificacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @classificacao }
    end
  end

  # GET /classificacaos/1/edit
  def edit
    @classificacao = Classificacao.find(params[:id])
  end

  # POST /classificacaos
  # POST /classificacaos.json
  def create
    @classificacao = Classificacao.new(params[:classificacao])

    respond_to do |format|
      if @classificacao.save
        format.html { redirect_to @classificacao, :notice => 'Classificacao was successfully created.' }
        format.json { render :json => @classificacao, :status => :created, :location => @classificacao }
      else
        format.html { render :action => "New" }
        format.json { render :json => @classificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /classificacaos/1
  # PUT /classificacaos/1.json
  def update
    @classificacao = Classificacao.find(params[:id])

    respond_to do |format|
      if @classificacao.update_attributes(params[:classificacao])
        format.html { redirect_to @classificacao, :notice => 'Classificacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "Edit" }
        format.json { render :json => @classificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /classificacaos/1
  # DELETE /classificacaos/1.json
  
  def destroy
    @classificacao = Classificacao.find(params[:id])
    @classificacao.destroy

    respond_to do |format|
      format.html { redirect_to classificacaos_url }
      format.json { head :no_content }
    end
  end
end
