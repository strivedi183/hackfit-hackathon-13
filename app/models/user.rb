# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  weight     :integer
#  height     :integer
#  location   :string(255)
#  url        :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
include Clearance::User

  # include Clearance::User
  has_and_belongs_to_many :users
end
