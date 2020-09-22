class HoleScore < ApplicationRecord
    belongs_to :hole
    belongs_to :user
end