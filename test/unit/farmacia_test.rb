require 'test_helper'

class FarmaciaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "pertenece a una localidad" do
    farmacia = farmcias(:one)
    santa_fe = farmacia.departamento
    assert lacapital.kind_of? Localidad
  end

  test "debe tener un nombre" do
    f = Farmcias.new
    assert l.invalid?
    
    f.name = "Bonazolla"
    assert l.valid?
  end

  test "El nombre no puede estar repetido" do
  end
end
