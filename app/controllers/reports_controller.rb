class ReportsController < ApplicationController
  
  def search_daily
      
  end

  def search_mounthly

  end

  def daily
    date ||= params[:date]
    @result = Penjualan.daily(date)

    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "file_name"
      end
    end
  end

  def mounthly
    mounth ||= params[:mounth] 
    year ||= params[:year] 
    @result = Penjualan.mounthly(mounth,year)
    
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "file_name"
      end
    end
  end

end