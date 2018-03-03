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

  describe '#import' do
    context 'valid import' do
      let(:outcome_CSV) { create(:outcome_CSV) }

      before do
        # CSV foreach Stub here
        CSV.stub(:foreach).with("file.path", headers: true).and_yield(outcome_CSV)
      end

      it "inserts new record" do
        expect do
        Outcome.import("file.path")
        end.to change(Outcome, :count).by(1)
      end
    end
  end
end
