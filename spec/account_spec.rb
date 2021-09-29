require 'account'

describe 'account' do
  
  
  it 'creates a new account' do
    account = Account.new
    expect(account.balance).to eq(0)
  end

  it 'allows you to add money to the account balance' do
    account = Account.new
    account.credit(500)
    expect(account.balance).to eq(500)
  end

end
