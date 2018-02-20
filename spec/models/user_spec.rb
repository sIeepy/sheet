require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:outcomes) }
  it { is_expected.to have_many(:incomes) }
end
