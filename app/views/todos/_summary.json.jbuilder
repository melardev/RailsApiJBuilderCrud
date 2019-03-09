json.extract! todo, :id, :title, :completed, :created_at, :updated_at
=begin
# This will also work
json.id todo.id
json.title todo.title
json.created_at todo.created_at
json.updated_at todo.updated_at
=end