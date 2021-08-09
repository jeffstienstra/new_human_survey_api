class About < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :accomplishments
  validates_presence_of :superpower
end
