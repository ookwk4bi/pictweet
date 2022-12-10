class Tweet < ApplicationRecord
  
  with_options presence: true do
    validates :text 
    validates :image
  end
  has_many :comments
  belongs_to :user
end
