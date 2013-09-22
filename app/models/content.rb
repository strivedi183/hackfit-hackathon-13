# == Schema Information
#
# Table name: contents
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  url         :string(255)
#  course_id   :integer
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Content < ActiveRecord::Base
  belongs_to :course
end
