json.array!(@businesses) do |business|
  json.extract! business, :id, :name, :address, :citystatezip, :phone, :website
  json.url business_url(business, format: :json)
end
