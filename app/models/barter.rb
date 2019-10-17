class Barter < ApplicationRecord

  has_many :barteritems
  has_many :items, through: :barteritems
  belongs_to :recipient, :class_name => 'User'
  belongs_to :sender, :class_name => 'User'
  
end
