class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :subreddits
  has_many :posts

  validates_presence_of :firs_name, :last_name, :username

  def full_name
    "#{firs_name} #{last_name}"
  end

end
