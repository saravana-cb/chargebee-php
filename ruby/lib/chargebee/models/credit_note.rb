module ChargeBee
  class CreditNote < Model

    class LineItem < Model
      attr_accessor :date_from, :date_to, :unit_amount, :quantity, :tax_amount, :tax_rate, :line_amount, :discount_amount, :description, :entity_type, :entity_id
    end

    class Discount < Model
      attr_accessor :amount, :description, :entity_type, :entity_id
    end

    class Tax < Model
      attr_accessor :amount, :description
    end

    class LinkedTransaction < Model
      attr_accessor :txn_id, :applied_amount, :applied_at, :txn_type, :txn_status, :txn_date, :txn_amount
    end

    class Allocation < Model
      attr_accessor :invoice_id, :applied_amount, :applied_at, :invoice_date, :invoice_status
    end

  attr_accessor :id, :customer_id, :subscription_id, :reference_invoice_id, :type, :reason_code,
  :status, :vat_number, :date, :total, :credits_allocated, :refunds_made, :remaining_credits,
  :paid_at, :sub_total, :line_items, :discounts, :taxes, :linked_transactions, :allocations

  # OPERATIONS
  #-----------

  def self.retrieve(id, env=nil, headers={})
    Request.send('get', uri_path("credit_notes",id.to_s), {}, env, headers)
  end

  def self.list(params={}, env=nil, headers={})
    Request.send('get', uri_path("credit_notes"), params, env, headers)
  end

  def self.credit_notes_for_customer(id, params={}, env=nil, headers={})
    Request.send('get', uri_path("customers",id.to_s,"credit_notes"), params, env, headers)
  end

  end # ~CreditNote
end # ~ChargeBee