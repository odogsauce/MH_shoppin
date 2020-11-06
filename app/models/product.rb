class Product < ApplicationRecord
    validates :title, :category, :description, :quantity, :size, :photo, presence: true
    monetize :price_cents
end
