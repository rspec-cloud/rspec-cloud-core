# frozen_string_literal: true

RSpec::Matchers.define :have_digits do |expected|
  match do |actual|
    actual.digits == expected
  end

  description do
    if expected > 1
      "have #{expected} digits"
    else
      'have 1 digit'
    end
  end

  failure_message do |actual|
    if expected > 1
      "expected that #{actual} would have #{expected} digits"
    else
      "expected that #{actual} would have 1 digit"
    end
  end

  failure_message_when_negated do |actual|
    if expected > 1
      "expected that #{actual} would not have #{expected} digits"
    else
      "expected that #{actual} would not have 1 digit"
    end
  end
end
