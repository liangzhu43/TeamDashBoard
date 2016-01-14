class CreateSatisfactions < ActiveRecord::Migration
  def change
    create_table :satisfactions do |t|
      t.date :date
      t.string :name
      t.string :category
      t.integer :score

      t.timestamps null: false
    end
  end
end
