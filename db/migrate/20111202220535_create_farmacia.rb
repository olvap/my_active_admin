class CreateFarmacia < ActiveRecord::Migration
  def change
    create_table :farmacias do |t|
      t.string :name
      t.string :ubicacion
      t.float :latitude
      t.float :longitude
      t.integer :localidad_id

      t.timestamps
    end
  end
end
