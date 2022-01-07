class Event < ApplicationRecord
  :date
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
end
