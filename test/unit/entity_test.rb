require_relative '../../klass/entity'
require 'test/unit'

class EntityTest < Test::Unit::TestCase
  def setup
    @id = 1, @table = "MyTable"
    @entity = Entity.new(@table, @id)
  end

  def test_new
    assert_equal("INSERT INTO #{@table} (id) VALUES #{@id}", @entity.save)
  end

  def test_update
    assert_equal("UPDATE #{@table} SET MyCol = 'MyVal' WHERE id = #{@id}", @entity.set("MyCol", "MyVal"))
  end

  def test_select
    assert_equal("SELECT MyCol FROM #{@table} WHERE id = #{@id}", @entity.get("MyCol"))
  end
end