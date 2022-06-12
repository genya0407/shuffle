# frozen_string_literal: true

RSpec.describe Shuffle do
  it "has a version number" do
    expect(Shuffle::VERSION).not_to be nil
  end

  it "shuffle given string" do
    original_string = 'abcdefghijklmnopqrstu'

    expect(Shuffle.new(original_string).shuffle).not_to eq original_string
    expect(Shuffle.new(original_string).shuffle.chars.sort.join).to eq original_string.chars.sort.join
  end
end
