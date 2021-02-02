class PostImage < ApplicationRecord
  
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  has_many :favolites, dependent: :destroy
  
  validates :shop_name, presence: true
  validates :image, presence: true
  
  def favolited_by?(user)
    favolites.where(user_id: user.id).exists?
  end
end
