class UserSerializer < ActiveModel::Serializer
  attributes :id,
    :email,
    :survey_complete,
    :abouts,
    :goals,
    :favorites

  has_many :abouts
  has_many :goals
  has_many :favorites

  def favorites
    object.favorites.group_by(&:category)
  end
end
