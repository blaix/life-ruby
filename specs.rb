require './life'

describe 'The next generation of live cell' do
  subject { cell.next_generation }
  let(:cell) { LiveCell.new }

  context 'with no living neighbors' do
    before { 8.times { cell.neighbors << DeadCell.new } }

    it { should be_a(DeadCell) }
  end

  context 'with one living neighbor' do
    before do
      7.times { cell.neighbors << DeadCell.new }
      cell.neighbors << LiveCell.new
    end

    it { should be_a(DeadCell) }
  end
end
