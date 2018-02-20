require 'rails_helper'

RSpec.describe OutcomeDecorator do
  let(:user) { create(:user) }
  let(:outcome) { create(:outcome) }

  before { sign_in user }

  describe '#categories' do
    subject { outcome.decorate.categories }
    it { is_expected.to eq ['Basic expenses', 'Car & Transport',
                            'Entertainment', 'Bills', 'Finances'] }
  end
end
