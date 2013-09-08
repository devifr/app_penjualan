class PengeluaranHariansController < ApplicationController
  # GET /pengeluaran_harians
  # GET /pengeluaran_harians.json
  def index
    @pengeluaran_harians = PengeluaranHarian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pengeluaran_harians }
    end
  end

  # GET /pengeluaran_harians/1
  # GET /pengeluaran_harians/1.json
  def show
    @pengeluaran_harian = PengeluaranHarian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pengeluaran_harian }
    end
  end

  # GET /pengeluaran_harians/new
  # GET /pengeluaran_harians/new.json
  def new
    @pengeluaran_harian = PengeluaranHarian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pengeluaran_harian }
    end
  end

  # GET /pengeluaran_harians/1/edit
  def edit
    @pengeluaran_harian = PengeluaranHarian.find(params[:id])
  end

  # POST /pengeluaran_harians
  # POST /pengeluaran_harians.json
  def create
    @pengeluaran_harian = PengeluaranHarian.new(params[:pengeluaran_harian])

    respond_to do |format|
      if @pengeluaran_harian.save
        format.html { redirect_to @pengeluaran_harian, notice: 'Pengeluaran harian was successfully created.' }
        format.json { render json: @pengeluaran_harian, status: :created, location: @pengeluaran_harian }
      else
        format.html { render action: "new" }
        format.json { render json: @pengeluaran_harian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pengeluaran_harians/1
  # PUT /pengeluaran_harians/1.json
  def update
    @pengeluaran_harian = PengeluaranHarian.find(params[:id])

    respond_to do |format|
      if @pengeluaran_harian.update_attributes(params[:pengeluaran_harian])
        format.html { redirect_to @pengeluaran_harian, notice: 'Pengeluaran harian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pengeluaran_harian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengeluaran_harians/1
  # DELETE /pengeluaran_harians/1.json
  def destroy
    @pengeluaran_harian = PengeluaranHarian.find(params[:id])
    @pengeluaran_harian.destroy

    respond_to do |format|
      format.html { redirect_to pengeluaran_harians_url }
      format.json { head :no_content }
    end
  end
end
