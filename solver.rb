class Solver
  def factorial(num)
    raise Exception, 'use positive integers only' if num.negative?

    return 1 if num.zero?

    val = num
    counter = 1
    while counter < num 
      val *= counter
      counter += 1
    end
    val
  end
end
