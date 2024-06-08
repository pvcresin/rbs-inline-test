# rbs_inline: enabled

class Person
  attr_reader :name #:: String

  attr_reader :addresses #:: Array[String]

  # @rbs name: String
  # @rbs addresses: Array[String]
  # @rbs returns void
  def initialize(name:, addresses:)
    @name = name
    @addresses = addresses
  end

  def to_s #:: String
    "Person(name = #{name}, addresses = #{addresses.join(", ")})"
  end

  # @rbs yields (String) -> void
  def each_address(&block) #:: void
    addresses.each(&block)
  end
end
