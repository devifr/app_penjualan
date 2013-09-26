class BahansController < ApplicationController
  # GET /bahans
  # GET /bahans.json
  def index
    @bahans = Bahan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bahans }
    end
  end

  # GET /bahans/1
  # GET /bahans/1.json
  def show
    @bahan = Bahan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bahan }
    end
  end

  # GET /bahans/new
  # GET /bahans/new.json
  def new
    @bahan = Bahan.new
    @locations = Location.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bahan }
    end
  end

  # GET /bahans/1/edit
  def edit
    @locations = Location.all
    @bahan = Bahan.find(params[:id])
  end

  # POST /bahans
  # POST /bahans.json
  def create
    @bahan = Bahan.new(params[:bahan])

    respond_to do |format|
      if @bahan.save
        format.html { redirect_to @bahan, notice: 'Bahan was successfully created.' }
        format.json { render json: @bahan, status: :created, location: @bahan }
      else
        format.html { render action: "new" }
        format.json { render json: @bahan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bahans/1
  # PUT /bahans/1.json
  def update
    @bahan = Bahan.find(params[:id])

    respond_to do |format|
      if @bahan.update_attributes(params[:bahan])
        format.html { redirect_to @bahan, notice: 'Bahan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bahan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bahans/1
  # DELETE /bahans/1.json
  def destroy
    @bahan = Bahan.find(params[:id])
    @bahan.destroy

    respond_to do |format|
      format.html { redirect_to bahans_url }
      format.json { head :no_content }
    end
  end
end
