:random.seed(:os.timestamp)

defmodule RandPass do
  def randomascii() do
    asciilist = Enum.to_list(48 .. 57)
    asciilist = Enum.concat(asciilist, Enum.to_list(65 .. 90))
    asciilist = Enum.concat(asciilist, Enum.to_list(97 .. 122))
    IO.chardata_to_string([Enum.random(asciilist)])
  end

  def randomstring(str \\ "",length) do

    if (length > 0) do
      randomstring(str <> randomascii(), length - 1)
    else
      str
    end

  end

  def randomlist(str \\ "", lines, length) do
    if (lines > 0) do
      randomlist(str <> randomstring(length) <> "\n", lines - 1, length)
    else
      str
    end

  end

  def writetoList(filename, lines \\ 3, length \\ 12) do
    {:ok, file} = File.open(filename, [:write])
    str = randomlist(lines, length)
    IO.binwrite(file, str)
    File.close file
    str
  end

  def generatePassword(length) do
    randomstring(length)
  end

end
