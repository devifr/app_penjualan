class LokasisController < ApplicationController
  # GET /lokasis
  # GET /lokasis.json
  def index
    @lokasis = Lokasi.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lokasis }
    end
  end

  # GET /lokasis/1
  # GET /lokasis/1.json
  def show
    @lokasi = Lokasi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lokasi }
    end
  end

  # GET /lokasis/new
  # GET /lokasis/new.json
  def new
    @lokasi = Lokasi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lokasi }
    end
  end

  # GET /lokasis/1/edit
  def edit
    @lokasi = Lokasi.find(params[:id])
  end

  # POST /lokasis
  # POST /lokasis.json
  def create
    @lokasi = Lokasi.new(params[:lokasi])

    respond_to do |format|
      if @lokasi.save
        format.html { redirect_to @lokasi, notice: 'Lokasi was successfully created.' }
        format.json { render json: @lokasi, status: :created, location: @lokasi }
      else
        format.html { render action: "new" }
        format.json { render json: @lokasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lokasis/1
  # PUT /lokasis/1.json
  def update
    @lokasi = Lokasi.find(params[:id])

    respond_to do |format|
      if @lokasi.update_attributes(params[:lokasi])
        format.html { redirect_to @lokasi, notice: 'Lokasi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lokasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lokasis/1
  # DELETE /lokasis/1.json
  def destroy
    @lokasi = Lokasi.find(params[:id])
    @lokasi.destroy

    respond_to do |format|
      format.html { redirect_to lokasis_url }
      format.json { head :no_content }
    end
  end
end
