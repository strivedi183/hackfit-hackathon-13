# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  weight             :integer
#  height             :integer
#  location           :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  email              :string(255)
#  encrypted_password :string(128)
#  confirmation_token :string(128)
#  remember_token     :string(128)
#

class User < ActiveRecord::Base
  #include Clearance::User
end
