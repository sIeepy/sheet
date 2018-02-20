require 'rails_helper'

RSpec.describe Income, type: :model do

  it { is_expected.to belong_to :user }
  it { is_expected.to validate_presence_of :income_money }
  it { is_expected.to validate_presence_of :income_date }
  it { is_expected.to validate_presence_of :category }
  it { is_expected.to validate_numericality_of :income_money }
  it { is_expected.to_not allow_value(Date.current + 1).for(:income_date) }
  it { is_expected.to allow_value(Date.current).for(:income_date) }
  it { is_expected.to allow_value(7.days.ago).for(:income_date) }
end
