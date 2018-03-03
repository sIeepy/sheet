class Outcome < ApplicationRecord
  require 'csv'

  belongs_to :user

  validates_presence_of :outcome_money, :category, :outcome_date
  validates_numericality_of :outcome_money
  validates_date :outcome_date, on_or_before: -> { Date.current }

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      binding.pry
      rower = row.to_hash
      rower.store('user_id', User.current.id)
      Outcome.create! rower
    end
  end
end
