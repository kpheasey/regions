class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.references :region, foreign_key: true
      t.string :category
      t.string :code
      t.string :name
      t.string :alpha_3_code, length: 3
      t.integer :numeric_code

      t.timestamps

      t.index [:region_id, :code], unique: true
    end
  end
end
