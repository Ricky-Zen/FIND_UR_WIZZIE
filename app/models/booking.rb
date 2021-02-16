class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  STATUS = ['pending', 'accepted', 'declined', 'cancelled']

  validates :status, inclusion: { in: STATUS }
end
