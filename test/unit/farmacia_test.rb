require 'test_helper'

class FarmaciaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "pertenece a una localidad" do
    farmacia = farmcias(:one)
    santa_fe = farmacia.localidad
    assert lacapital.kind_of? Localidad
  end

  test "debe tener un nombre" do
    f = Farmacia.new
    assert f.invalid?
    
    f.name = "Bonazolla"
    assert f.valid?
  end

  test "El nombre no puede estar repetido" do
  end
end
