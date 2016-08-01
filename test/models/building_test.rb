# == Schema Information
#
# Table name: buildings
#
#  id           :integer          not null, primary key
#  address      :string
#  zip_code     :string
#  city         :string
#  country      :string
#  manager_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
