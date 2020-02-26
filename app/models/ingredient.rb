class Ingredient < ApplicationRecord
    has_many :allergies
    has_many :users, through: :allergy
    has_many :

end
