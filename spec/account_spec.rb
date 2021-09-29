require 'account'

describe 'account' do
  

  it 'creates a new account' do
    account = Account.new
    expect(account.balance).to eq(0)
  end


end
