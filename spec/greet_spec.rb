# File: spec/greet_spec.rb
require 'greet' # We have to require the file with our code in first.

# Then we set up a test suite — a group of tests.
# We use this string to describe the unit of code we're testing
RSpec.describe "greet method" do

  # Next, we create a single test example.
  # We use the string here to describe what the example is.
  it "greet a given user" do
    # We run the method with an example argument "Tom"
    result = greet("Tom")

    # And then expect (assert) that in this example it should return "Hello, Tom!"
    expect(result).to eq "Hello, Tom!"

    # RSpec will run this example, and if this example doesn't work like you
    # said it would, the test will fail.
  end

  # We can put more test examples here...
end

# But we only have one test suite per file.