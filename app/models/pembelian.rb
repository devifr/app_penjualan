class Pembelian < ActiveRecord::Base
  attr_accessible :bahan_id, :harga_beli, :location_id, :tanggal, :jumlah
end