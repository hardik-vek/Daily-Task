class Product < ApplicationRecord
  # validates :name, presence: { strict: true}
#   validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  # , strict: TokenGenerationException
  validate do |product|
    errors.add :name, :too_plain, message: "is not cool enough"
  end

end
