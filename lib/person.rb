# rbs_inline: enabled

class Person
  attr_reader :name

  attr_reader :addresses

  def initialize(name:, addresses:)
    @name = name
    @addresses = addresses
  end

  def to_s
    "Person(name = #{name}, addresses = #{addresses.join(", ")})"
  end

  def each_address(&block)
    addresses.each(&block)
  end
end
