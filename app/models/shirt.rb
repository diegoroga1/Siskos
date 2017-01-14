class Shirt < ApplicationRecord
 	belongs_to :product
 	scope :get_id_shirt, -> (size,color,shirt_type) {where("size = :size and color = :color and shirt_type = :shirt_type",:size => size,:color => color,:shirt_type => shirt_type).pluck(:id)}
end
