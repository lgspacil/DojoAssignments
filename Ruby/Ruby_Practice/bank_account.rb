class BankAccount

	attr_reader :account_number, :checking, :savings, :total_amount
	@@bank_accounts = 0

	def initialize()
		@account_number = create_account
		@checking = 550
		@savings = 3000
		@@bank_accounts += 1
    @interest_rate = 0.01
	end

	def deposit_check(account, amount)
    if account == "checking"
      @checking += amount
    else
      @savings += amount
    end
	end	

	def checking_balance()
		puts "You have #{@checking} in your checking and #{@savings} in your savings account"
	end


	def withdraw_money(account, amount)
    if account == "checking"
      if amount > @checking
        puts "you only have #{@checking} in you account"
      else
        @checking -= amount
      end

    else
      if amount > @savings
        puts "you only have #{@savings} in your account"
      else
      @savings -= amount
      end

    end
	end

	def users_account_number()
		puts "the usrs account number is: #{@account_number}"
	end

  def total_amount()
    puts "Total Amount: #{@savings + @checking} in your bank"
  end

  def self.number_of_accounts
    @@bank_accounts
  end

  def account_information
    puts "Your account number is #{@account_number}, You have #{@savings+@checking} in your bank, Interest Rate: #{@interest_rate}"
  end

	private
	def create_account()
		account_num = ""
		9.times do
			account_num += ((0..9).to_a)[rand(9)].to_s
		end
		return account_num
	end

end


lucas = BankAccount.new()
lucas.deposit_check("checking", 100)
lucas.checking_balance
lucas.withdraw_money("savings", 650)
lucas.checking_balance
puts "=============="


monika = BankAccount.new()


puts BankAccount.number_of_accounts
puts "=============="


lucas.account_information

