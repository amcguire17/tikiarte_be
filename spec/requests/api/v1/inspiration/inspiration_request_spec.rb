require 'rails_helper'

RSpec.describe 'inspiration' do
  describe 'get request' do
    it 'finds a random image', :vcr do
      get "/api/v1/inspiration"

      expect(response).to be_successful

      image = JSON.parse(response.body, symbolize_names: true)

      expect(image).to have_key(:data)
      expect(image[:data]).to have_key(:url)
      expect(image[:data][:url]).to eq("https://i.picsum.photos/id/327/500/600.jpg?hmac=sNT8Km4rKl_Rf9SzhhZ2DoWjsnF0F58yM9rQvEfhJhc")
    end
  end
end
