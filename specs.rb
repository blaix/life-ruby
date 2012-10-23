require './life'

describe 'The next generation of live cell' do
  subject { cell.next_generation }
  let(:cell) { LiveCell.new }

  context 'with fewer than two live neighbors' do
    before { 8.times { cell.neighbors << DeadCell.new } }
    it { should be_a(DeadCell) }
  end
end
