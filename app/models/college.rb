class College < ApplicationRecord
  has_many :favorites

  def self.all
    college_service = CollegeService.new
    raw_colleges = college_service.get_colleges
    raw_colleges.map do |college|
      College.new(college)
    end
  end

  def self.recommended_colleges(act, in_state, out_of_state, affiliation, grad_rate, enrollment)
    college_service = CollegeService.new
    raw_colleges = college_service.get_recommended_colleges(act, in_state, out_of_state, affiliation, grad_rate, enrollment)
    raw_colleges.map do |college|
      College.new(college)
    end
  end

  def self.find(id)
    college_service = CollegeService.new
    raw_college = college_service.get_college(id)
    College.new(raw_college)
  end
end
