# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer_1 = Customer.create("Johny", "Flow")
customer_2 = Customer.create("Raj", "Jamnis")
customer_3 = Customer.create("Andrew", "Chung")
customer_4 = Customer.create("Mike", "Smith")


# 10 Should be successful transactions:
#   - 5 Should be linked to Customer 1
#   - 3 Should be linked to Customer 2
#   - 1 Should be linked to Customer 3
#   - 1 Should be linked to Customer 4
#
# 5 Should be transactions that failed:
#   - 3 Should be linked to Customer 3
#   - 2 Should be linked to Customer 4
#
# 5 should be disputed:
#   - 3 should be linked to Customer 1
#   - 2 should be linked to customer 2
