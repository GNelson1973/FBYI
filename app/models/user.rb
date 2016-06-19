class User < ActiveRecord::Base
  has_many :posts
  has_many :likes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def handle
    self.email.split('@')[0]
  end
end
