
class CashRegister

    attr_reader :discount
    attr_accessor :total, :items 

    def initialize(discount=0)
        @total = 0
        @items = []
        @discount = discount
    end

    def total
        @total
    end

 

    def add_item(title, price, quantity = 1)
        quantity.times do @items << [title, price, quantity] end
        @total += (price * quantity)
    end

    def apply_discount
        @total = @total - @total * @discount / 100.00
        return @discount == 0 ? "There is no discount to apply." : "After the discount, the total comes to $#{self.total.to_i}." 
    end

    def items
        @items.map do |item| item[0] end
    end

    def void_last_transaction
        @total -= @items[-1][1] * @items[-1][2]
    end


end
