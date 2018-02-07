class Outcome < ApplicationRecord
  belongs_to :user

  validates_presence_of :outcome_money, :category, :outcome_date
  validates_numericality_of :outcome_money
  validates_date :outcome_date, is_at: -> { Date.current }
end
