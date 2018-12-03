class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  
  def healthy?
    # your code here
    sano = nil
    if @calories > 0 && @calories <= 100
      sano = true
    else 
      sano = false
    end

    sano
  end
  def delicious?
    # your code here
    true
  end
end

class JellyBean < Dessert

  #attr_accessor :favor

  def initialize(flavor)
    # your code here
    @name = "#{flavor} jelly bean"
    @calories = 5
  end
  def delicious?
    tip = @name.split(" ")
    
    tip.each do |x|
      if x == 'licorice'
        return false
      else
        return true
      end
    end
  end
end