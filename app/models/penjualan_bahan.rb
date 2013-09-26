class PenjualanBahan < ActiveRecord::Base
  attr_accessible :bahan_id, :jumlah_bahan, :penjualan_id
  belongs_to :bahan
  belongs_to :penjualan

  before_save :decrement_stock

  def decrement_stock
    bahan = Bahan.find(self.bahan_id)
    last_stock = bahan.stock - count_bahan
    bahan.stock = last_stock
    bahan.save
  end

  def count_bahan
    jumlah_bahan_now = PenjualanBahan.where('id = ?',self.id).first
    return self.jumlah_bahan - jumlah_bahan_now.jumlah_bahan if jumlah_bahan_now
    self.jumlah_bahan
  end

end
