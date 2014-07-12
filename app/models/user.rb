class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email

  has_many :locations
  has_many :shares, foreign_key: :sender_id
  has_many :adventures, class_name: 'Share', foreign_key: 'receiver_id'
end
