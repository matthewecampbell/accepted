class College < ApplicationRecord

  def self.all
    college_service = CollegeService.new
    raw_colleges = college_service.get_colleges
    raw_colleges.map do |college|
      College.new(college)
    end
  end

  def self.recommended_colleges
    college_service = CollegeService.new
  end
end
