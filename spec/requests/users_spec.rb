require "rails_helper"

RSpec.describe "Users", type: :request do
  let(:body) { response.body }
  let(:parsed_body) { JSON.parse(body) }

  describe "GET /users" do
    let!(:user1) { create(:user) }
    let!(:user2) { create(:user, :without_survey) }

    let(:expected) do
      [
        {
          "id" => user1.id,
          "email" => user1.email,
          "survey_complete" => true,
          "abouts": [],
          "goals": [],
          "favorites" => {},
        },
        {
          "id" => user2.id,
          "email" => user2.email,
          "survey_complete" => false,
          "abouts": [],
          "goals": [],
          "favorites" => {},
        },
      ]
    end

    it "returns all users" do
      get users_path
      expect(response).to have_http_status(200)
      expect(parsed_body).to match_array(expected)
    end
  end
end
