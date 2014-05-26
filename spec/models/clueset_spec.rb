require 'spec_helper'

describe Clueset do
    it 'should respond to a board' do
        expect(Clueset.new).to respond_to(:board)
    end

    it 'should respond to a clue' do
        expect(Clueset.new).to respond_to(:clue)
    end
end
