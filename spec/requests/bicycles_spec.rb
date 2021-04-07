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
end
