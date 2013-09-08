class RenameColumnNamaLokasiTiNameLocation < ActiveRecord::Migration
  def up
    rename_column :locations, :nama_lokasi, :name_location
  end

  def down
    rename_column :locations, :name_location, :nama_lokasi
  end
end
