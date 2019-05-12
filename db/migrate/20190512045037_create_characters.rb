class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :starred_quote
      t.integer :age
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
