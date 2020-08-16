require "pry"

class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(payee, recipient, amount)
    @sender = payee
    @receiver = recipient
    @amount = amount
    @status = "pending"
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end
  def execute_transaction
    if @sender.balance < @amount && !valid?
      "Transaction rejected. Please check your account balance."
    elsif
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end
end
