require 'rails_helper'

RSpec.describe LoremPicsumService, :vcr do
  it 'returns a random picture' do
    response = LoremPicsumService.random_picture
    expect(response).to be_a(String)
    expect(response).to eq("https://i.picsum.photos/id/476/500/600.jpg?hmac=ik8LbDKdZhibswv81rzwCVyEyU89DNJPLepVCZ9rQAY")
  end
end
