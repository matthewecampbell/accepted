require 'rails_helper'

RSpec.describe College, type: :model do
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

  it "can return all colleges" do
    VCR.use_cassette("college can return all colleges") do

    expect(College.all.class).to eq(Array)
    expect(College.all.count).to eq(2149)
    end
  end

  it "can return all recommended_colleges" do
    VCR.use_cassette("college can return all recommended colleges") do
      colleges = College.recommended_colleges(30, 70000,70000, "public", 70, 10000)

      expect(colleges.class).to eq(Array)
      expect(colleges.count).to eq(39)
    end
  end
end
