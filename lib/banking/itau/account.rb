# frozen_string_literal: true

module Lib
  module Banking
    module Itau
      class Account
        attr_accessor :gem_itau

        def initialize
          @gem_dock = Data.define(:banking_uuid, :name, :cpf, :email)
        end

        def create(params:)
          serializer(
            gem_dock.new(
              bankingToken: SecureRandom.uuid,
              name: 'John Joe',
              nationalRegistration: '411.242.543-98'
              owner: 'jonh.doe@example.com'
            )
          )
        end

        private

        def serializer(response)
          {
            banking_token: gem_dock.banking_uuid,
            name: gem_dock.name,
            document: gem_dock.cpf,
            email: gem_dock.email
          }
        end
      end
    end
  end
end
