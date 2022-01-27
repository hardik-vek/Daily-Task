class Order < ApplicationRecord
    validates :card_number, presence: true, if: -> {payment_type == 'card'}

  def paid_with_card?
    puts "------#{payment_type}-------"
    puts "------#{payment_type=='card'}-------"
    # payment_type == "card"
  end
end


# def validate(x)
#   unless x.start_with? 'x'
#     x.erroes.add :name, "need a name starting with x please!"
#   end
# end