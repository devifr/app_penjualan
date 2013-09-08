class PenjualanDetail < ActiveRecord::Base
  attr_accessible :jumlah_barang, :jumlah_penjualan, :penjualan_id, :product_id, :tanggal
end
