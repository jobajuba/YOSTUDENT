class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 800} #I am just a test. Delete me later. Test capped at 800 characters.
  
  default_scope -> { order(created_at: :desc) } #newest posts show first on timeline
end
