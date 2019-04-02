class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade # is there really not a .average method??
    @scores.sum / @scores.count.to_f
  end

end
