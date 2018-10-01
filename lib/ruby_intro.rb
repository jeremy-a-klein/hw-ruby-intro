# When done, submit this entire file.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject 0, :+
end


def max_2_sum(array)
  length = array.length
  return 0 if length == 0

  return array[0] if length == 1

  if array[0] > array[1] 
    max_1 = array[0]
    max_2 = array[1]
  else

    max_1 = array[1]
    max_2 = array[0]
  end

  while length > 2
    length -= 1
    x = array[length]

    if max_2 < x 

      if max_1 < x
        max_2 = max_1;
        max_1 = x;
      else

        max_2 = x;
      end
    end
    
  end

  return max_1+max_2

end


def sum_to_n?(array, n)

  length = array.length

  return false if length <= 1

  for index_1 in 0..length-1

    for index_2 in index_1+1..length-1

      return true if n == array[index_1] + array[index_2]

    end

  end

  return false

end


# Part 2

def hello(name)

  "Hello, " + name

end


def starts_with_consonant? s 

   return false if s.length == 0

   first = s[0]

   return false if first < 'A' || (first > 'Z' && first < 'a') || first > 'z'

   arrayc = ["a","e","i","o","u","A","E","I","O","U"]

   return false if arrayc.index(first) != nil

   return true

end


def binary_multiple_of_4? s

  length = s.length  

  return false if length == 0

  return false if s[length-1] != '0'

  return false if length > 1 && s[length-2] != '0'

  for index in 0..length-3 do

    return false if s[index] != '0' && s[index] != '1' 

  end

  return true

end

# Part 3