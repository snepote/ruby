class Entity
    attr_reader :table, :ident

    def initialize(table, ident)
        @table = table
        @ident = ident
    end

    def save
        "INSERT INTO #{@table} (id) VALUES #{@ident}"
    end

    def set(col, val)
        "UPDATE #{@table} SET #{col} = '#{val}' WHERE id = #{@ident}"
    end

    def get(col)
        "SELECT #{col} FROM #{@table} WHERE id = #{@ident}"
    end
end