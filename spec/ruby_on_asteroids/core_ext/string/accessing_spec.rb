# frozen_string_literal: true

require "ruby_on_asteroids/core_ext/string/accessing"

RSpec.describe "String extensions to improve the way we access to the string contents" do
  String.include RubyOnAsteroids::CoreExt::String::Accessing

  describe "#but_last" do
    context "when the String is longer than 1 character" do
      it "returns a String without the last character" do
        expect("house".but_last).to eq "hous"
      end
    end

    context "when the String has 1 character" do
      it "returns an empty String" do
        expect("h".but_last).to eq ""
      end
    end

    context "when the String is empty" do
      it "returns an empty String" do
        expect("".but_last).to eq ""
      end
    end
  end
end
