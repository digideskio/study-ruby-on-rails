#---
# Excerpted from "Metaprogramming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#
#
# p.85
# The core idea of Builder is simple: calls like name() and language() are processed by XmlMarkup#method_missing(), which generates an XML tag for every call.
#---
require 'builder'
xml = Builder::XmlMarkup.new(:target=>STDOUT, :indent=>2)

xml.coder {
  xml.name 'Matsumoto', :nickname => 'Matz'
  xml.language 'Ruby'
}

xml.semester {
  xml.class 'Egyptology'
  xml.class 'Ornithology'

}

#You may be wondering whether the calls to class() clash with the inherited method class() in Object.
#They don’t, because the XmlMarkup class in Builder inherits from a Blank Slate (84), which removes class( ) and most other methods from Object.



