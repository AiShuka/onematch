class AddGenderToDogs < ActiveRecord::Migration[7.1]
  def change
    add_column :dogs, :gender, :string
  end
end
