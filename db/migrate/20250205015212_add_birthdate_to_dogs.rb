class AddBirthdateToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :birthdate, :date
  end
end
