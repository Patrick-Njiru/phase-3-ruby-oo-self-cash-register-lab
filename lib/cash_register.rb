class CashRegister
    attr_accessor :total
    attr_reader :discount, :items
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end
    def add_item title, price, quantity = 1
       self.total += price*quantity
       @last_item_price = price*quantity
       quantity.times { items << title}
    end
    def apply_discount
        if @discount > 0
            self.total -= (@total*discount)/100
            "After the discount, the total comes to $#{@total}."
        else "There is no discount to apply."
        end
    end
    def void_last_transaction 
        @total -= @last_item_price
    end
end
