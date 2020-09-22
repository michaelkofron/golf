class Hole < ApplicationRecord
    has_many :pin_locations
    has_many :tees
    has_many :hole_scores
    has_many :shots
    belongs_to :course
    belongs_to :round
end