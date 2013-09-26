class PenjualanBahansController < ApplicationController
  # GET /penjualan_bahans
  # GET /penjualan_bahans.json
  def index
    @penjualan_bahans = PenjualanBahan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @penjualan_bahans }
    end
  end

  # GET /penjualan_bahans/1
  # GET /penjualan_bahans/1.json
  def show
    @penjualan_bahan = PenjualanBahan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @penjualan_bahan }
    end
  end

  # GET /penjualan_bahans/new
  # GET /penjualan_bahans/new.json
  def new
    @penjualan_bahan = PenjualanBahan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @penjualan_bahan }
    end
  end

  # GET /penjualan_bahans/1/edit
  def edit
    @penjualan_bahan = PenjualanBahan.find(params[:id])
  end

  # POST /penjualan_bahans
  # POST /penjualan_bahans.json
  def create
    @penjualan_bahan = PenjualanBahan.new(params[:penjualan_bahan])

    respond_to do |format|
      if @penjualan_bahan.save
        format.html { redirect_to @penjualan_bahan, notice: 'Penjualan bahan was successfully created.' }
        format.json { render json: @penjualan_bahan, status: :created, location: @penjualan_bahan }
      else
        format.html { render action: "new" }
        format.json { render json: @penjualan_bahan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /penjualan_bahans/1
  # PUT /penjualan_bahans/1.json
  def update
    @penjualan_bahan = PenjualanBahan.find(params[:id])

    respond_to do |format|
      if @penjualan_bahan.update_attributes(params[:penjualan_bahan])
        format.html { redirect_to @penjualan_bahan, notice: 'Penjualan bahan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @penjualan_bahan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penjualan_bahans/1
  # DELETE /penjualan_bahans/1.json
  def destroy
    @penjualan_bahan = PenjualanBahan.find(params[:id])
    @penjualan_bahan.destroy

    respond_to do |format|
      format.html { redirect_to penjualan_bahans_url }
      format.json { head :no_content }
    end
  end
end
