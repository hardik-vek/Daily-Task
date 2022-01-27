class Customer < ApplicationRecord
    validates :name , presence: true, on: :update
    validates :email, presence: true, on: :create, uniqueness: true
end
