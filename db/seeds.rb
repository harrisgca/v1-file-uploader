User.destroy_all
Album.destroy_all

1.upto(3) do |i|
  User.create(username:"hacker#{i}")
end

user1 = User.first
user2 = User.second
user3 = User.third

1.upto(2) do |i|
  user1.albums.create(title:"Album #{i}")
end

1.upto(2) do |i|
  user2.albums.create(title:"Album #{i}")
end

1.upto(3) do |i|
  user2.albums.create(title:"Album #{i}")
end
