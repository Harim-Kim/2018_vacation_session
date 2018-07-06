class Post < ActiveRecord::Base
    belongs_to :user
    has_many :replies, dependent: :destroy
    has_many :postlikes, dependent: :destroy
    has_many :liked_users,  through: :postlikes, source: :user
    def count_like()
        return self.postlikes.count
    end
end
