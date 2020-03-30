class TaskImage < ApplicationRecord
  belongs_to :task, optional: true
  mount_uploader :image, TaskImageUploader
end
