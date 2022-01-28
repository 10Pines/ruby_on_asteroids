# frozen_string_literal: true

require "ruby_on_asteroids/core_ext/string/accessing"

RSpec.describe "String extensions to improve the way we access to the string contents" do
  String.include RubyOnAsteroids::CoreExt::String::Accessing

  describe "#but_last" do
    describe "without passing a number of characters to be removed" do
      context "when the string is longer than 1 character" do
        it "returns a String without the last character" do
          expect("house".but_last).to eq "hous"
        end
      end

      context "when the string has 1 character" do
        it "returns an empty String" do
          expect("h".but_last).to eq ""
        end
      end

      context "when the string is empty" do
        it "returns an empty String" do
          expect("".but_last).to eq ""
        end
      end
    end

    describe "passing a number of characters to be removed" do
      context "when the string has enough characters to be removed" do
        it "returns a copy of the String after removing from the end the amount of characters requested" do
          expect("house".but_last(2)).to eq "hou"
        end
      end

      context "when the string has exactly the same number of characters to be removed" do
        it "returns an empty string" do
          expect("car".but_last(3)).to eq ""
        end
      end

      context "when the string is shorter than the number of characters to be removed" do
        it "returns an empty string" do
          expect("car".but_last(5)).to eq ""
        end
      end
    end
  end
end
