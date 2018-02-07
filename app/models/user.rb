class User < ApplicationRecord
  has_many :outcomes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
