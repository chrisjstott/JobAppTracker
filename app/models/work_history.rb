class WorkHistory < ActiveRecord::Base
  validates :employer_name, presence: true
  
  belongs_to :job_app
end
