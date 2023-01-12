require_relative '../solver'

describe Solver do
  context 'testing for factorial, reverse and fizzbuzz' do
    before :each do
      @solver = Solver.new
    end

    it 'creates a new instance of Solver class' do
      expect(@solver).to be_instance_of Solver
    end
  end
end
