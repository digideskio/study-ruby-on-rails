require 'resolv'

puts Resolv.getaddress("www.google.com")

Resolv.each_address("www.google.com") do |ip|
  puts ip
end

ip = "192.0.34.166"
begin
  puts Resolv.getname(ip)
rescue
  puts "No hostname associated with #{ip}"
end

Resolv::DNS.open do |dns|
  mail_servers = dns.getresources("google.com", Resolv::DNS::Resource::IN::MX)
  mail_servers.each do |server|
    puts "#{server.exchange.to_s} - #{server.preference}"
  end
end