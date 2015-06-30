json.array!(@exploatations) do |exploatation|
  json.extract! exploatation, :id, :name, :description, :location, :barcode, :quantity
  json.url exploatation_url(exploatation, format: :json)
end
