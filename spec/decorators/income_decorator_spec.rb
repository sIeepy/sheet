require 'rails_helper'

RSpec.describe IncomeDecorator do
  let(:user) { create(:user) }
  let(:income) { create(:income) }

  before { sign_in user }

  describe '#categories' do
    subject { income.decorate.categories }
    it { is_expected.to eq ['Basic expenses', 'Car & Transport',
                            'Entertainment', 'Bills', 'Finances'] }
  end
end
