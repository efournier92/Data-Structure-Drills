## Data Structure Drills

This was a set of drills I undertook in order to improve my ability to work with arrays and hashes. The program outputs results for each block to the command line.

The drills are divided into 2 sections

### Array Drills

**Results are based on this data:**
```ruby
transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]
```
**Results display the following:**
* Value of the first transaction
* Value of the second transaction
* Value of the fourth transaction
* Value of the last transaction
* Value of the second from last transaction
* Value of the 5th from last transaction
* Value of the transaction with index 5
* Total number of transactions
* Total number of positive transactions
* Total number of negative transactions
* The largest withdrawal
* The largest deposit
* The smallest withdrawal
* The smallest deposit
* Total value of all the transactions
* Value of balance after last transaction, if initial balance was $239,900

### Hash Drills

**Results are based on this data:**
```ruby
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
```

**Code blocks do the following:**
* Counts total records
* Displays list of all artists
* List of all albums
* Deletes `Eminem` key-value pair from the list
* Adds a different musician and best album
* Changes the `Nirvana` album to a different one
* Checks if `Nirvana` is included in `best_records`
* Checks if `Soundgarden` is included in `best_records`
* Checks if `Soundgarden` is not in `best_records` then adds it if not
* Displays key-value pairs with a key less than or equal to 6 characters
* Displays key-value pairs with a value greater than 10 characters
