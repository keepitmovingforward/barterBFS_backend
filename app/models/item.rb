class Item < ApplicationRecord

  belongs_to :user
  has_many :barteritems
  has_many :barters, through: :barteritems

end
