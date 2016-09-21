require 'rails_helper'

describe CollegeService do
  context "#colleges" do
    it "gets all colleges" do
      VCR.use_cassette("CollegeService gets colleges") do
        colleges = CollegeService.new.get_colleges
        college = colleges.first

        expect(colleges.count).to eq(2149)
        expect(college).to have_key(:name)
        expect(college).to have_key(:act_range)
        expect(college[:name].class).to eq(String)
        expect(college[:act_range].class).to eq(String)
      end
    end

    it "gets a college" do
      VCR.use_cassette("CollegeService gets a college") do
        college = CollegeService.new.get_college(912)

        expect(college.count).to eq(16)
        expect(college).to have_key(:name)
        expect(college).to have_key(:act_range)
        expect(college[:name].class).to eq(String)
        expect(college[:act_range].class).to eq(String)
      end
    end

    it "gets recommended colleges" do
      VCR.use_cassette("CollegeService gets recommended colleges") do
        colleges = CollegeService.new.get_recommended_colleges(30, 70000,70000, "public", 70, 10000)
        college = colleges.first

        expect(colleges.count).to eq(39)
        expect(college).to have_key(:name)
        expect(college).to have_key(:act_range)
        expect(college[:name].class).to eq(String)
        expect(college[:act_range].class).to eq(String)
      end
    end
  end
end
