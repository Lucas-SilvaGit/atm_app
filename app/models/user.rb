class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :value
        validates :email, :password, presence: true
        # validates :value, numericality: { odd: true }

  def value
    @value.to_f
  end

  # def value=(value)
  #   @value.to_f
  # end

  def deposit(value) 
    if value > 0
      update(balance: self.balance += value, password: 123456)
    else
      puts "Please enter a valid value"
    end
  end
end
