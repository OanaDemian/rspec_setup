require 'present'

RSpec.describe "present method" do
  it "returns contents after wraping" do
    present = Present.new
    result = present.wrap("bike")
    expect(result).to eq "bike"
  end

  it "returns error if already wrapped" do
    present = Present.new
    present.wrap("bike")
    expect{present.wrap("toy")}.to raise_error "A contents has already been wrapped."
  end

  it "should fail if there are no content" do
    present = Present.new
    expect{present.unwrap()}.to raise_error "No contents have been wrapped."
  end

  it "should pass if there are contents" do
    present = Present.new
    present.wrap("car")
    expect(present.unwrap).to eq "car"
  end
  
end