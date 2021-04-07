require 'rails_helper'

RSpec.describe 'Bicycles', type: :request do
  let!(:bicycles) { create_list(:bicycle, 10) }
  describe 'GET /bicycles' do
    before { get '/bicycles' }

    it 'returns list of all bicycles' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
  end

  describe 'POST /bicycles' do
    let(:valid_attributes) do
      { model: 'Forward', description: 'Budget bicycles manufacturer', url: 'http://www.forward.com' }
    end

    context 'when the request is valid' do
      before { post '/bicycles', params: valid_attributes }

      it 'creates a bicycle' do
        expect(json['model']).to eq('Forward')
      end
    end
  end
end
