class Transfer
  attr_accessor :sender, :receiver, :amount
  def initialize(payee, recipient, amount)
    @sender = payee
    @receiver = recipient
    @amount = amount
  end
end
