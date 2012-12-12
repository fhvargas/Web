class ClubesController < ApplicationController
  # GET /clubes
  # GET /clubes.json
  def index
    @clubes = Clube.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @clubes }
    end
  end

  # GET /clubes/1
  # GET /clubes/1.json
  def show
    @clube = Clube.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @clube }
    end
  end

  # GET /clubes/new
  # GET /clubes/new.json
  def new
    @clube = Clube.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @clube }
    end
  end

  # GET /clubes/1/edit
  def edit
    @clube = Clube.find(params[:id])
  end

  # POST /clubes
  # POST /clubes.json
  def create
    @clube = Clube.new(params[:clube])

    respond_to do |format|
      if @clube.save
        format.html { redirect_to @clube, :notice => 'Clube was successfully created.' }
        format.json { render :json => @clube, :status => :created, :location => @clube }
      else
        format.html { render :action => "New" }
        format.json { render :json => @clube.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clubes/1
  # PUT /clubes/1.json
  def update
    @clube = Clube.find(params[:id])

    respond_to do |format|
      if @clube.update_attributes(params[:clube])
        format.html { redirect_to @clube, :notice => 'Clube was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "Edit" }
        format.json { render :json => @clube.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clubes/1
  # DELETE /clubes/1.json
  def destroy
    @clube = Clube.find(params[:id])
    @clube.destroy

    respond_to do |format|
      format.html { redirect_to clubes_url }
      format.json { head :no_content }
    end
  end
end
