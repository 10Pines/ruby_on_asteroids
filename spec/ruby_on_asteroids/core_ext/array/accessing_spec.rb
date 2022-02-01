# frozen_string_literal: true

RSpec.describe "String extensions to improve the way we access to the string contents" do
  RubyOnAsteroids.enhance_arrays

  describe "#but_last" do
    describe "without passing a number of elements to be removed" do
      context "when the array is longer than 1 element" do
        it "returns an array without the last element" do
          expect([1, 2, 3].but_last).to eq [1, 2]
        end
      end

      context "when the array has 1 element" do
        it "returns an empty array" do
          expect([1].but_last).to eq []
        end
      end

      context "when the array is empty" do
        it "returns an empty array" do
          expect([].but_last).to eq []
        end
      end
    end

    describe "passing a number of elements to be removed" do
      context "when the array has enough elements to be removed" do
        it "returns a copy of the array after removing from the end the amount of elements requested" do
          expect([1, 2, 3, 4].but_last(2)).to eq [1, 2]
        end
      end

      context "when the array has exactly the same number of elements to be removed" do
        it "returns an empty array" do
          expect([1, 2, 3].but_last(3)).to eq []
        end
      end

      context "when the array is shorter than the number of elements to be removed" do
        it "returns an empty array" do
          expect([1, 2, 3].but_last(5)).to eq []
        end
      end
    end
  end
end
