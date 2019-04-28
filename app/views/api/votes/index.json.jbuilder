json.array! @votes.each do |vote|
  json.id vote.id
  json.user_id vote.user_id
  json.attraction_id vote.attraction_id
  json.value vote.value
end