class JobApp < ActiveRecord::Base
  validates :name, :status, :data, presence: true
  
  belongs_to :position
  
  before_validation do
    self.status ||= "new"
  end
end
