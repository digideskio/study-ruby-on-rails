def each_vowel(&code_block)
  %w{a e i o u}.each { |vowel| code_block.call(vowel) }
end
each_vowel { |vowel| puts vowel }



# yield : automatically detects any passed code block and passes control to it
# this less obvious what it does
def each_vowel
  %w{a e i o u}.each { |vowel| yield vowel }
end
each_vowel { |vowel| puts vowel }

# lambda : store code block within variables
print_parameter_to_screen = lambda { |x| puts x }
print_parameter_to_screen.call(100)


