require 'account'

describe 'account' do
  let(:account) { Account.new }
  
  it 'creates a new account with zero balance' do
    expect(account.balance).to eq(0)
  end

  it 'allows you to add money to the account balance' do
    account.credit(500)
    expect(account.balance).to eq(500)
  end

  it 'allows you to withdraw money from the account balance' do
    account.credit(500)
    account.debit(450)
    expect(account.balance).to eq(50)
  end
end
