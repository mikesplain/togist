require_relative '../../test_helper'

describe Togist do 
  it "must be defined" do
    Togist::VERSION.wont_be_nil
  end
end