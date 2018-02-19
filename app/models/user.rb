class User < ApplicationRecord
  has_many :outcomes
  has_many :incomes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
