json.array!(@sweaters) do |sweater|
  json.extract! sweater, :id, :full_pattern, :pattern_repeat, :current_size, :decrease_row, :increase_row
  json.url sweater_url(sweater, format: :json)
end
