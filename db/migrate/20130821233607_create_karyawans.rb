class CreateKaryawans < ActiveRecord::Migration
  def change
    create_table :karyawans do |t|
      t.string :nama_karyawan
      t.integer :gaji
      t.integer :location_id

      t.timestamps
    end
  end
end
