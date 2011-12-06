class FarmaciasObras < ActiveRecord::Migration
  def change
    create_table :farmacias_obras, :id => false do |t|
      t.integer :farmacia_id
      t.integer :obra_id

      t.timestamps
    end
  end
end
