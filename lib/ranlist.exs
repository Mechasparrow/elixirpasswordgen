:random.seed(:os.timestamp)
defmodule RandomPass do
  def testfunc() do
    asciilist = Enum.to_list(48 .. 57)
    asciilist = Enum.concat(asciilist, Enum.to_list(65 .. 90))
    asciilist = Enum.concat(asciilist, Enum.to_list(97 .. 122))
    Enum.random(asciilist)
  end
end

IO.puts(RandomPass.testfunc())
