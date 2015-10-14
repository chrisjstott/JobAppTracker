class Position < ActiveRecord::Base
  validates :title, :description, presence: true
  
  has_many :job_apps
end
