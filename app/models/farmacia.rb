class Farmacia < ActiveRecord::Base

  has_and_belongs_to_many :obras
  geocoded_by :ubicacion
#  after_validation :geocode

  acts_as_gmappable

  def gmaps4rails_address
#  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    self.ubicacion
  end
  
  belongs_to :localidad
end
