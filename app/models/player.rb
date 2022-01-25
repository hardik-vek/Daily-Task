class Player < ApplicationRecord
validates :points, numericality: true
# numericality: {only_integer: true}
end
