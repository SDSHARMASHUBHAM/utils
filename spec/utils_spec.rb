require "utils"

RSpec.describe Utils::Validator do
  it "validates emails" do
    expect(Utils::Validator.email?("test@example.com")).to be true
    expect(Utils::Validator.email?("invalid_email")).to be false
  end

  it "validates phone numbers" do
    expect(Utils::Validator.phone?("1234567890")).to be true
    expect(Utils::Validator.phone?("abcd123456")).to be false
  end

  it "validates blank values" do
    expect(Utils::Validator.blank?("")).to be true
    expect(Utils::Validator.blank?("text")).to be false
  end

  it "validates numbers" do
    expect(Utils::Validator.number?("123.45")).to be true
    expect(Utils::Validator.number?("abc")).to be false
  end

  it "validates empty collections" do
    expect(Utils::Validator.empty?([])).to be true
    expect(Utils::Validator.empty?([1, 2, 3])).to be false
  end
end
