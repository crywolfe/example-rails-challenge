json.array!(@charges) do |charge|
  json.extract! charge, :id, :created, :paid, :amount, :currency, :refunded
  json.url charge_url(charge, format: :json)
end
