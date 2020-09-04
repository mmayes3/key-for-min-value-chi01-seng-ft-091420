
def key_for_min_value(name_hash)
  small = []
  if name_hash == {}
    return nil
  end
  name_hash.each do |key, value|
    small.push(value)
  end
  num = small[0]
  name_hash.each do |key, value|
    if value < num
      num = value
    end
  end
  name_hash.each do |key, value|
    if name_hash[key] == num && num != nil
      return key
    end
  end

end
puts key_for_min_value(ikea = {:chair => 1000, :table => 850, :mattress => 450})