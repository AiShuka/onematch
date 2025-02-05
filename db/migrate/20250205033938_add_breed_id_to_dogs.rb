class AddBreedIdToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :breed_id, :integer
  end
end
