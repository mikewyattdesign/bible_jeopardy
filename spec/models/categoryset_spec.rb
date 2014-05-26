require 'spec_helper'

describe Categoryset do
    it 'should respond to a board' do
        expect(Categoryset.new).to respond_to(:board)
    end

    it 'should respond to a category' do
        expect(Categoryset.new).to respond_to(:category)
    end
end
