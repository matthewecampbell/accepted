class AddWebsiteToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorite_colleges, :website, :string
    add_column :favorite_colleges, :phone_number, :string
    add_column :favorite_colleges, :financial_aid_address, :string
    add_column :favorite_colleges, :admissions_address, :string
    add_column :favorite_colleges, :application_address, :string
    add_column :favorite_colleges, :net_price_calculator, :string
    add_column :favorite_colleges, :average_price_after_financial_aid, :integer
    add_column :favorite_colleges, :average_price_if_less_than_30000, :integer
    add_column :favorite_colleges, :average_price_if_less_than_48000, :integer
    add_column :favorite_colleges, :average_price_if_less_than_75000, :integer
    add_column :favorite_colleges, :average_price_if_less_than_110000, :integer
    add_column :favorite_colleges, :average_price_if_greater_than_110000, :integer
    add_column :favorite_colleges, :ncaa_membership, :string
    add_column :favorite_colleges, :football_team?, :string
    add_column :favorite_colleges, :basketball_team?, :string
    add_column :favorite_colleges, :baseball_team?, :string
    add_column :favorite_colleges, :cross_country_team?, :string
    add_column :favorite_colleges, :address, :string
    add_column :favorite_colleges, :zip, :integer
    add_column :favorite_colleges, :state, :string
  end
end
