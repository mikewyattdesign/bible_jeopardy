# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
["Books of the Bible", "Old Testament", "New Testament", "Jesus", "Biblical Geography", "Vocabulary"].each do |category|
    Category.find_or_create_by_name(category)
end

