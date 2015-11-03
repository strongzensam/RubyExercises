samcook = ["bagels","feasant","brains"]
sallyspeak = ["english","chinese","japanese","french","italian"]

if samcook.length >= 10 && sallyspeak >= 5
    puts "Sam and Sally should date"
  else
    puts "Bummer no dating"
  end

checker = 0
sallyspeak.each do |lang|
  if lang == "french"
    checker += 1
  end
end

samcook.each do |food|
  if food == "crepes"
    checker += 1
  end
end

if checker > 0 
  puts "Sam and Sally should get married"
end