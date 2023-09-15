# frozen_string_literal: true

require '../services/account'
require '../adapters/account_baas'

module App
  module Controllers
    class Accounts
      VENDOR = {
        nubank: 'Nubank',
        itau: 'Itau'
      }
  
      def initialize(params)
        @params = params.fetch(:name, :document, :email)
      end
  
      # POST /accounts
      def create
        service.call
      end
  
      private
  
      def service
        Services::Account.new(params: params, adapter: adapter)
      end
  
      def adapter
        Adapters::AccountBaas.new(vendor: VENDOR[:nubank])
      end
    end
  end
end
