class Localidad < ActiveRecord::Base
  has_many :farmacias
  
  default_scope :order => "name"
end
