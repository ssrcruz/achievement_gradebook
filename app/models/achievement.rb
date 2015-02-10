class Achievement < ActiveRecord::Base
  belongs_to :students

  def tag_names
    tags.map(&:name).join(", ")
  end
  
end
