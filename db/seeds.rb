# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def random_date_between(first, second)
  number_of_days = (first - second).abs
  [first, second].min + rand(number_of_days)
end

todos_count = Todo.count
todos_to_seed = 47
todos_to_seed -= todos_count
if todos_to_seed > 0
  puts "[+] Seeding #{todos_to_seed} Todos"
  todos_to_seed.times do |index|
    todo=Todo.new(title: (Faker::Lorem.words(Faker::Number.between(2, 5))).join(" "),
                description: (Faker::Lorem.sentences(Faker::Number.between(from = 1, to = 10))).join("\n"),
                completed: Faker::Boolean.boolean(0.4))
    todo.created_at = random_date_between Date.civil(2016,1,1), Date.civil
    todo.save!
  end
end