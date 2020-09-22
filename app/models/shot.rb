class Shot < ApplicationRecord
    belongs_to :user
    belongs_to :hole
    belongs_to :round
    has_one :course, :through => :round
end