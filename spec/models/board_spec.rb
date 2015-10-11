require 'spec_helper'

describe Board do
    it 'should respond to categories' do
        expect(Board.new).to respond_to(:categories)
    end

    it 'should respond to clues' do
        expect(Board.new).to respond_to(:clues)
    end

    it 'should be invalid without a name' do
        new_board = Board.new(name: nil)
        expect(new_board).to_not be_valid
        expect(new_board.errors[:name].any?).to be_truthy
    end
end
