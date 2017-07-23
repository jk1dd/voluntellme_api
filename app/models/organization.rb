class Organization < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :county, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :loc, presence: true
end
