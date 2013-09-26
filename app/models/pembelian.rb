class Pembelian < ActiveRecord::Base
  attr_accessible :bahan_id, :harga_beli, :tanggal, :jumlah, :total

  belongs_to :bahan

  before_save :count_total, :increment_stock
  

  def count_total
    final_total = self.harga_beli * self.jumlah
    self.total = final_total 
  end

  def increment_stock
    bahan = Bahan.find(self.bahan_id) 
    last_stock = bahan.stock + count_bahan
    bahan.stock = last_stock
    bahan.save
  end

  def count_bahan
    jumlah_now = Pembelian.where('id = ?',self.id).first
    return -(jumlah_now.jumlah - self.jumlah) if jumlah_now
    self.jumlah
  end

  def sisa_stock
    Bahan.find(self.bahan_id).try(:stock)
  end

end