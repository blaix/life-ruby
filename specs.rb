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

  context 'with two living neighbors' do
    before do
      6.times { cell.neighbors << DeadCell.new }
      2.times { cell.neighbors << LiveCell.new }
    end

    it { should be_a(LiveCell) }
  end

  context 'with three living neighbors' do
    before do
      5.times { cell.neighbors << DeadCell.new }
      3.times { cell.neighbors << LiveCell.new }
    end

    it { should be_a(LiveCell) }
  end

  context 'with four living neighbors' do
    before do
      4.times { cell.neighbors << DeadCell.new }
      4.times { cell.neighbors << LiveCell.new }
    end

    it { should be_a(DeadCell) }
  end
end
