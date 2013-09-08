class CreatePengeluaranBulanans < ActiveRecord::Migration
  def change
    create_table :pengeluaran_bulanans do |t|
      t.date :bulan
      t.integer :jumlah

      t.timestamps
    end
  end
end
