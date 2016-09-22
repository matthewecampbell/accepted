require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_db_column "name" }
  it { should have_db_column "oauth_token" }
  it { should have_db_column "created_at" }
  it { should have_db_column "updated_at" }
  it { should have_db_column "uid" }
  it { should have_db_column "sign_in_count" }
  it { should have_db_column "enrollment_preference" }
  it { should have_db_column "act_score" }
  it { should have_db_column "in_state_max" }
  it { should have_db_column "out_of_state_max" }
  it { should have_db_column "affiliation_preference" }
  it { should have_db_column "grad_rate_preference" }
  it { should have_many(:favorite_colleges)}
end
