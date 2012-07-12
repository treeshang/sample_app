class Relationship < ActiveRecord::Base
  attr_accessible :followed_id
	
	belongs_to :follower, :class_name => "User"
	belongs_to :followed, :class_name => "User"

	validates :follower_id, :presence => true
	validates :followed_id, :presence => true

	def self.find_by_followed_id(followed)
		return where(["followed_id = ?", followed]).first
	end

	def find_by_followed_id(followed)
		return where(["followed_id = ?", followed]).first
	end
end
