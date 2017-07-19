module Spina::Shop
  class InvoicePresenter
    attr_accessor :invoice, :view_context

    delegate :customer_name, :address_1, :postal_code, :city, :number, :customer_number, :date, :identity_name, :invoice_number, :identity_details, :country_name, to: :invoice
    delegate :number_to_currency, :number_with_precision, to: :view_context

    def initialize(invoice, view_context)
      @invoice = invoice
      @view_context = view_context
    end

    def sub_total
      view_context.number_to_currency(invoice.sub_total)
    end

    def total
      view_context.number_to_currency(invoice.total)
    end

  end
end