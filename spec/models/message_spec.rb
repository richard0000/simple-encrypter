# frozen_string_literal: true

require "rails_helper"

RSpec.describe Message, type: :model do
    it "rejects the creation of a message with a content less than the minimum" do
        long_message = []
        100.times { long_message << "abcdefghijk" }
        expect { described_class.create!(original_content: long_message.join("")) }.to raise_error RuntimeError
    end

    it "rejects the creation of a message with no iriginal content" do
        expect { described_class.create!().to raise_error RuntimeError }
    end

    it "correctly encrypts a basic message" do
        message = described_class.create!(original_content: "abdcefghij")

        expect(message.encrypt).to eql("noqprstuvw")
    end

    it "correctly encrypts a not so basic message" do
        message = described_class.create!(original_content: "abdcevwxyz")

        expect(message.encrypt).to eql("noqprijklm")
    end
end