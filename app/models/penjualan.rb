class Penjualan < ActiveRecord::Base
  attr_accessible :jumlah_penjualan, :location_id, :tanggal, :penjualan_details_attributes

  has_many :penjualan_details

  accepts_nested_attributes_for :penjualan_details
end
