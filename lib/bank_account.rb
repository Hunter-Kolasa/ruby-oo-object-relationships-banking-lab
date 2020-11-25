class BankAccount
    attr_accessor :balance, :status
    attr_reader :name
    def initialize(name)
        @status = "open"
        @name = name
        @balance = 1000
    end
    def deposit(amount)
        self.balance += amount
    end
    def display_balance
        "Your balance is $#{@balance}."
    end
    def valid?
        self.status == "open" && self.balance > 0 ? true : false
    end
    def close_account
        self.status = "closed"
    end
end
