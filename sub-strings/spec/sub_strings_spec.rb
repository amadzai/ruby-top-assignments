# frozen_string_literal: true

require_relative "../sub_strings"

RSpec.describe "#substrings" do
  let(:dictionary) do
    %w[below down go going horn how howdy it i low own part partner sit]
  end

  it "matches the Odin single-word sample output" do
    expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it "matches the Odin multi-word sample output" do
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(
      {
        "down" => 1,
        "go" => 1,
        "going" => 1,
        "how" => 2,
        "howdy" => 1,
        "it" => 2,
        "i" => 3,
        "own" => 1,
        "part" => 1,
        "partner" => 1,
        "sit" => 1
      }
    )
  end

  it "is case insensitive" do
    expect(substrings("BELOW", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it "returns an empty hash when no dictionary items are found" do
    expect(substrings("zebra", dictionary)).to eq({})
  end
end
