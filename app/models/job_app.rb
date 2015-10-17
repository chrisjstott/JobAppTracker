class JobApp < ActiveRecord::Base
  validates :name, :status, presence: true
  
  belongs_to :position
  has_many :work_histories
  
  before_validation do
    self.status ||= "new"
  end
end
