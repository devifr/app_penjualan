class PembeliansController < ApplicationController
  # GET /pembelians
  # GET /pembelians.json
  def index
    @pembelians = Pembelian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pembelians }
    end
  end

  # GET /pembelians/1
  # GET /pembelians/1.json
  def show
    @pembelian = Pembelian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pembelian }
    end
  end

  # GET /pembelians/new
  # GET /pembelians/new.json
  def new
    @pembelian = Pembelian.new
    @bahans = Bahan.all
    @lokasis = Lokasi.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pembelian }
    end
  end

  # GET /pembelians/1/edit
  def edit
    @bahans = Bahan.all
    @lokasis = Lokasi.all
    @pembelian = Pembelian.find(params[:id])
  end

  # POST /pembelians
  # POST /pembelians.json
  def create
    @pembelian = Pembelian.new(params[:pembelian])

    respond_to do |format|
      if @pembelian.save
        format.html { redirect_to @pembelian, notice: 'Pembelian was successfully created.' }
        format.json { render json: @pembelian, status: :created, location: @pembelian }
      else
        format.html { render action: "new" }
        format.json { render json: @pembelian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pembelians/1
  # PUT /pembelians/1.json
  def update
    @pembelian = Pembelian.find(params[:id])

    respond_to do |format|
      if @pembelian.update_attributes(params[:pembelian])
        format.html { redirect_to @pembelian, notice: 'Pembelian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pembelian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pembelians/1
  # DELETE /pembelians/1.json
  def destroy
    @pembelian = Pembelian.find(params[:id])
    @pembelian.destroy

    respond_to do |format|
      format.html { redirect_to pembelians_url }
      format.json { head :no_content }
    end
  end
end
