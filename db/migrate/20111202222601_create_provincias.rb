class CreateProvincias < ActiveRecord::Migration
  def change
    create_table :provincias do |t|
      t.string :name

      t.timestamps
    end
  end
end
