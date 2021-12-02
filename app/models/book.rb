class Book < ApplicationRecord
  belongs_to :venue
  belongs_to :user

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :venue_id, presence: true
  validates :user_id, presence: true
  
end
