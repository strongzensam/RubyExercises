def remove_duplicates(string)
  # split_string = []
  split_string = string.split('')
  split_string.each_with_index do |letter, index|
    if split_string[index] == letter
      split_string.delete_at(index)
    end
  end
  split_string
end
print remove_duplicates("google")