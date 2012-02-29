# `` (backtick)を使う

puts x = system("date")
puts x2 = `date`

# 같은 화면에 다른 프로그램의 실행결과를 표시하고 싶지않다면
# %x{}를 쓴다.
# %x{}는 backtick랑 같다.
puts %x{date}