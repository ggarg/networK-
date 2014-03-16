
User.destroy_all
["Jeff", "Brian"].each do |name|
  u = User.new
  u.first_name = name
  u.password = "hockey"
  u.save
end

puts "There are now #{User.count} users in the database."

contact_list = [ { :fname => "Gayatri",
                   :lname => "Garg",
                   :email => "gayatrigarg@hotmail.com",
                   :number => "8479043094",
                   :company => "Kellogg",
                   :date => "07/02/2014",
                   :notes => "shes damn fine"
                    }]

Contact.destroy_all
contact_list.each do |contact_info|
a = Contact.new
a.fname = contact_info[:fname]
a.lname = contact_info[:lname]
a.email = contact_info [:email]
a.number = contact_info [:number]
a.company = contact_info [:company]
a.date = contact_info [:date]
a.notes = contact_info [:notes]
a.save
end

puts "There are now #{Contact.count} contacts."