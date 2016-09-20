class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :act_score, :integer
    add_column :users, :in_state_max, :integer
    add_column :users, :out_of_state_max, :integer
    add_column :users, :affiliation_preference, :string
    add_column :users, :grad_rate_preference, :integer
  end
end
