class CreateCoursesUsersJoinTable < ActiveRecord::Migration
  def change
    create_join_table :courses, :users do |t|
      t.references :course
      t.references :user
    end
  end
end
