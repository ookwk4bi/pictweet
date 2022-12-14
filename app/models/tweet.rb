class Tweet < ApplicationRecord
  
  with_options presence: true do
    validates :text 
    validates :image
  end
  has_many :comments
  belongs_to :user

  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
