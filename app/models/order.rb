class Order < ApplicationRecord
    validates :total_price, presence: true,numericality: { greater_than: 0 }
    validates :discount_price, numericality: { less_than: 10000 }
    validate :check_total_and_discount_price
    validate :check_name_surname 
    after_initialize :init

    def init
      self.discount_price  ||= 0.0
      self.total_price ||= 0.0
      self.name_surname ||= ""
    end

    def check_total_and_discount_price
        errors.add(:discount_price , " can't be greater than total price") if discount_price != nil && total_price != nil && discount_price > total_price 
    end

    def check_name_surname
        errors.add(:name_surname , "at least two word!!") if name_surname.split.length() < 2
    end 

end
