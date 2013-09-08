class CreatePengeluaranHarians < ActiveRecord::Migration
  def change
    create_table :pengeluaran_harians do |t|
      t.date :tanggal
      t.integer :jumlah

      t.timestamps
    end
  end
end
