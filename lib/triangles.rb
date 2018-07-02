class Triangle
  def initialize(length1, length2, length3)
    @l1 = length1.to_i
    @l2 = length2.to_i
    @l3 = length3.to_i
  end

  def triangle?()
    if [@l1, @l2, @l3].uniq.length == 2
      "Isosceles"
    elsif [@l1, @l2, @l3].uniq.length == 1
      'Equilateral'
    elsif @l1 + @l2 <= @l3 || @l2 + @l3 <= @l1 || @l3 + @l1 <= @l2
        'Not a triangle'
    elsif [@l1, @l2, @l3].uniq.length == 3
      "Scalene"
    end
  end

end
