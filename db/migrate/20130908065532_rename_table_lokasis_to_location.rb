class RenameTableLokasisToLocation < ActiveRecord::Migration
  def up
    rename_table :lokasis, :locations
  end

  def down
    rename_table :locations, :lokasis
  end
end
