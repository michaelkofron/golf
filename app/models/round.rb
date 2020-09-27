class Round < ApplicationRecord
    belongs_to :user
    belongs_to :course
    #has_many :holes
    has_many :shots
    has_many :holes, :through => :shots
    has_many :pin_locations, :through => :holes
    has_many :tees, :through => :holes
end