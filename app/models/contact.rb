class Contact < ActiveRecord::Base

# validates :fname, :lname, :date, presence: { true, 
# 	message:"Please enter the required fields"}

end

# >> p = Person.new
# #=> #<Person id: nil, fname: nil, lname: nil, , date: nil>
# >> p.errors
# #=> {}
#  
# >> p.valid?
# #=> false
# >> p.errors
# #=> {name:["can't be blank"]}
#  
# >> p = Person.create
# #=> #<Person id: nil, name: nil>
# >> p.errors
# #=> {name:["can't be blank"]}
#  
# >> p.save
# #=> false
#  
# >> p.save!
# #=> ActiveRecord::RecordInvalid: Validation failed: Name can't be blank
#  
# >> Person.create!
# #=> ActiveRecord::RecordInvalid: Validation failed: Name can't be blank