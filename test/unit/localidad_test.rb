require 'test_helper'

class LocalidadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "pertenece a un departamento" do
    santafe = localidads(:santa_fe)
    lacapital = santafe.departamento
    assert lacapital.kind_of? Departamento
  end
  
  test "debe tener un nombre" do
    l = Localidad.new
    assert l.invalid?
    
    l.name = "Coronda"
    assert l.valid?
  end
  
  test "nombre no puede estar repetido en el mismo departamento" do
    l = Localidad.new(:name => "Sauce Viejo",
      :departamento => departamentos(:la_capital))
    assert l.save, "Salva el primero"
    
    l2 = Localidad.new(:name => "Sauce Viejo",
      :departamento => departamentos(:la_capital))
    assert !l2.save, "no salva el segundo"
    
    l2.departamento =  departamentos(:one)
    assert l2.save, "salva en otro departamento"
  end

end
