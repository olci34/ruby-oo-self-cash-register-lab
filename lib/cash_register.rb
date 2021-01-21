require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0.0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
        quantity.times {@items << item}
        @last_transaction = price*quantity
        @total += price*quantity
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total -= @total*@discount*0.01
            "After the discount, the total comes to $#{@total.round}."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end








