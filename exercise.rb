class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    return str
      .sub(".", " .")
      .sub("?", " ?")
      .split(" ")
      .map{ |s| s.length > 4 ? s[0] == s[0].upcase ? "Marklar" : "marklar" : s}
      .join(" ")
      .sub(" .", ".")
      .sub(" ?", "?")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    sum = 0

    while nth > 0
      fibn = self.fib(nth) 
      sum = sum + (fibn % 2 == 0 ? fibn : 0)
      nth -= 1
    end

    return sum
  end

  def self.fib(terms = 0)
    if terms < 1
      return 0
    end

    if terms == 1
      return 1
    end

    count = 0
    sum = 0
    a = 0
    b = 1
    
    while count < terms
      sum = a+b
      a = b
      b = sum
      count += 1
    end

    return a
  end
end
