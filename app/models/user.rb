class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true

  def close_account
    update(inactive_at = Time.now)
  end

  def reactivate_account
    update(inactive_at = nil)
  end
  
end
