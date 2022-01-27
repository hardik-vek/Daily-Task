class Cofee < ApplicationRecord
    validates :size, inclusion: { in: %w(small medium large), message: "%{value} is not a valid size" }, allow_nil: true
    # validates :size, exclusion: { in: %w(small medium large), message: "%{value} is not a valid size" }
end