class User

  attr_reader :account

  def initialize(account)
    @account = account
  end

  def first_name
    account.first_name
  end

  def last_name
    account.last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def email_address
    account.email_address
  end
end

GithubAccount = Struct.new(:uid, :email_address, :first_name, :last_name)
FacebookAccount = Struct.new(:login, :email_address, :first_name, :last_name)

avdi = User.new(GithubAccount.new("avdi", "avdi@avdi.org", "Avdi", "Grimm"))
p avdi.full_name # => "Avdi Grimm"

require 'forwardable'

class User
  extend Forwardable

  def_delegators :@account, :firt_name, :last_name, :email_address

  def initialize(account)
    @account = account
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

seb = User.new(GithubAccount.new("snepote", "snepote@gmail.com", "Sebastian", "Nepote"))
p seb.full_name # => "Sebastian Nepote"
