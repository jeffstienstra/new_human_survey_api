class User < ApplicationRecord
  has_secure_password

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 },
            format: { with: URI::MailTo::EMAIL_REGEXP }

  has_many :abouts  #had issues using has_one - said 'about' was not a defined method of user
  has_many :goals   #had issues using has_one - said 'about' was not a defined method of user
  has_many :favorites
end
