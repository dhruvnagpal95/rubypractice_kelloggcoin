# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]


  

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
index = 0
names = Array.new
loop do
if index == blockchain.length
  break
end
names.push(blockchain[index]["to_user"])
index = index+1
end

# puts names

names_dedup = names.uniq
# puts names_dedup

index2 = 0
loop do
if index2 == names_dedup.length
  break
end
index3 = 0
live_sum = 0
loop do 
  if index3 == blockchain.length
    break
  end
  if blockchain[index3]["to_user"] == names_dedup[index2]
    live_sum = live_sum + blockchain[index3]["amount"].to_i
  end
  if blockchain[index3]["from_user"] == names_dedup[index2]
    live_sum = live_sum - blockchain[index3]["amount"].to_i
  end
  index3 = index3+1
end
puts "#{names_dedup[index2].capitalize}"+"'s"+ " KelloggCoin balance is "+"#{live_sum}"
index2 = index2+1
end