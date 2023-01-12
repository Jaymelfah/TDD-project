require_relative '../solver'

describe Solver do
  context 'testing for factorial, reverse and fizzbuzz' do
    before :each do
      @solver = Solver.new
    end

    it 'creates a new instance of Solver class' do
      expect(@solver).to be_instance_of Solver
    end

    describe '#factorial' do
      it 'checks if argument is only one' do
        expect { @solver.factorial(6, 8) }.to raise_error ArgumentError
      end

      it 'checks if factorial of 0 is 1' do
        expect(@solver.factorial(0)).to eql 1
      end

      it 'checks if the argument is not a negative number' do
        expect { @solver.factorial(-2) }.to raise_error 'use positive integers only'
      end

      it 'checks if factorial works as expected' do
        expect(@solver.factorial(5)).to eql 120
      end
    end

    describe '#reverse' do
      it 'checks if argument is one' do
        expect { @solver.reverse('hi', 'to') }.to raise_error ArgumentError
      end

      it 'checks if a string is passed' do
        expect { @solver.reverse(4) }.to raise_error 'use strings only'
      end

      it 'checks if reverse on string method works as required' do
        expect(@solver.reverse('hello')).to eql 'olleh'
      end
    end

    describe '#fizzbuzz' do
      it 'checks if it has only one argument' do
        expect { @solver.fizzbuzz(5, 6) }.to raise_error ArgumentError
      end

      it 'checks if argument is an integer' do
        expect { @solver.fizzbuzz('4') }.to raise_error 'use only positive integers'
      end

      it 'checks if method returns fizz when number is divisible by 3' do
        expect(@solver.fizzbuzz(12)).to eql 'fizz'
      end

      it 'checks if method returns buzz when number is divisible by 5' do
        expect(@solver.fizzbuzz(25)).to eql 'buzz'
      end

      it 'checks if method returns fizzbuzz if number is divisible by 3 and 5' do
        expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
      end

      it 'returns same number if it is not divisible by both 5 and 3' do
        expect(@solver.fizzbuzz(7)).to eql '7'
      end
    end
  end
end
