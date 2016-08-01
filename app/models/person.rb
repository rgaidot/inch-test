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

class Person < ApplicationRecord
  validates :email, :home_phone_number, :mobile_phone_number, :firstname,
            :lastname, :address, presence: true
  validates :email, :mobile_phone_number, uniqueness: true
end
