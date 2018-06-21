require 'rspec'
require_relative 'ruby_game'


describe "Character" do

  it "has to be real" do
    expect{Character.new}.to_not raise_error
  end

  it "has to have a name" do
    a_char= Character.new()
    expect(a_char.name).to be_a String
  end

  it "has to be have health" do
    a_char=Character.new
    expect(a_char.health).to be_a Numeric
  end

  it "can get hurt" do
    a_char=Character.new
    a_char.charHurt
    expect(a_char.health).to be_a Numeric
  end

  it "can get money" do
    a_char=Character.new
    expect(a_char.currency).to be_a Numeric
  end

end
###################################################

describe "Sloth" do
  it "has to be real" do
    expect{Sloth.new}.to_not raise_error
  end

  it "has to have a name" do
    a_char= Sloth.new()
    expect(a_char.name).to be_a String
  end

  it "has fur color" do
    a_char=Sloth.new()
    expect(a_char.fur).to be_a String
  end

  it "has intelligence" do
    a_char=Sloth.new()
    expect(a_char.intelligence).to be_a String
  end

  it "has speed" do
    a_char=Sloth.new()
    expect(a_char.speed).to be_a Numeric
end

  it "has a favorite food" do
    a_char=Sloth.new()
    expect(a_char.food).to be_a String
  end
end
###################################################

describe "Human" do
  it "has to be real" do
    expect{Human.new}.to_not raise_error
  end

  it "has to have a name" do
    a_char= Human.new()
    expect(a_char.name).to be_a String
  end
end
