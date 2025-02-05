class ChangeAgeToBirthdateInDogs < ActiveRecord::Migration[7.1]
  def change
    remove_column :dogs, :age, :integer
    add_column :dogs, :birthdate, :date
  end
end
