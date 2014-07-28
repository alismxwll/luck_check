def luck_check(numbers)
  if numbers.class != Fixnum
    "Please enter a valid number"
  else
    numbers = numbers.to_s.split("")
    new_array = []

    numbers.each do |i|
     new_array << i.to_i
    end

      if new_array.length.odd?
        new_array.delete_at(new_array.length/2)
      end

      first_half = new_array[0..((new_array.length/2) - 1)].inject(:+)
      second_half = new_array[(new_array.length/2)..-1].inject(:+)


    if first_half == second_half
      "Lucky"
    else
      "Not Lucky"
    end
  end
end
luck_check(33924)
puts luck_check(33924)
