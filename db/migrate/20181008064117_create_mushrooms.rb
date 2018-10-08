class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :identifier
      t.integer :eadible
      t.integer :cap_shape
      t.integer :cap_surface
      t.integer :cap_color
      t.integer :bruiser

      t.timestamps
    end
  end
end
