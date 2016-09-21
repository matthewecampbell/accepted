require 'spec_helper'

describe "GET '/auth/facebook/callback'" do

  before(:each) do
    valid_facebook_login_setup
    get "http://localhost:3000/auth/facebook/callback"
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:facebook]
  end

  it "should set user_id" do
    expect(session[:user_id]).to eq(User.last.id)
  end

  it "should redirect to root" do
    expect(response).to redirect_to edit_welcome_path
  end
end
