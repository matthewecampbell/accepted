require 'rails_helper'

RSpec.describe FavoriteCollege, type: :model do
  it { should have_db_column "name" }
  it { should have_db_column "total_price_in_state" }
  it { should have_db_column "total_price_out_of_state" }
  it { should have_db_column "percent_admitted" }
  it { should have_db_column "yield" }
  it { should have_db_column "total_applicants" }
  it { should have_db_column "act_range" }
  it { should have_db_column "city" }
  it { should have_db_column "longitude" }
  it { should have_db_column "latitude" }
  it { should have_db_column "affiliation" }
  it { should have_db_column "six_year_grad_rate" }
  it { should have_db_column "act_high" }
  it { should have_db_column "act_low" }
  it { should have_db_column "total_enrollment" }
  it { should have_db_column "created_at" }
  it { should have_db_column "updated_at" }
  it { should belong_to(:user)}
end
