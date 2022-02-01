class Customer < ApplicationRecord
    validates :name , presence: true, on: :create
    validates :email, presence: true, on: :create, uniqueness: true
    has_many :articles, dependent: :destroy
end
