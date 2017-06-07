class Friend
  attr_reader :name

  def initialize(name = "Bob")
    @name = name
  end

  def greeting(name = "")
    if name.length > 0
      "Hello, #{name}!"
    else
      "Hello!"
    end
  end
end
