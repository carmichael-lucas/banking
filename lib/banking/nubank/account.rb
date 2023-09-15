# frozen_string_literal: true

module Lib
  module Banking
    module Nubank
      class Account
        attr_accessor :gem_nubank

        def initialize
          @gem_nubank = Data.define(:banking_token, :name, :national_registration, :owner)
        end

        def create(params:)
          serializer(
            gem_nubank.new(
              banking_token: SecureRandom.uuid,
              name: 'John Joe',
              national_registration: '411.242.543-98'
              owner: 'jonh.doe@example.com'
            )
          )
        end

        private

        def serializer(response)
          {
            banking_token: gem_nubank.banking_token,
            name: gem_nubank.name,
            document: gem_nubank.national_registration,
            email: gem_nubank.owner
          }
        end
      end
    end
  end
end
