ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    user_name:            "esamewebapp@gmail.com",
    password:             "esamepassword",
    domain:               "mail.google.com",
    authentication:       :plain,
    enable_starttls_auto: true
}