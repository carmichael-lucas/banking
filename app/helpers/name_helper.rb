# frozen_string_literal: true

module NameHelper
  def valid?(name:)
    raise 'Error: name invalid' if name.lenght > 80
  end
end
