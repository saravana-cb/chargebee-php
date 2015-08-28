module ChargeBee
  class InvoiceEstimate < Model

    class LineItem < Model
      attr_accessor :date_from, :date_to, :unit_amount, :quantity, :tax_amount, :tax_rate, :line_amount, :discount_amount, :description, :entity_type, :entity_id
    end

    class Discount < Model
      attr_accessor :amount, :description, :entity_type, :entity_id
    end

    class Tax < Model
      attr_accessor :amount, :description
    end

  attr_accessor :recurring, :collect_now, :sub_total, :total, :amount_due, :line_items, :discounts,
  :taxes

  # OPERATIONS
  #-----------

  end # ~InvoiceEstimate
end # ~ChargeBee