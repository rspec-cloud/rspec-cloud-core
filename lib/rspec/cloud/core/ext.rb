# frozen_string_literal: true

class Integer
  def digits
    to_s.gsub(/^\-/, '').size
  end
end

class String
  def integer?
    self =~ /\A[-+]?[0-9]+\z/
  end

  def to_snake_case
    gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
      .gsub(/([a-z\d])([A-Z])/, '\1_\2')
      .tr('-', '_')
      .gsub(/\s/, '_')
      .gsub(/__+/, '_')
      .downcase
  end

  def to_camel_case
    return self if self !~ /_/ && self =~ /[A-Z]+.*/

    split('_').map(&:capitalize).join
  end

  def uncapitalize
    self[0, 1].downcase + self[1..-1]
  end

  def to_camel_back
    to_camel_case.uncapitalize
  end

  def to_bool
    return false if self =~ /^(false)$/i
    return true  if self =~ /^(true)$/i

    raise "invalid value for Boolean: \"#{self}\""
  end
end
