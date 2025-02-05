class RemovePrefectureAndCityFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :prefecture_id, :integer
    remove_column :users, :city, :string
  end
end
