require File.expand_path("../../lib/roman_kata.rb", __FILE__)

require 'spec_helper'

describe RomanKata do
  describe ".to_roman" do
    it "should return X when given 10" do
      RomanKata.to_roman(1).should == "I"
      RomanKata.to_roman(10).should == "X"
      RomanKata.to_roman(100).should == "C"
    end

    it "should return XI when given 11" do
      RomanKata.to_roman(11).should == "XI"
    end

    it "should return XXXIII when 33" do
      RomanKata.to_roman(33).should == "XXXIII"
    end

    it "should return MMXI" do
      RomanKata.to_roman(2011).should == "MMXI"
    end
  end
end
