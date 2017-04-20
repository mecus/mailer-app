require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "User /create" do
    it "create a user instance" do
      # def authenticated_header
      #   token = Knock::AuthToken.new(payload: { sub: users(:one).id }).token
      #
      #   {
      #     'Authorization': "Bearer #{token}"
      #   }
      # end
      # get :index, headers: authenticated_header
      # json = JSON.parse(response.body)
      expect(response).to be_success
      # expect(json['email']).to eq('danny@gmail.com')

    end
  end
end
