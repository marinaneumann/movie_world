class Movie < ActiveRecord::Base
  validates :name, :user_id, :presence => true
  validates_uniqueness_of :name, :uniqueness => { :scope => :release_date }
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_many :votes
  belongs_to :user

	def vote_count
		votes.count
	end
end
