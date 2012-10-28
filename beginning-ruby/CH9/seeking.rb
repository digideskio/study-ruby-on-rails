#If you want to move the pointer forward by a certain offset or move the pointer to a certain position backward from the end of the file, you need to use.

#IO::SEEK_CUR
#IO::SEEK_END
#IO::SEEK_SET

f = File.new("test.txt", "r+")
f.seek(-5, IO::SEEK_END)
f.putc "X"
f.close


f2 = File.new("test.txt", "r")
while a = f.getc
  puts a.chr
  f.seek(5, IO::SEEK_CUR)
end