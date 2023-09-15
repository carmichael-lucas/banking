# frozen_string_literal: true

module App
  module Models
    class Account
      def initialize
        @object = Data.define(:id, :name, :email, :document, :banking_token)
      end
  
      def call(params:)
        @object.new(
          id: SecureRandom.uuid,
          name: params[:name],
          email: params[:email],
          document: params[:document],
          banking_token: params[:banking_token]
        )
      end
    end
  end
end
