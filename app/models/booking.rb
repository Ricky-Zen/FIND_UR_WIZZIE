class Booking < ApplicationRecord
  belongs_to :user

  STATUS = ['pending', 'accepted', 'declined', 'cancelled']

  validates :status, inclusion: { in: STATUS }
end
