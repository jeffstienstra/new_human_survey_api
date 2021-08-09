require "rails_helper"

RSpec.describe User, type: :model do
  describe "#survey_complete?" do
    context "when a user has an incomplete survey" do
      let(:user) { build(:user, :without_survey) }

      it "returns false" do
        expect(user.survey_complete?).to eq(false)
      end
    end

    context "when a user has a complete survey" do
      let(:user) { build(:user) }

      it "returns true" do
        expect(user.survey_complete?).to eq(true)
      end
    end
  end
end
