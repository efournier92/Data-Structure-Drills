SEP = '*********************************************************'

transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900,\
  43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Sets Transaction Type
def transaction_type_function(num)
  if num < 0
    transaction_type = "Withdrawal of"
  else
    transaction_type = "Deposit of"
  end
end

# Formats long integers with commas
def add_commas_function(num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

# Prints value of first transaction in array
transaction = transactions[0]
puts "#{SEP}\n1st Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Prints value of second transaction in array
transaction = transactions[1]
puts "2nd Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Prints value of fourth transaction in array
transaction = transactions[3]
puts "4th Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}\n#{SEP}"

# Prints value of last transaction in array
transaction = transactions.last
puts "Last Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Prints value of second-from-last transaction in array
transaction = transactions[-2]
puts "2nd-from-Last Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Prints value of 5th from last transaction in array
transaction = transactions[-5]
puts "5th-from-Last Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Prints value of transaction with index of 5
transaction = transactions[5]
puts "Transaction [5] - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}\n#{SEP}"

# Prints total number of transactions
total_transactions = transactions.count
puts "Total Transactions - #{total_transactions}"

# Prints total number of postive transactions
positive_transactions = 0
transactions.each do |transact|
  if transact > 0
    positive_transactions += 1
  end
end
puts "Total Positive Transactions - #{positive_transactions}"

# Prints total number of negative transactions
negative_transactions = 0
transactions.each do |transact|
  if transact < 0
    negative_transactions += 1
  end
end
puts "Total Negative Transactions - #{negative_transactions}\n#{SEP}"

# Outputs largest withdrawal
largest_withdrawal = 0
transactions.each do |transact|
  if transact < 0 && transact < largest_withdrawal
    largest_withdrawal = transact
  end
end
puts "Largest Withdrawal - (#{largest_withdrawal}) - \
Withdrawal of $#{add_commas_function(largest_withdrawal.abs)}"

# Outputs largest deposit
largest_deposit = 0
transactions.each do |transact|
  if transact > 0 && transact > largest_deposit
    largest_deposit = transact
  end
end
puts "Largest Deposit - (#{largest_deposit}) - \
Deposit of $#{add_commas_function(largest_deposit.abs)}"

# Outputs smallest withdrawal
smallest_withdrawal = largest_withdrawal
transactions.each do |transact|
  if transact < 0 && transact > smallest_withdrawal
    smallest_withdrawal = transact
  end
end
puts "Smallest Withdrawal - (#{smallest_withdrawal}) - \
Withdrawal of $#{add_commas_function(smallest_withdrawal.abs)}"

# Outputs smallest deposit
smallest_deposit = largest_deposit
transactions.each do |transact|
  if transact > 0 && transact < smallest_deposit
    smallest_deposit = transact
  end
end
puts "Smallest Deposit - (#{smallest_deposit}) - \
Deposit of $#{add_commas_function(smallest_deposit.abs)}\n#{SEP}"

# Outputs total value of all the transactions
total_postitve = 0
total_negative = 0
total_value = 0
transactions.each do |transact|
  total_value += transact
  if transaction > 0
    total_postitve += transact
  else
    total_negative += transact
  end
end
puts "Total Value of All Transactions - $#{add_commas_function(total_value)}\
 - (+#{add_commas_function(total_postitve.abs)})\
 (-#{add_commas_function(total_negative.abs)})"

# Outputs balance after last transaction if initial balance is $239,900
balance = 239900 + total_value
puts "Balance After Last Transaction - $#{add_commas_function(balance)}\n#{SEP}"

###############################################################################
best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Outputs number of records in `best_records`
number_of_records = best_records.count
puts "Total Records In 'Best Records' Hash - #{number_of_records}\n#{SEP}"

# Lists all artists in hash
puts "ALL ARTISTS:"
best_records.each do |artist, album|
  puts "* #{artist}"
end
puts SEP

# Lists all albums in hash
puts "ALL ALBUMS:"
best_records.each do |artist, album|
  puts "* #{album}"
end
puts SEP

# Deletes `Eminem` key-value pair from hash
best_records.each do |artist, album|
  if artist == 'Eminem'
      best_records.delete(artist)
  end
end

# Adds my favorite musician and their best album to the list
best_records["Bob Dylan"] = "Blonde on Blonde"

# Changes Nirvana's album to their actual best one
best_records["Nirvana"] = "Unplugged In New York"

# Checks if Nirvana is included in `best_records`
if best_records.include?("Nirvana")
  puts "Nirvana IS Included in the Hash"
else
  puts "Nirvana IS NOT Included in the Hash"
end

# Checks if `Soundgarden` is included in `best_records`
if best_records.include?("Soundgarden")
  puts "Soundgarden IS Included in the Hash"
elsif
  puts "Soundgarden IS NOT Included in the Hash"
end

# Adds `Soundgarden` key-value pair it's not in hash
unless best_records.include?("Soundgarden")
  best_records["Soundgarden"] = "Superunknown"
end

# Prints hash with revisions
puts "#{SEP}\nHASH WITH REVISIONS:"
best_records.each do |artist, album|
  puts "* #{artist}, #{album}"
end
puts SEP

# Lists keys-value pair with keys less than or equal to 6 characters
puts "ARTISTS WITH NAMES LESS THAN OR EQUAL TO 6 CHARACTERS:"
best_records.each do |artist, album|
  if artist.length <= 6
    puts "* #{artist} |#{album}|"
  end
end
puts SEP

# Lists key-value pairs with values longer than 10
puts "ALBUMS WITH A NAME LONGER THAN 10 CHARACTERS:"
best_records.each do |artist, album|
  if album.length > 10
    puts "* #{album} |#{artist}|"
  end
end
puts SEP
