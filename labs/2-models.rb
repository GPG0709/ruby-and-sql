# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Max"
new_salesperson["last_name"] = "Garcia"
new_salesperson["email"] = "maxxx@gmail.com"
new_salesperson.save

new_salesperson2 = Salesperson.new
new_salesperson2["first_name"] = "Nicolas"
new_salesperson2["last_name"] = "Arellano"
new_salesperson2["email"] = "nicolasio@gmail.com"
new_salesperson2.save

new_salesperson3 = Salesperson.new
new_salesperson3["first_name"] = "Guillermo"
new_salesperson3["last_name"] = "Puga"
new_salesperson3["email"] = "guillernopuga@gmail.com"
new_salesperson3.save

# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} Salespeople in the Company."
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
nicoarellano = Salesperson.find_by({"first_name" => "Nicolas", "last_name" => "Arellano"})
nicoarellano["email"] = "nicoarellano@gmail.com"
nicoarellano.save
puts nicoarellano["email"]

maxgarcia = Salesperson.find_by({"first_name" => "Max", "last_name" => "Garcia"})
guillermopuga = Salesperson.find_by({"first_name" => "Guillermo", "last_name" => "Puga"})

# CHALLENGE:
# 5. write code to display each salesperson's full name

for salesperson in Salesperson.all
    puts "#{salesperson["first_name"]} #{salesperson["last_name"]}"
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
