filename = IO.gets("What is the filename?: ");
take_prefix = fn full, prefix ->
  base = byte_size(prefix)
  <<_ :: binary-size(base), rest :: binary>> = full
  rest
end
filename = String.reverse(take_prefix. (String.reverse(filename), "\n"))
RandomPass.writetoList(filename,10,12)
