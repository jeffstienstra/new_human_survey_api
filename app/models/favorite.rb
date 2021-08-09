class Favorite < ApplicationRecord
  enum category: {
    drinks: "drink",
    snacks: "snack",
    people: "person",
  }

  belongs_to :user
end
