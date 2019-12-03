class Rolepermission < ApplicationRecord
    belongs_to :role
    belongs_to :screen
end
