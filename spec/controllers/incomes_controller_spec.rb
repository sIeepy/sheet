require 'rails_helper'

RSpec.describe IncomesController, type: :controller do
  let(:user) { create(:user) }

  before { sign_in user }

  describe 'POST#create' do
    context 'create income with valid params' do
      it 'create new income' do
        expect {
          post :create, params: { income: attributes_for(:income) }
        }.to change(Income, :count).by(1)
      end

      it 'flash notice' do
        post :create, params: { income: attributes_for(:income) }
        expect(flash[:notice]).to eq 'Income added'
      end

      it 'redirect to incomes path' do
        post :create, params: { income: attributes_for(:income) }
        expect(response).to redirect_to incomes_path
      end
    end

    context 'create income with invalid params' do
      it 'not create new income' do
        expect {
          post :create, params: { income: attributes_for(:invalid_income) }
        }.to change(Income, :count).by(0)
      end

      # it 'flash error message' do
      #   post :create, params: { income: attributes_for(:invalid_income) }
      #   expect(flash[:error]).to eq 'Income not added'
      # end

      it 'redirect to incomes_path' do
        post :create, params: { income: attributes_for(:invalid_income) }
        expect(response).to redirect_to incomes_path
      end
    end
  end
end
