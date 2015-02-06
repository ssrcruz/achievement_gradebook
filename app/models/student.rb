class Student < ActiveRecord::Base
  has_secure_password

  has_many :grades
  has_many :parents

  belongs_to :teacher

  def self.get_form_option
   classes = []

    self.all.each do |sort|
      classes << [sort.name, sort.id]
    end
    return classes
  end
end
