class AddBigSchoolToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :big_school, :boolean
  end
end
