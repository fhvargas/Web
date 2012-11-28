class PalpitesController < ApplicationController
  # GET /palpites
  # GET /palpites.json
  def index
    @palpites = Palpite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @palpites }
    end
  end

  # GET /palpites/1
  # GET /palpites/1.json
  def show
    @palpite = Palpite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @palpite }
    end
  end

  # GET /palpites/new
  # GET /palpites/new.json
  def new
    @palpite = Palpite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @palpite }
    end
  end

  # GET /palpites/1/edit
  def edit
    @palpite = Palpite.find(params[:id])
  end

  # POST /palpites
  # POST /palpites.json
  def create
    @palpite = Palpite.new(params[:palpite])

    respond_to do |format|
      if @palpite.save
        format.html { redirect_to @palpite, :notice => 'Palpite was successfully created.' }
        format.json { render :json => @palpite, :status => :created, :location => @palpite }
      else
        format.html { render :action => "new" }
        format.json { render :json => @palpite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /palpites/1
  # PUT /palpites/1.json
  def update
    @palpite = Palpite.find(params[:id])

    respond_to do |format|
      if @palpite.update_attributes(params[:palpite])
        format.html { redirect_to @palpite, :notice => 'Palpite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @palpite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /palpites/1
  # DELETE /palpites/1.json
  def destroy
    @palpite = Palpite.find(params[:id])
    @palpite.destroy

    respond_to do |format|
      format.html { redirect_to palpites_url }
      format.json { head :no_content }
    end
  end
end
