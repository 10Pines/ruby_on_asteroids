# frozen_string_literal: true

RSpec.describe "Enhancement enabling helpers" do
  describe ".enable_all_enhancements" do
    before do
      allow(RubyOnAsteroids).to receive(:enhance_strings)
      allow(RubyOnAsteroids).to receive(:enhance_arrays)
    end

    it "calls the rest of helpers to enable all enhancements" do
      RubyOnAsteroids.enable_all_enhancements

      expect(RubyOnAsteroids).to have_received(:enhance_strings)
      expect(RubyOnAsteroids).to have_received(:enhance_arrays)
    end
  end
end
