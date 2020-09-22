class PinLocation < ApplicationRecord
    belongs_to :hole
    has_one :course, :through => :hole
end