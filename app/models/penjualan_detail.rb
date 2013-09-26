class PenjualanDetail < ActiveRecord::Base
  attr_accessible :jumlah_barang, :jumlah_penjualan, :penjualan_id, :product_id, :tanggal

  belongs_to :product
  belongs_to :penjualan

  after_validation :set_jumlah_penjualan

  def set_jumlah_penjualan
    jumlah_barang = self.jumlah_barang
    harga = 0
    harga = self.product.harga if self.product
    self.jumlah_penjualan = jumlah_barang * harga
  end

end
