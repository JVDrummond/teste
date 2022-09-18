json.extract! request, :id, :requesting_user, :quantity, :created_at, :updated_at
json.url request_url(request, format: :json)
