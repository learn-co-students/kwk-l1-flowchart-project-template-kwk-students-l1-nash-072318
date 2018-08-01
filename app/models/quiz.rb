class Food

attr_accessor :name, :food

@allfood = []

def initialize(name, q1, q2, q3, q4, q5, q6, q7)
  @name = name
  @food = food 
  @q1 = q1
  @q2 = q2
  @q3 = q3
  @q4 = q4
  @q5 = q5 
  @q6 = q6
  @q7 = q7 

end

def results
  if @q1 + @q2 + @q3 + @q4 + @5 + @6 + @7 < 9 
    @food = "golden retriever"
  elsif @q1 + @q2 + @q3 < 8
    @breed = "german shepard"
  elsif @q1 + @q2 + @q3 < 11
    @breed = "terrier"
  else @q1 + @q2 + @q3 < 13
    @breed = "pug"
  end
  @breed
end  

end