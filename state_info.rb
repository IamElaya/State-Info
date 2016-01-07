@states = {
  MO: 'Missouri',
  WA: 'Washington',
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@cities = {
  MO: ['St. Louis', 'Kansas City'],
  WA: ['Seattle', 'Vancouver'],
  OR: ['Portland', 'Salem'],
  FL: ['Orlando', 'Miami'],
  CA: ['Los Angeles', 'San Francisco'],
  NY: ['Brooklyn', 'Manhattan'],
  MI: ['Detroit', 'Ann Arbor']
}


@taxes = {
  MO: 7.5,
  WA: 6,
  OR: 8,
  FL: 4.3,
  CA: 6.9,
  NY: 7.7,
  MI: 9.5
}

def describe_state(statecode)


  return "#{statecode} is for #{@states[statecode.upcase.to_sym]}. It has 2 major cities: #{@cities[statecode.upcase.to_sym].join(" ,and ")}."

end

def calculate_tax(statecode, num)
  
  total = @taxes[statecode.upcase.to_sym] * num

  return total
end


def find_state_for_city(city)

    @cities.each { |key, value| 
      return key if value.include?(city)
    }
  

end

puts describe_state("CA")
puts calculate_tax("CA", 135)
puts find_state_for_city('Los Angeles')

