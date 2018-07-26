class CreateUnicorns < ActiveRecord::Migration[5.2]
  def change
    create_table :unicorns do |t|
      t.string :name
      t.string :color
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
