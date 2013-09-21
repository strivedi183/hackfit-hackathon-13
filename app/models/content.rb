# == Schema Information
#
# Table name: contents
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  url         :string(255)
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Content < ActiveRecord::Base
  belongs_to :course
end
