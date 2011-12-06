class CreateObras < ActiveRecord::Migration
  def change
    create_table :obras do |t|
      t.string :name

      t.timestamps
    end
  end
end
