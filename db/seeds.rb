# Seed 4 customers
customer_1 = Customer.create(first_name: "Johny", last_name: "Flow")
customer_2 = Customer.create(first_name: "Raj", last_name: "Jamnis")
customer_3 = Customer.create(first_name: "Andrew", last_name: "Chung")
customer_4 = Customer.create(first_name: "Mike", last_name: "Smith")

# 10 Should be successful transactions:
#   - 5 Should be linked to Customer 1
#   - 3 Should be linked to Customer 2
#   - 1 Should be linked to Customer 3
#   - 1 Should be linked to Customer 4
transaction_1 = Charge.create(created: 1234567891, paid: true,  amount:1001, currency: "usd", refunded: false, customer_id: 1)
transaction_2 = Charge.create(created: 1234567892, paid: true,  amount:1002, currency: "usd", refunded: false, customer_id: 1)
transaction_3 = Charge.create(created: 1234567893, paid: true,  amount:1003, currency: "usd", refunded: false, customer_id: 1)
transaction_4 = Charge.create(created: 1234567894, paid: true,  amount:1004, currency: "usd", refunded: false, customer_id: 1)
transaction_5 = Charge.create(created: 1234567895, paid: true,  amount:1005, currency: "usd", refunded: false, customer_id: 1)
transaction_6 = Charge.create(created: 1234567896, paid: true,  amount:1006, currency: "usd", refunded: false, customer_id: 2)
transaction_7 = Charge.create(created: 1234567897, paid: true,  amount:1007, currency: "usd", refunded: false, customer_id: 2)
transaction_8 = Charge.create(created: 1234567898, paid: true,  amount:1008, currency: "usd", refunded: false, customer_id: 2)
transaction_9 = Charge.create(created: 1234567899, paid: true,  amount:1009, currency: "usd", refunded: false, customer_id: 3)
transaction_10 = Charge.create(created: 1234567890, paid: true,  amount:1010, currency: "usd", refunded: false, customer_id: 4)


# 5 Should be transactions that failed:
#   - 3 Should be linked to Customer 3
#   - 2 Should be linked to Customer 4
transaction_1_5 = Charge.create(created: 1234567851, paid: false, amount: 1051, currency: "usd", refunded: false, customer_id: 3)
transaction_2_5 = Charge.create(created: 1234567852, paid: false, amount: 1052, currency: "usd", refunded: false, customer_id: 3)
transaction_3_5 = Charge.create(created: 1234567853, paid: false, amount: 1053, currency: "usd", refunded: false, customer_id: 3)
transaction_4_5 = Charge.create(created: 1234567854, paid: false, amount: 1054, currency: "usd", refunded: false, customer_id: 4)
transaction_5_5 = Charge.create(created: 1234567855, paid: false, amount: 1055, currency: "usd", refunded: false, customer_id: 4)


# 5 should be disputed:
#   - 3 should be linked to Customer 1
#   - 2 should be linked to customer 2
transaction_1_5a = Charge.create(created: 1234567861, paid: false, amount: 1061, currency: "usd", refunded: false, customer_id: 1)
transaction_2_5a = Charge.create(created: 1234567862, paid: false, amount: 1062, currency: "usd", refunded: false, customer_id: 1)
transaction_3_5a = Charge.create(created: 1234567863, paid: false, amount: 1063, currency: "usd", refunded: false, customer_id: 1)
transaction_4_5a = Charge.create(created: 1234567864, paid: false, amount: 1064, currency: "usd", refunded: false, customer_id: 2)
transaction_5_5a = Charge.create(created: 1234567865, paid: false, amount: 1065, currency: "usd", refunded: false, customer_id: 2)
