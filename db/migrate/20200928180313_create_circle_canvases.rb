class CreateCircleCanvases < ActiveRecord::Migration[6.0]
  def change
    create_table :circle_canvases do |t|
      t.integer :posX
      t.integer :posY
      t.integer :dx
      t.integer :dy
      t.string :color
      t.string :sound
      t.integer :z_index
      t.integer :radius
      t.belongs_to :scribble, null: false, foreign_key: true

      t.timestamps
    end
  end
end
