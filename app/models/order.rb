class Order < ApplicationRecord
    validates :total_price, presence: true,numericality: { greater_than: 0 }
    validates :discount_price, numericality: { less_than: 10000 }
    validate :check_email_and_password

    def check_email_and_password
        errors.add(:discount_price, "discount can't be greater than total price") if discount_price > total_price
    end

end
