class ProductSkill < ApplicationRecord
  belongs_to :product
  belongs_to :skill
end
