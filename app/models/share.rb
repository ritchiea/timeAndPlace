class Share < ActiveRecord::Base

  belongs_to :location
  belongs_to :user, foreign_key: :sender_id
end
