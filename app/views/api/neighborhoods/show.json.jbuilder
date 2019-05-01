
json.id @neighborhood.id
json.user @user
json.name @neighborhood.name
json.attractions @neighborhood.attractions.each do |attraction|
  json.id attraction.id
  json.name attraction.name
  json.votes attraction.votes.each do |vote|
    json.id vote.id
    json.value vote.value
    json.is_local @neighborhood.id == vote.user.neighborhood_id
    json.non_local @neighborhood.id != vote.user.neighborhood_id
    json.neighborhood_id @neighborhood.id
    json.user_neighborhood_id vote.user.neighborhood_id
  end
end