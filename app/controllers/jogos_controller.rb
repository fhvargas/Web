class JogosController < ApplicationController
  # GET /jogos
  # GET /jogos.json
  def index
    @jogos = Jogo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @jogos }
    end
  end

  # GET /jogos/1
  # GET /jogos/1.json
  def show
    @jogo = Jogo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @jogo }
    end
  end

  # GET /jogos/new
  # GET /jogos/new.json
  def new
    @jogo = Jogo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @jogo }
    end
  end

  # GET /jogos/1/edit
  def edit
    @jogo = Jogo.find(params[:id])
  end

  # POST /jogos
  # POST /jogos.json
  def create
    @jogo = Jogo.new(params[:jogo])

    respond_to do |format|
      if @jogo.save
        format.html { redirect_to @jogo, :notice => 'Jogo was successfully created.' }
        format.json { render :json => @jogo, :status => :created, :location => @jogo }
      else
        format.html { render :action => "New" }
        format.json { render :json => @jogo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jogos/1
  # PUT /jogos/1.json
  def update
    @jogo = Jogo.find(params[:id])

    respond_to do |format|
      if @jogo.update_attributes(params[:jogo])
        format.html { redirect_to @jogo, :notice => 'Jogo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "Edit" }
        format.json { render :json => @jogo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jogos/1
  # DELETE /jogos/1.json
  def destroy
    @jogo = Jogo.find(params[:id])
    @jogo.destroy

    respond_to do |format|
      format.html { redirect_to jogos_url }
      format.json { head :no_content }
    end
  end
end
