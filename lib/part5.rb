class CartesianProduct
  include Enumerable

  def initialize(a,b)
    @a = a
    @b = b
  end
  
  def each
    @a.each do |i|
      @b.each do |j| 
        yield [i, j] 
      end
    end
  end

end
