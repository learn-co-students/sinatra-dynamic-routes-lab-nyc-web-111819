require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:num" do
    @num = params[:num].to_i ** 2
    "#{@num.to_s}"
  end

  get "/say/:num/:phrase" do 
    @num = params[:num].to_i
    @phrase = params[:phrase] + " "
    "#{@phrase * @num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1] 
    @word2 = params[:word2] 
    @word3 = params[:word3] 
    @word4 = params[:word4] 
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:num1/:num2" do 
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @operation = case params[:operation]
    when "add"
      "#{@num2 + @num1}"
    when "subtract" || "minus"
      "#{@num1 - @num2}"
    when "divide"
      "#{@num1 / @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    else 
    end
  end

end