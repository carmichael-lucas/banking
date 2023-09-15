# frozen_string_literal: true

require '../../lib/banking/nubank/account'
require '../../lib/banking/itau/account'

module App
  module Adapters
    class AccountBaas
      def initialize(vendor:)
        @vendor = vendor
      end
  
      def create(params:)
        serializer(
          baas.create(params: params)
        )
      end
  
      private
  
      def baas
        "::Banking::#{@vendor}::Account".constantize.new
      end
  
      def serializer(response)
        {
          banking_token: response[:banking_token],
          name: response[:name],
          email: response[:email],
          document: response[:document]
        }
      end
    end
  end
end
