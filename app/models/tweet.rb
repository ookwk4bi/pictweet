class Tweet < ApplicationRecord
  
  with_options presence: true do
    validates :text 
    validates :image
  end

  belongs_to :user
end
