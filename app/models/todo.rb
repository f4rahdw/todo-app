class Todo < ApplicationRecord
  belongs_to :project

  validates :description, presence: true, length: { minimum: 4, maximum: 25 }
end
