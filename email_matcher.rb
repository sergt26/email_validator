# at a very high level, this regular expression below is looking for all letters and numbers including symbols before the @ (the email)
# then after we're including pretty much the same things with some further symbols, letters and numbers until the .
# then we're checking for letters for .net, .com, etc. and at the end we added the i for case-insensitive
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email?(email)
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("titovilla@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("titovillagmail.com") ? "Valid" : "Invalid"
p is_valid_email?("tito.villa@gmail.com") ? "Valid" : "Invalid"
p is_valid_email?("titovilla@gmail") ? "Valid" : "Invalid"
p is_valid_email?("tito_villa@gmail.net") ? "Valid" : "Invalid"
p is_valid_email?("tito_villa@gmail.io") ? "Valid" : "Invalid"
