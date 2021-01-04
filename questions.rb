class Questions
attr_accessor :question, :answer, :firstNumber, :secondNumber

  def initialize()
    @firstNumber = rand(1...20)
    @secondNumber = rand(1...20)
    @answer = firstNumber + secondNumber
  end

  def newQuestion()
    self.firstNumber = rand(1...20)
    self.secondNumber = rand(1...20)
    self.answer = firstNumber + secondNumber
  end

  def question()
    "#{firstNumber }+#{ secondNumber}"
  end
end