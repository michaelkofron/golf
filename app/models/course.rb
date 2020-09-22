class Course < ApplicationRecord
    has_many :holes
    has_many :rounds
    has_many :tees, :through => :holes
    has_many :pin_locations, :through => :holes
    has_many :users
end