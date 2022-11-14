class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :value

  def deposit(value)
    return errors.add(:value, message: "o valor nao pode ser negativo") if value.negative?
    
    update(balance: self.balance += value)
  end

  def withdraw(value)
    return errors.add(:value, message: "o valor nao pode ser negativo") if value.negative?
    return errors.add(:balance, message: "saldo insuficiente") if value > balance
    update(balance: self.balance -= value)
  end
  
end
