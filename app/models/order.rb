class Order < ApplicationRecord
  # validates :card_number, presence: true, if: -> {payment_type == 'card'}
  before_save :normalize_card_number, if: :paid_with_card?
  # before_save :normalize_card_number, if: proc.new { |order| order.paid_with_card? }
  validates :payment_type, if: :paid_with_card?
  def normalize_card_number
    puts " number is normalized"
  end

  def paid_with_card?
    # puts "------#{payment_type}-------"
    # puts "------#{payment_type=='card'}-------"
    payment_type == "card"
  end
end

# def validate(x)
#   unless x.start_with? 'x'
#     x.erroes.add :name, "need a name starting with x please!"
#   end
# end
