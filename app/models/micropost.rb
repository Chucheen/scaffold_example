class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :content, :length => { :maximum => 140 }
  validates :user_id, :length => { :minimum => 0 }
  belongs_to :user
end
