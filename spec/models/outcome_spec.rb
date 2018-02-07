require 'rails_helper'

RSpec.describe Outcome, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to validate_presence_of(:outcome_money) }
  it { is_expected.to validate_presence_of(:category) }
  it { is_expected.to validate_presence_of(:outcome_date) }
  it { is_expected.to validate_numericality_of(:outcome_money) }
  it { is_expected.to validates_date(:outcome_date).is_at Date.current }
  #
  # it 'should create post only on or before current date' do
  #   @older_outcome = create(:outcome, outcome_date: 1.day.ago)
  #   @today_outcome = create(:outcome, outcome_date: Date.current)
  #   expect(Outcome.all).to eq [@older_outcome, @today_outcome]
  # end
end
