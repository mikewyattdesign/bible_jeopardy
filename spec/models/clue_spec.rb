require 'spec_helper'

describe Clue do
  it 'should respond to categories' do
    expect(Clue.new).to respond_to(:categories)
  end

  it 'should respond to boards' do
    expect(Clue.new).to respond_to(:boards)
  end

  it 'should be invalid without a prompt' do
    new_clue = Clue.create
    expect(new_clue.invalid?).to be_true
    expect(new_clue.errors[:prompt].any?).to be_true
  end

  it 'should be invalid without a response' do
    new_clue = Clue.create
    expect(new_clue.invalid?).to be_true
    expect(new_clue.errors[:response].any?).to be_true
  end


end
