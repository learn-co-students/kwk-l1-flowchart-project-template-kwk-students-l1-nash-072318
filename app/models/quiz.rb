class Quiz
  
<h1><br><center>Hello <%=@name%>!</center></h1>

attr_accessor :name, :age, :breed 

@alldogs = []

def initialize(name, q1, q2, q3, q4, q5, q6, q7)
  @name = name
  @q1 = q1
  @q2 = q2
  @q3 = q3
  @q4 = q4
  @q5 = q5
  @q6 = q6
  @q7 = q7

end

def results
  if @q1 + @q2 + @q3 < 5
    @breed = "golden retriever"
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
