class Event < ApplicationRecord
  validates :name, presence: true, length: { maximum: 64 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :date, presence: true
  validates :location, presence: true
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  scope :upcoming, -> { where("date > ?", Date.today) }
  scope :past, -> { where("date < ?", Date.today) }
end
