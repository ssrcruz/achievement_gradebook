class AddTableAchievementsToStudent < ActiveRecord::Base
  has_to_and_belongs_to_many :students
end
