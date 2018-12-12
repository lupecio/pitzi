class Order < ApplicationRecord
    validates :price, presence: { message: "O campo preço deve ser preenchido." }
    validates :imei, presence: { message: "O campo IMEI deve ser preenchido." }
    validates :model, presence: { message: "O campo modelo deve ser preenchido." }

    belongs_to :user, inverse_of: :orders
end
