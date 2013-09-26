class Bahan < ActiveRecord::Base
  attr_accessible :nama, :location_id, :stock

  belongs_to :location

  def bahan_location
    "#{nama}(#{location.name_location})"
  end

end
