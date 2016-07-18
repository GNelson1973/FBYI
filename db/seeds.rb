# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
frank = User.create( email: 'frank@ex.com', password: 'abcd1234' )
alice = User.create( email: 'alice@ex.com', password: 'abcd1234' )
thea = User.create( email: 'thea@ex.com', password: 'abcd1234' )

Post.delete_all
Post.create( content: "This one is great!" , user: frank )
Post.create( content: "Look at me" , user: alice )
Post.create( content: "Summer is there" , user: thea )
