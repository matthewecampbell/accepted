class ChangeBigSchool < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :big_school, :enrollment_preference
  end
end
