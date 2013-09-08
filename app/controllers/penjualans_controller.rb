class PenjualansController < ApplicationController
  # GET /penjualans
  # GET /penjualans.json
  def index
    @penjualans = Penjualan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @penjualans }
    end
  end

  # GET /penjualans/1
  # GET /penjualans/1.json
  def show
    @penjualan = Penjualan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @penjualan }
    end
  end

  # GET /penjualans/new
  # GET /penjualans/new.json
  def new
    @penjualan = Penjualan.new
    @products = Product.all
    @locations = Location.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @penjualan }
    end
  end

  # GET /penjualans/1/edit
  def edit
    @penjualan = Penjualan.find(params[:id])
  end

  # POST /penjualans
  # POST /penjualans.json
  def create
    @penjualan = Penjualan.new(params[:penjualan])

    respond_to do |format|
      if @penjualan.save
        format.html { redirect_to @penjualan, notice: 'Penjualan was successfully created.' }
        format.json { render json: @penjualan, status: :created, location: @penjualan }
      else
        format.html { render action: "new" }
        format.json { render json: @penjualan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /penjualans/1
  # PUT /penjualans/1.json
  def update
    @penjualan = Penjualan.find(params[:id])

    respond_to do |format|
      if @penjualan.update_attributes(params[:penjualan])
        format.html { redirect_to @penjualan, notice: 'Penjualan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @penjualan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /penjualans/1
  # DELETE /penjualans/1.json
  def destroy
    @penjualan = Penjualan.find(params[:id])
    @penjualan.destroy

    respond_to do |format|
      format.html { redirect_to penjualans_url }
      format.json { head :no_content }
    end
  end
end
