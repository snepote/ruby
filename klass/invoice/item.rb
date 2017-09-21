module Invoice
    class Item
        def initialize
            puts self.class
        end
    end
end


item = Invoice::Item.new
