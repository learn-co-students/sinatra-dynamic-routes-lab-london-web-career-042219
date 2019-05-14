require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name] 
    @name = @name.reverse
    "#{@name}"
    erb :reversename

  end
  
  #Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  #Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number = @number.to_i
    @str = ""
    @number.times do
      @str << @phrase
    end

  "#{@str}"

  end

  #Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @arr = []
    @str = ""
    @arr << @word1 << @word2 << @word3 << @word4 << @word5 
    @str = @arr.join(" ")
    @str << "."
    
  
  end

  #Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.

  
  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    case @operation
      when 'multiply'
      "#{@number1*@number2}"
      when 'add'
        "#{@number1+@number2}"
      when 'subtract'
        "#{@number1-@number2}"
      when 'divide'
        "#{@number1/@number2}"
      end
    end


end