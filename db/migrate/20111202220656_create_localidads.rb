class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.string :name
      t.integer :departamento_id
      t.float :lat
      t.float :lng
      t.integer :zoom

      t.timestamps
    end
  end
end
