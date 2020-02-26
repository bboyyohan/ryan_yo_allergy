class User < ApplicationRecord
    has_many :recipes
    has_many :ingredients, through: :allergy
    has_many :allergies
end
