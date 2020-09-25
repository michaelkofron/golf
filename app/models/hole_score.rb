class HoleScore < ApplicationRecord
    belongs_to :hole
    has_one :course, :through => :hole
    belongs_to :user
end