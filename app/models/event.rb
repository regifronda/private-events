class Event < ApplicationRecord
  validates :name, presence: true, length: { maximum: 64 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :date, presence: true
  validates :location, presence: true
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
end
