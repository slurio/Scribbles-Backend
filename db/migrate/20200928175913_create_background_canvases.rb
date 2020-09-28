class CreateBackgroundCanvases < ActiveRecord::Migration[6.0]
  def change
    create_table :background_canvases do |t|
      t.string :background_style
      t.integer :z_index
      t.belongs_to :scribble, null: false, foreign_key: true

      t.timestamps
    end
  end
end
