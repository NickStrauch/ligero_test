json.array!(@cigars) do |cigar|
  json.extract! cigar, :id, :name, :manufacturer, :price, :description
  json.url cigar_url(cigar, format: :json)
end
