transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900,\
  43_000, -30_000, 15_000, 62_000, -50_000, 42_000]
sep = "------------------------------------------------------------------"
# If functions are off limits at this stage in the game,
# then I beg your forgiveness

def transaction_type_function(num)
  if num < 0
    transaction_type = "Withdrawal of"
  else
    transaction_type = "Deposit of"
  end
end

# Format long integers with commas function
def add_commas_function(num)
  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

# Print value of first transaction in array
transaction = transactions[0]
puts "#{sep}\n1st Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Print value of second transaction in array
transaction = transactions[1]
puts "2nd Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Print value of fourth transaction in array
transaction = transactions[3]
puts "4th Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}\n#{sep}"

# Print value of last transaction in array
transaction = transactions.last
puts "Last Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Print value of second-from-last transaction in array
transaction = transactions[-2]
puts "2nd-from-Last Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Print value of 5th from last transaction in array
transaction = transactions[-5]
puts "5th-from-Last Transaction - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}"

# Print value of transaction with index of 5
transaction = transactions[5]
puts "Transaction [5] - (#{transaction}) - \
#{transaction_type_function(transaction)} \
$#{add_commas_function(transaction.abs)}\n#{sep}"

# Print total number of transactions
total_transactions = transactions.count
puts "Total Transactions - #{total_transactions}"

# Print total number of postive transactions
positive_transactions = 0
transactions.each do |transaction|
  if transaction > 0
    positive_transactions += 1
  end
end
puts "Total Positive Transactions - #{positive_transactions}"

# Print total number of negative transactions
negative_transactions = 0
transactions.each do |transaction|
  if transaction < 0
    negative_transactions += 1
  end
end
puts "Total Negative Transactions - #{negative_transactions}\n#{sep}"

# Output largest withdrawal
largest_withdrawal = 0
transactions.each do |transaction|
  if transaction < 0 && transaction < largest_withdrawal
    largest_withdrawal = transaction
  end
end
puts "Largest Withdrawal - (#{largest_withdrawal}) - \
Withdrawal of $#{add_commas_function(largest_withdrawal.abs)}"

# Output largest deposit
largest_deposit = 0
transactions.each do |transaction|
  if transaction > 0 && transaction > largest_deposit
    largest_deposit = transaction
  end
end
puts "Largest Deposit - (#{largest_deposit}) - \
Deposit of $#{add_commas_function(largest_deposit.abs)}"

# Output smallest withdrawal
smallest_withdrawal = largest_withdrawal
transactions.each do |transaction|
  if transaction < 0 && transaction > smallest_withdrawal
    smallest_withdrawal = transaction
  end
end
puts "Smallest Withdrawal - (#{smallest_withdrawal}) - \
Withdrawal of $#{add_commas_function(smallest_withdrawal.abs)}"

# Output smallest deposit
smallest_deposit = largest_deposit
transactions.each do |transaction|
  if transaction > 0 && transaction < smallest_deposit
    smallest_deposit = transaction
  end
end
puts "Smallest Deposit - (#{smallest_deposit}) - \
Deposit of $#{add_commas_function(smallest_deposit.abs)}\n#{sep}"

# Output total value of all the transactions
total_postitve = 0
total_negative = 0
total_value = 0
transactions.each do |transaction|
  total_value += transaction
  if transaction > 0
    total_postitve += transaction
  else
    total_negative += transaction
  end
end
puts "Total Value of All Transactions - $#{add_commas_function(total_value)}\
 - (+#{add_commas_function(total_postitve.abs)})\
 (-#{add_commas_function(total_negative.abs)})"

# Output balance after his last transaction
# If initial balance = $239,900
balance = 239900 + total_value
puts "Balance After Last Transaction - $#{add_commas_function(balance)}\n#{sep}"

################
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

# Output number of records in `best_records`
number_of_records = best_records.count
puts "Total Records In 'Best Records' Hash - #{number_of_records}\n#{sep}"

# List all artists in hash
puts "ALL ARTISTS:"
best_records.each do |artist, album|
  puts "* #{artist}"
end
puts sep

# List all albums in hash
puts "ALL ALBUMS:"
best_records.each do |artist, album|
  puts "* #{album}"
end
puts sep

# Delete `Eminem` key-value pair from hash
best_records.each do |artist, album|
  if artist == 'Eminem'
      best_records.delete(artist)
  end
end

# Add my favorite musician and their best album to the list
best_records["Bob Dylan"] = "Blonde on Blonde"

# Change Nirvana's album to their actual best one
best_records["Nirvana"] = "Unplugged In New York"

# Check if Nirvana is included in `best_records`
if best_records.include?("Nirvana")
  puts "Nirvana IS Included in the Hash"
else
  puts "Nirvana IS NOT Included in the Hash"
end

# Check if `Soundgarden` is included in `best_records`
if best_records.include?("Soundgarden")
  puts "Soundgarden IS Included in the Hash"
elsif
  puts "Soundgarden IS NOT Included in the Hash"
end

# If `Soundgarden` not in hash
# then add band key-value pair
unless best_records.include?("Soundgarden")
  best_records["Soundgarden"] = "Superunknown"
end

# Print hash with revisions
puts "#{sep}\nHASH WITH REVISIONS:"
best_records.each do |artist, album|
  puts "* #{artist}, #{album}"
end
puts sep

# List keys-value pair with keys less than or equal to 6 characters
puts "ARTISTS WITH NAMES LESS THAN OR EQUAL TO 6 CHARACTERS:"
best_records.each do |artist, album|
  if artist.length <= 6
    puts "* #{artist} |#{album}|"
  end
end
puts sep

# List key-value pairs with values longer than 10
puts "ALBUMS WITH A NAME LONGER THAN 10 CHARACTERS:"
best_records.each do |artist, album|
  if album.length > 10
    puts "* #{album} |#{artist}|"
  end
end
puts sep
