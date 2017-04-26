require 'Virtus'

class User
  include Virtus.model

  attribute :name, String
  attribute :age, Integer
  attribute :birthday, DateTime
end

user = User.new(:name => 'Piotr', :age => 31)
user.attributes # => { :name => "Piotr", :age => 31, :birthday => nil }

puts user.name # => "Piotr"
puts user.age

user.age = '31' # => 31
puts user.age.class # => Fixnum

user.birthday = 'November 18th, 1983' # => #<DateTime: 1983-11-18T00:00:00+00:00 (4891313/2,0/1,2299161)>

# mass-assignment
user.attributes = { :name => 'Jane', :age => 21 }
puts user.name # => "Jane"
puts user.age  # => 21