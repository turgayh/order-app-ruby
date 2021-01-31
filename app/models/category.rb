class Category < ApplicationRecord
    validate :check_category_name 

    def check_category_name
        errors.add(:category_name , "is empty!!") if category_name.length() == 0 
    end 
end
