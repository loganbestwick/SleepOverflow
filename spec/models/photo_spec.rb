# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  url         :string(255)
#  created_at  :string(255)      not null
#  updated_at  :datetime         not null
#  total_views :integer
#  score       :integer
#

require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:url)}
  it { should validate_uniqueness_of(:url)}
  it { should validate_presence_of(:created_at)}

  # Lines 10 to 14 are now covered by line 6
  # it "should have a unique id" do
  #   expect{
  #   Photo.create(:url => "hello", :created_at => "10/12")
  #   }.to change {Photo.count}.by(1)
  # end

end
