class Attribute < ActiveRecord::Base
  validates :name, :full_text, :input_type, presence: true
end
