class HoleScore < ApplicationRecord
    belongs_to :hole
    belongs_to :round
    has_one :course, :through => :hole
    belongs_to :user
end