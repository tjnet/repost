json.id post.id
json.content post.content
json.created_at l(post.created_at, format: :short)
json.selected false
json.starred current_user.starred?(post)
json.authored post.user == current_user
json.is_reacted post.reactions.exists?(user: current_user)
json.reactions_count post.reactions_count
json.user do
  json.id post.user.id
  json.screen_name post.user.screen_name
  json.name post.user.name
  json.avatar post.user.avatar
end
