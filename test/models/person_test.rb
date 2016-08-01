# == Schema Information
#
# Table name: people
#
#  id                  :integer          not null, primary key
#  email               :string
#  home_phone_number   :string
#  mobile_phone_number :string
#  firstname           :string
#  lastname            :string
#  address             :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
