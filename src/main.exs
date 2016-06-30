filename = IO.gets("What is the filename?: ");
filename = List.first(Regex.split(~r/\n/, filename))
RandomPass.writetoList(filename,10,12)
