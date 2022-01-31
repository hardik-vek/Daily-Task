class Person < ApplicationRecord
  validates :name, presence: true, length: { mimimum: 2 }
  validates :terms_of_service, acceptance: { message: "must be abided" }
  validates :email, confirmation: true, presence: true, uniqueness: true
  validates :email_confirmation, presence: true
  validates :bio, length: { maximum: 1000,
                            too_long: "%{count} characters is the maximum allowed" }
end
