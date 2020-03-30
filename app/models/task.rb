class Task < ApplicationRecord
  has_many :task_images
  accepts_nested_attributes_for :task_images
end
