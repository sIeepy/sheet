class Income < ApplicationRecord
  belongs_to :user

  validates_presence_of :income_money, :income_date, :category
  validates_numericality_of :income_money
  validates_date :income_date, on_or_before: -> { Date.current }
end
