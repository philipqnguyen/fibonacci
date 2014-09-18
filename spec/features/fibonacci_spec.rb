require "spec_helper"
require "fibonacci"

describe Fibonacci do

  before do
    @fibonacci = Fibonacci.new
  end

  describe "takes a valid input" do
    it "should equal 0" do
      @fibonacci.position(0).must_equal 0
    end

    it "should equal 1" do
      @fibonacci.position(1).must_equal 1
    end

    it "should equal 1" do
      @fibonacci.position(2).must_equal 1
    end

    it "should equal 2" do
      @fibonacci.position(3).must_equal 2
    end

    it "should equal 55" do
      @fibonacci.position(10).must_equal 55
    end

    it "should equal 6765" do
      @fibonacci.position(20).must_equal 6765
    end
  end

  describe "takes an invalid input" do
    it "should be invalid" do
      @fibonacci.position(-10).must_match "Invalid input"
    end

    it "should be invalid" do
      @fibonacci.position(4.5).must_match "Invalid input"
    end

    it "should be invalid" do
      @fibonacci.position("hello").must_match "Invalid input"
    end
  end
end
