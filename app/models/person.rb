class Person < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :statuses
  has_many :friends, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_people, through: :friends, source: :following

  has_many :reverse_friends, foreign_key: "following_id",
                             class_name:  "Friend",
                             dependent:   :destroy

  has_many :followers, through: :reverse_friends, source: :follower






  def status
    statuses.not_expired.latest
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
