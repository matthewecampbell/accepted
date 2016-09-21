require 'rails_helper'

RSpec.describe "User Requests", type: :request do

  it "should render edit page" do
    user = User.create(id:1)

    get '/users/1/edit'

    expect(response).to redirect_to(welcome_path)
  end

end
RSpec.describe "User Requests", type: :request do

  it "should render update page" do
    user = User.create(id:1)

    put '/users/1?act_score=33&enrollment_preference=8000&out_of_state_max=70000&in_state_max=70000&grad_rate_preference=60&user[affiliation_preference]=private'

    expect(response).to redirect_to(location)
  end
end
