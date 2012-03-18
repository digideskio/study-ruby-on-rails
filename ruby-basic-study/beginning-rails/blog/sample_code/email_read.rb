Net::POP3.start("mail.example.com", nil, "username", "password") do |pop|
  if pop.mails.empty?
    logger.info "NO MAIL"
  else
    pop.mails.each do |email|
      begin
        logger.info "receiving mail..."
        ExampleMailer.receive(email.pop)
        email.delete
      rescue Exception => e
        logger.error "Error receiving email: #{Time.now.to_s} - #{e.message}"
      end end
  end
end