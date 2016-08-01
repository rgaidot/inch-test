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

class Building < ApplicationRecord
  validates :address, :zip_code, :city, :country, :manager_name, presence: true
end
