class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    count = 0
    i = 0
    while i <= str.length
      if str[i] && str[i].match(/^[[:alpha:]]$/)
        count += 1
      elsif count > 4 && str[i-count].upcase == str[i-count]
        str[(i-count)...i] = "Marklar"
        i = i - count + 7
        count = 0
      elsif count > 4 && str[i-count].upcase != str[i-count]
        str[(i-count)...i] = "marklar"
        i = i - count + 7
        count = 0
      else
        count = 0
      end
      i += 1
    end
    return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 9 terms is (1, 1, 2, 3, 5, 8, 13, 21, 34),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    result = 0
    return 0 if nth == 1
    return 0 if nth == 2
    n_1 = 1
    n_2 = 1
    i = 3
    while i <= nth
      temp = n_2
      n_2 = temp + n_1
      n_1 = temp
      result += n_2 if i % 3 == 0
      i += 1
    end
    result
  end

end
