class User < ApplicationRecord

  has_many :items
  has_many :sentBarters, :class_name => 'Barter', :foreign_key => 'sender_id'
  has_many :recdBarters, :class_name => 'Barter', :foreign_key => 'recipient_id'

end
