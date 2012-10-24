require './life'

describe 'The next generation' do
  subject { cell.next_generation }

  context 'of a live cell' do
    let(:cell) { LiveCell.new }
    
    it 'dies if it had no living neighbors' do
      8.times { cell.neighbors << DeadCell.new }
      subject.should be_a(DeadCell)
    end

    it 'dies if it had one living neighbor' do
      7.times { cell.neighbors << DeadCell.new }
      cell.neighbors << LiveCell.new
      subject.should be_a(DeadCell)
    end

    it 'lives if it had two living neighbors' do
      6.times { cell.neighbors << DeadCell.new }
      2.times { cell.neighbors << LiveCell.new }
      subject.should be_a(LiveCell)
    end

    it 'lives if it had three living neighbors' do
      5.times { cell.neighbors << DeadCell.new }
      3.times { cell.neighbors << LiveCell.new }
      subject.should be_a(LiveCell)
    end

    it 'dies if it had more than three living neighbors' do
      4.times { cell.neighbors << DeadCell.new }
      4.times { cell.neighbors << LiveCell.new }
      subject.should be_a(DeadCell)
    end
  end
end
