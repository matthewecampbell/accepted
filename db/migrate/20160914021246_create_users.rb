class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.datetime :created_at
      t.datetime :updated_at
      t.string :provider
      t.string :uid
    end
  end
end
