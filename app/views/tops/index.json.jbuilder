json.array!(@tops) do |top|
  json.extract! top, :id, :current_size, :gauge, :stitch, :number_of_sts, :pattern_repeat, :instructions
  json.url top_url(top, format: :json)
end
