json.extract! order, :id, :total_price, :currency, :name_surname, :discount_price, :category, :created_at, :updated_at
json.url order_url(order, format: :json)
