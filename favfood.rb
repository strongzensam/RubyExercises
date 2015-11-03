food = []
5.times do 
  fav = gets.chomp
  food << fav
end
num = 1
food.each do |favorite|
  puts "#{num}. #{favorite}"
  num += 1
end