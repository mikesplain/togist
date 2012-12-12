require_relative '../../test_helper'

describe "to check STDIN.tty" do 
  it "must equal true because not pipe " do
    !STDIN.tty?.must_equal true
  end
end

describe "to check checkIfPiped output" do
  it "must be equal to STDIN.tty?" do
    checkIfPiped.must_equal !STDIN.tty?
  end
end
