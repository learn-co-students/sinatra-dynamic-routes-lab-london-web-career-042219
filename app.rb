require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @name = params[:name]
  "#{@name.reverse}"
end

get '/square/:number' do
  @number = params[:number].to_i
  "#{@number **2}"
end
get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end
get '/say/:word1/:word2/:word3/:word4/:word5'do
@worda = params[:word1]
@wordb = params[:word2]
@wordc = params[:word3]
@wordd = params[:word4]
@worde = params[:word5]

"#{@worda} #{@wordb} #{@wordc} #{@wordd} #{@worde}."
end
get '/:operation/:number1/:number2' do
  operation = params[:operation]
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  answer = ''

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
end
end
