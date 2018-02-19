require 'rails_helper'

RSpec.describe Outcome, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:outcome_money) }
  it { is_expected.to validate_presence_of(:category) }
  it { is_expected.to validate_presence_of(:outcome_date) }
  it { is_expected.to validate_numericality_of(:outcome_money) }
  it { is_expected.to_not allow_value(Date.current + 1).for(:outcome_date) }
  it { is_expected.to allow_value(Date.current).for(:outcome_date) }
  it { is_expected.to allow_value(2.days.ago).for(:outcome_date) }
end
