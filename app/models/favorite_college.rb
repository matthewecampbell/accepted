class FavoriteCollege <ApplicationRecord
  belongs_to :user

  ratyrate_rateable 'total_price_in_state', 'total_price_out_of_state', 'act_range', 'six_year_grad_rate', 'affiliation', 'city', 'total_enrollment'
end
