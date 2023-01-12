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

  def reverse(string)
    raise Exception, 'use strings only' if string.class != String

    string.reverse!
  end

  def fizzbuzz(num)
    raise Exception, 'use only positive integers' if num.instance_of?(String)

    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num.to_s
    end
  end
end
