class CashRegister

    attr_accessor :total, :discount, :item, :price, :quantity

    #constructor
    def initialize(new_discount = 0)
        @total = 0
        @discount = new_discount
        @item = []
    end

    #write several member functions below
    #total returns the total number 
    def total 
        @total
    end


    #add_item: add self.price to @total, return current total price, 
    #with optional argument: quantity.
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @price = price
        @quantity = quantity
        quantity.times do 
            @item.push(title)
        end

    end

    #apply_discount: 1).apply discount to total 2)return message 
    def apply_discount
        if discount != 0 
            @total -= total * discount / 100
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    #items returns an array containing all items that have been added
    def items
        @item
    end

    #void_last_transaction
    def void_last_transaction
        @total -= self.price * self.quantity
    end
end





