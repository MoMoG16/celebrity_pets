json.array!(@custodies) do |custody|
  json.extract! custody, :id
  json.url custody_url(custody, format: :json)
end
