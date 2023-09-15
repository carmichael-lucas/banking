# frozen_string_literal: true

require '../models/account'
require '../validations/account'

module App
  module Services
    class Account
      attr_reader :params, :adapter
  
      def initilize(params:, adapter:)
        @params  = params
        @adapter = adapter
      end
  
      def call
        validate_account!
  
        account.call(
          account_baas.create(params)
        )
      end
  
      private
  
      def account
        Models::Account.new
      end
  
      def account_baas
        adapter.new
      end
  
      def validate_account!
        ::App::Validations::Account.new(params).call
      end
    end
  end
end
