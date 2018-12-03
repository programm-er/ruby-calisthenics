module FunWithStrings
  def palindrome?
    # your code here
    val = nil
    let = self.downcase.scan(/\w/)

    if(let == let.reverse)
      val = true
    else
      val = false
    end

    val
  end

  def count_words
    # your code here
    _hash = Hash.new
    self.downcase.scan(/\b\w*\b/) do |x|
      if _hash.has_key?(x)
        _hash[x] += 1
      elsif x == " "

      else
        _hash[x] = 1
      end
    end

    _hash
  end

  def anagram_groups
    # your code 
    arr = Array.new

    if self.empty?
      return arr
    else
      data = self.split(" ")
      data.each do |x|
        t = []
        data.each do |y|
          if x.downcase.split(//).sort == y.downcase.split(//).sort
            t.push(y)            
          end
        end
      end

    arr.push(t)
    return  arr

    end
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
