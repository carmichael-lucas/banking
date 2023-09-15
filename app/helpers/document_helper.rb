# frozen_string_literal: true

module DocumentHelper
  def valid?(document_type:, document:)
    case document_type.to_s.upercase
    when 'F'
      validate_cpf(document: document)
    when 'J'
      validate_cnpj(document: document)
    else
      raise "Error: document type invalid."
    end
  end

  private

    def validate_cpf(document:)
      raise 'Error: document invalid.' unless document.lenght.eql?(11)
    end

    def validate_cnpj(document:)
      raise 'Error: document invalid.' unless document.lenght.eql?(14)
    end
end
