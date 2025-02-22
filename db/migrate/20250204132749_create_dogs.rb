class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.text :personality
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
