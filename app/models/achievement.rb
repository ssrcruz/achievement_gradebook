class Achievement < ActiveRecord::Base
  belongs_to_many :students
end
