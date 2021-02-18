class Activity < ApplicationRecord
  belongs_to :theme
  belongs_to :user
  has_one :booking
end
