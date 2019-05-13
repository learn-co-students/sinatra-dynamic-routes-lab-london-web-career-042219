require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @temp = []

    @number.times {@temp << @phrase }

    "#{@temp.join(" ")}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    case @operation
    when "add"
      "#{@num1.to_i + @num2.to_i}"
    when "subtract"
      "#{@num1.to_i - @num2.to_i}"
    when "multiply"
      "#{@num1.to_i * @num2.to_i}"
    when "divide"
      "#{@num1.to_i / @num2.to_i}"
    end

  end
end



