class Result

attr_accessor :name, :length, :topic

@allarticles = []

def initialize(name, length, topic)
@name = name
@length = length
@topic = topic
end

def results
if @length + @topic <= 4
  @article = "short_enviorment"
elsif @length + @topic <= 7
  @article = "med_enviorment"
elsif @length + @topic <= 10
   @article = "feelgood_short"
 elsif @length + @topic <= 12
  @article = "short_womenintech"
  elsif @length + @topic <= 14
  @article = "feelgood_med"
  elsif @length + @topic <= 15
  @article = "long_enviorment"
  elsif @length + @topic <= 16
  @article = "med_womenintech"
  elsif @length + @topic <= 22
  @article = "feelgood_long"
  else @length + @topic <= 24
    @article = "long_womenintech"
  end
  @article
end

end

@response = Result.new("Alea", 1, 11)
puts @response.results
