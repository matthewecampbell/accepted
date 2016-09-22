class AddUserIdToFavoriteColleges < ActiveRecord::Migration[5.0]
  def change
    add_reference :favorite_colleges, :user, foreign_key: true
  end
end
