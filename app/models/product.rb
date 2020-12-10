class Product < ApplicationRecord
    validates :title, :category, :description, :quantity, :size, presence: true

    monetize :price_cents

    has_one_attached :photo
end
