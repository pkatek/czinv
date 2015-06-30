json.array!(@hardwares) do |hardware|
  json.extract! hardware, :id, :name, :description, :sn, :location, :barcode
  json.url hardware_url(hardware, format: :json)
end
