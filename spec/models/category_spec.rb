require 'spec_helper'

describe Category do
    it 'should respond to boards' do
        expect(Category.new).to respond_to(:boards)
    end

    it 'should respond to clues' do
        expect(Category.new).to respond_to(:clues)
    end

    it 'should be invalid without a name' do
        new_category = Category.create
        expect(new_category.invalid?).to be_true
        expect(new_category.errors[:name].any?).to be_true
    end
end
