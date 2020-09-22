class User < ApplicationRecord
    has_many :rounds
    has_many :courses, :through => :rounds
    has_many :holes, :through => :rounds
    has_many :shots
    has_many :hole_scores
end