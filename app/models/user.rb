class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 2..20 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }
  has_many :events
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
