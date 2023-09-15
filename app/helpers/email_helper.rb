# frozen_string_literal: true

module EmailHelper
  def valid?(email:)
    raise 'Error: email invalid' unless email ~= /^(.+)@(.+)$/ 
  end
end
