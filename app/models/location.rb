class Location < ApplicationRecord
  belongs_to :user

  validates :address, presence: true
  validates :postcode, presence: true
  validates :country, presence: true

  geocoded_by :full_address
  after_validation :geocode


  def full_address
    "#{address}, #{postcode}, #{country}"
  end

end
