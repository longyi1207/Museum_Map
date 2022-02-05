class Map < ApplicationRecord
  belongs_to :admins
  has_many :exhibits
end
