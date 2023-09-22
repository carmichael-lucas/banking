# frozen_string_literal: true

require '../services/account'
require '../adapters/account_baas'

module App
  module Controllers
    module Api
      module V2
        class Accounts
          VENDOR = {
            nubank: 'Nubank',
            itau: 'Itau'
          }
      
          def initialize(params)
            @params = params.fetch(:name, :document, :email)
          end
      
          # POST /v2/accounts
          def create
            service.call
          end
      
          private
      
          def service
            Services::Account.new(params: params, adapter: adapter)
          end
      
          def adapter
            Adapters::AccountBaas.new(vendor: VENDOR[:itau])
          end
        end
      end
    end
  end
end
