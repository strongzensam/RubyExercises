bank_info = []

good_email = false
count = 0
while count < 5
  bank_hash = {}
  puts "Please enter first name"
  first = gets.chomp
  puts "Please enter last name"
  last = gets.chomp
  puts "Please enter email"
  email = gets.chomp
  good_email = false
  while good_email == false
    at = 0
    com = 0
    last4 = email[-4..-1]
      if email.include?"@"
        at += 1
        if last4.include?".com"
          com += 1
        end 
      end
      puts (at + com)
      if (at + com) == 2
        good_email = true
      else 
        puts "Error please make sure you have @ and .com in your email"
        email = gets.chomp
      end
  end


  bank_hash[:first] = first
  bank_hash[:last] = last
  bank_hash[:email] = email
  bank_hash[:acct_num] = rand(1000000000..9999999999)
  bank_info << bank_hash
  count += 1
end

bank_info.each do |info|
  info.each do |key, value|

    upper_key = key.upcase
    puts "#{upper_key}: #{value} "
  end
  puts ""
end
puts "Would you like the account information?"
answer = gets.chomp
if answer.downcase == ("y" || "yes")
  puts "Please enter account number"
  account_query = gets.chomp.to_i
  bank_info.each do |acct|
      if acct[:acct_num] == account_query
      puts "First #{acct[:first]} "
      puts "Last #{acct[:last]} "
      end
  end
end
