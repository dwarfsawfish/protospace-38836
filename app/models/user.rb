class User < ApplicationRecord
  validates :name, presence: true
  validates :position, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true

  has_many :prototypes
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
