class Task < ApplicationRecord

validates :name, presence: true
validates :child_name, presence: true
validates :promotion, presence: true


end


