class CreateScribbles < ActiveRecord::Migration[6.0]
  def change
    create_table :scribbles do |t|
      t.string :title
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
