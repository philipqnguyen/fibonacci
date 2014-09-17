require "spec_helper"
require "fibonacci"

describe Fibonacci do

  before do
    @fibonacci = Fibonacci.new
  end

  describe "takes an input of 0" do
    it "should equal 0" do
      @fibonacci.position(0).must_equal 0
    end
  end

  describe "takes an input of 1" do
    it "should equal 1" do
      @fibonacci.position(1).must_equal 1
    end
  end

  describe "takes an input of 2" do
    it "should equal 1" do
      @fibonacci.position(2).must_equal 1
    end
  end

  describe "takes an input of 3" do
    it "should equal 2" do
      @fibonacci.position(3).must_equal 2
    end
  end

  describe "takes an input of 10" do
    it "should equal 55" do
      @fibonacci.position(10).must_equal 55
    end
  end

  describe "takes an input of 20" do
    it "should equal 6765" do
      @fibonacci.position(20).must_equal 6765
    end
  end
end
