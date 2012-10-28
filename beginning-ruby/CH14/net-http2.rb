require('net/http')
def get_web_document(url)
  uri = URI.parse(url)
  puts uri
  response = Net::HTTP.get_response(uri)

  case response
    when Net::HTTPSuccess
      return response.body
    when Net::HTTPRedirection
      return get_web_document(response['Location'])
    else
      return nil
  end
end


puts get_web_document("http://www.rubyinside.com/test.txt")
puts get_web_document("http://www.rubyinside.com/non-existent")
puts get_web_document("http://www.rubyinside.com/rediret-test")


# Net::HTTPNotFound
# Net::HTTPForbidden

# error list
# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/net/http/rdoc/Net/HTTP.html