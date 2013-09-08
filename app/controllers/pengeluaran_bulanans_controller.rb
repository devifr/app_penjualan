class PengeluaranBulanansController < ApplicationController
  # GET /pengeluaran_bulanans
  # GET /pengeluaran_bulanans.json
  def index
    @pengeluaran_bulanans = PengeluaranBulanan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pengeluaran_bulanans }
    end
  end

  # GET /pengeluaran_bulanans/1
  # GET /pengeluaran_bulanans/1.json
  def show
    @pengeluaran_bulanan = PengeluaranBulanan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pengeluaran_bulanan }
    end
  end

  # GET /pengeluaran_bulanans/new
  # GET /pengeluaran_bulanans/new.json
  def new
    @pengeluaran_bulanan = PengeluaranBulanan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pengeluaran_bulanan }
    end
  end

  # GET /pengeluaran_bulanans/1/edit
  def edit
    @pengeluaran_bulanan = PengeluaranBulanan.find(params[:id])
  end

  # POST /pengeluaran_bulanans
  # POST /pengeluaran_bulanans.json
  def create
    @pengeluaran_bulanan = PengeluaranBulanan.new(params[:pengeluaran_bulanan])

    respond_to do |format|
      if @pengeluaran_bulanan.save
        format.html { redirect_to @pengeluaran_bulanan, notice: 'Pengeluaran bulanan was successfully created.' }
        format.json { render json: @pengeluaran_bulanan, status: :created, location: @pengeluaran_bulanan }
      else
        format.html { render action: "new" }
        format.json { render json: @pengeluaran_bulanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pengeluaran_bulanans/1
  # PUT /pengeluaran_bulanans/1.json
  def update
    @pengeluaran_bulanan = PengeluaranBulanan.find(params[:id])

    respond_to do |format|
      if @pengeluaran_bulanan.update_attributes(params[:pengeluaran_bulanan])
        format.html { redirect_to @pengeluaran_bulanan, notice: 'Pengeluaran bulanan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pengeluaran_bulanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengeluaran_bulanans/1
  # DELETE /pengeluaran_bulanans/1.json
  def destroy
    @pengeluaran_bulanan = PengeluaranBulanan.find(params[:id])
    @pengeluaran_bulanan.destroy

    respond_to do |format|
      format.html { redirect_to pengeluaran_bulanans_url }
      format.json { head :no_content }
    end
  end
end
