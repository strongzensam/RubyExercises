require 'rspec'

class ChangeMachine

  def make_change(input_cash)
    change = []
    coin_types = [25,10,5,1]
      coin_types.each do |coin|
        until input_cash < coin
          input_cash -= coin
          change << coin
        end
      end
    return change.sort.reverse
  end
end
  



RSpec.describe ChangeMachine do
  describe '#make_change'  do
      it 'should return [1] if given 1' do
        machine = ChangeMachine.new
        change = machine.make_change(1)
        expect(change).to eq([1])
      end

      it 'should return [1, 1] if given 1' do
        machine = ChangeMachine.new
        change = machine.make_change(2)
        expect(change).to eq([1, 1])
      end
      it 'should return [5] if given 5' do
        machine = ChangeMachine.new
        change = machine.make_change(5)
        expect(change).to eq([5])
      end
      it 'should return [5, 1] if given 6' do
        machine = ChangeMachine.new
        change = machine.make_change(6)
        expect(change).to eq([5, 1])
      end
      it 'should return [10, 5, 1] if given 16' do
        machine = ChangeMachine.new
        change = machine.make_change(16)
        expect(change).to eq([10, 5, 1])
      end
      it 'should return [25, 10, 5, 1, 1] if given 42' do#25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given'
        machine = ChangeMachine.new
        change = machine.make_change(42)
        expect(change).to eq([25, 10, 5, 1, 1])
      end
  end
end