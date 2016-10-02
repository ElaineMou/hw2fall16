class Dessert

  def initialize(name, calories)
    if name !~ /^\s*$/
      @name = name
    else
      raise ArgumentError.new("Invalid Name")
    end
    
    if calories >= 0
      @calories = calories
    else
      raise ArgumentError.new("Invalid Calories")
    end
  end
  
  def name
    @name
  end
  
  def name=(newName)
    @name = newName
  end
  
  def calories
    @calories
  end
  
  def calories=(newCalories)
    @calories = newCalories
  end
  
  def healthy?
    return @calories < 200
  end
  
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name,calories)
    @flavor = flavor
  end
  
  def delicious?
    return @flavor.downcase != "black licorice"
  end
end
