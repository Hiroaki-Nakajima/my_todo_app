class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks, dependent: :destroy
  has_many :articles, dependent: :destroy

  validates :name, presence: true, length: { maximum: 10 }
end
