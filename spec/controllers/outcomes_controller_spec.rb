require 'rails_helper'

RSpec.describe OutcomesController, type: :controller do
  let(:user) { create(:user) }

  before { sign_in user }

  describe 'POST#create' do
    context 'with valid attributes' do
      it 'create new outcome' do
        expect {
          post :create, params: { outcome: attributes_for(:outcome) }
        }.to change(Outcome, :count).by(1)
      end

      it 'flash notice' do
        post :create, params: { outcome: attributes_for(:outcome) }
        expect(flash[:notice]).to eq 'Outcome added'
      end

      it 'redirect to outcome_path' do
        post :create, params: { outcome: attributes_for(:outcome) }
        expect(response).to redirect_to outcomes_path
      end
    end

    context 'with invalid attributes' do
      it 'not create new outcome' do
        expect {
          post :create, params: { outcome: attributes_for(:invalid_outcome)}
        }.to change(Outcome, :count).by(0)
      end

      # it 'flash error' do
      #   post :create, params: { outcome: attributes_for(:invalid_outcome) }
      #   expect(flash[:notice]).to eq 'Outcome not added'
      # end

      it 'redirect to outcomes_path' do
        post :create, params: { outcome: attributes_for(:invalid_outcome) }
        expect(response).to redirect_to outcomes_path
      end
    end
  end
end
