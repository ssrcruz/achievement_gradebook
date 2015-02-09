class CreateAddTableAchievementsToStudents < ActiveRecord::Migration
  def change
    create_table :add_table_achievements_to_students do |t|
      t.integer :achievement_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
