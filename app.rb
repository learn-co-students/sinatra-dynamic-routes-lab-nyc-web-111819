require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end 

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @num1 = params[:word1]
    @num2 = params[:word2]
    @num3 = params[:word3]
    @num4 = params[:word4]
    @num5 = params[:word5]

    "#{@num1}" + " " + "#{@num2}" + " " + "#{@num3}" + " " + "#{@num4}" + " " + "#{@num5}" + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      answer = (@num1 + @num2).to_s
    when 'subtract'
      answer = (@num1 - @num2).to_s
    when 'multiply'
      answer = (@num1 * @num2).to_s
    when 'divide'
      answer = (@num1 / @num2).to_s
    end
  end

end