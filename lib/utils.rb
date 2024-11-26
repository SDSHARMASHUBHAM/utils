# lib/utils.rb
require "utils/version"

module Utils
  class Validator
    # Validates email format
    def self.email?(email)
      /^[^\s@]+@[^\s@]+\.[^\s@]+$/.match?(email)
    end

    # Validates phone number (basic 10-digit example)
    def self.phone?(phone)
      /^\d{10}$/.match?(phone)
    end

    # Checks if value is blank
    def self.blank?(value)
      value.nil? || value.strip.empty?
    end

    # Validates if the value is a number
    def self.number?(value)
      Float(value) != nil rescue false
    end

    # Validates if a value is empty (for arrays, hashes, etc.)
    def self.empty?(value)
      value.respond_to?(:empty?) && value.empty?
    end
  end
end
