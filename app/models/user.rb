class User < ApplicationRecord
  def self.from_omniauth(auth)
    where(uid: auth[:uid]).first_or_create do |user|
      user.uid         = auth.uid
      user.name        = auth.info.name
      user.oauth_token = auth.credentials.token
      user.provider    = auth.provider
    end
  end
end
