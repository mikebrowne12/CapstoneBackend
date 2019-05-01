json.array! @attractions.each do |attraction|
  json.id attraction.id
  json.name attraction.name
  json.neighborhood_id attraction.neighborhood_id
  json.vote attraction.votes
end