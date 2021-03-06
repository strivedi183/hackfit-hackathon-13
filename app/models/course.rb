# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  url         :string(255)
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Course < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :contents
end
