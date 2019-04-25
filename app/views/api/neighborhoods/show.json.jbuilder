
json.id @neighborhood.id
json.user @user
json.name @neighborhood.name
json.attractions @neighborhood.attractions.each do |attraction|
  json.id attraction.id
  json.name attraction.name
  json.votes attraction.votes
end