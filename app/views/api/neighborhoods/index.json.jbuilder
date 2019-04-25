json.array! @neighborhoods.each do |neighborhood|
  json.id neighborhood.id
  json.name neighborhood.name
  json.attractions neighborhood.attractions
end