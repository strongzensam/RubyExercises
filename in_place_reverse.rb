def in_place_reverse(string)
  string = string.split('').reverse.join
  return string
end
print in_place_reverse("face")
print in_place_reverse("glum")