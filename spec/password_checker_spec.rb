require "password_checker"

RSpec.describe PasswordChecker do
  it "returns true if password over 8 chars" do
    password = PasswordChecker.new
    result = password.check("Password1")
    expect(result).to eq true
  end

  it "returns fail message if under 8 chars" do
    password = PasswordChecker.new
    expect { password.check("Pass") }.to raise_error "Invalid password, must be 8+ characters."
  end  
end

