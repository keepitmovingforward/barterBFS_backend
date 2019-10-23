class Barter < ApplicationRecord

  has_many :barter_items
  has_many :items, through: :barter_items
  belongs_to :recipient, :class_name => 'User'
  belongs_to :sender, :class_name => 'User'

end
