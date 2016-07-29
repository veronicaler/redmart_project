json.extract! user, :id, :name, :email, :address, :password, :credit_card_no, :created_at, :updated_at
json.url user_url(user, format: :json)