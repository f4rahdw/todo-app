class Project < ApplicationRecord
  has_many :todos, dependent: :destroy
  validates :title, presence: true, length: { minimum: 1, maximum: 12 }
end
