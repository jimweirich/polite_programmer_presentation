require 'spec_helper'

describe HappyWords do
  include HappyWords

  let(:words) { happy_words(text) }
  subject { words }

  context "with no happy words" do
    let(:text) { "I am sad" }
    it { should == [] }
  end

  context "with one happy word" do
    let(:text) { "I am happy" }
    it { should == ["happy"] }
  end

  context "with many happy words" do
    let(:text) {
      "I am happy.  " +
      "You are ecstatic. " +
      "Together we are overjoyed at the pleasant events."
    }
    it { should == ["happy", "ecstatic", "overjoyed", "pleasant"] }
  end
end
