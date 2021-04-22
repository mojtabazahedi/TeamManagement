class Member < ApplicationRecord
    has_many :teams
    has_and_belongs_to_many :positions
end
