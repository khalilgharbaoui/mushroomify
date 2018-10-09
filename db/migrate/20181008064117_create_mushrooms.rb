class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :identifier
      t.integer :edible
      t.integer :cap_shape
      t.integer :cap_color
      t.integer :cap_surface
      t.integer :bruiser
      t.integer :odor
      t.integer :gill_attachment
      t.integer :gill_spacing
      t.integer :gill_size
      t.integer :gill_color
      t.integer :stalk_shape
      t.integer :stalk_root
      t.integer :stalk_surface_above_ring
      t.integer :stalk_surface_below_ring
      t.integer :stalk_color_above_ring
      t.integer :stalk_color_below_ring
      t.integer :veil_type
      t.integer :veil_color
      t.integer :ring_number
      t.integer :ring_type
      t.integer :spore_print_color
      t.integer :population
      t.integer :habitat

      t.timestamps
    end
  end
end
