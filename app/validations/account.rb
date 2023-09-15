# frozen_string_literal: true

require '../helpers/document_helper'
require '../helpers/name_helper'
require '../helpers/email_helper'

module App
  module Validations
    class Account
      def initialize(params:)
        @params = params
      end

      def call
        document_valid?
        email_valid?
        name_has_character_limit?
      end

      private

        def document_valid?
          DocumentHelper.valid?(document_type: params[:document_type], document: params[:document])
        end

        def document_valid?
          EmailHelper.valid?(email: params[:email])
        end

        def name_has_character_limit?
          NameHelper.valid?(name: params[:name])
        end
    end
  end
end
