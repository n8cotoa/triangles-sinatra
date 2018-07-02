class Triangle
  def initialize(length1, length2, length3)
    @l1 = length1
    @l2 = length2
    @l3 = length3
  end

  def triangle?()
    if @l1 + @l2 <= @l3 || @l2 + @l3 <= @l1 || @l3 + @l1 <= @l2
      'not a triangle'
    elsif @l1 + @l2 + @l3 === @l1 * 3
      'Equilateral'
    end
  end

end
