class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts, dependent: :destroy
  has_many :replies, dependent: :destroy
  
  has_and_belongs_to_many :books
  
  has_many :postlikes, dependent: :destroy
  has_many :liked_posts,  through: :postlikes, source: :post
  
  def is_likedpost?(p)
    Postlike.find_by(user_id: self.id,
                     post_id: p.id).present?
  end
  # 혹은
  def has_likedpost?(p)
    Postlike.find_by(user_id: self.id, post_id: p.id).nil?
  end
end
