class Penjualan < ActiveRecord::Base
  attr_accessible :jumlah_penjualan, :location_id, :tanggal, :penjualan_details_attributes,
                  :penjualan_bahans_attributes

  has_many :penjualan_details, dependent: :destroy
  has_many :penjualan_bahans, dependent: :destroy
  belongs_to :location

  accepts_nested_attributes_for :penjualan_details, :penjualan_bahans

  before_save :set_jumlah

  def set_jumlah
    id =  self.id
    jumlah = 0
    penjualan_details = self.penjualan_details
    penjualan_details.each do |p|
      jumlah += p.jumlah_penjualan
    end
    self.jumlah_penjualan = jumlah
  end

end
