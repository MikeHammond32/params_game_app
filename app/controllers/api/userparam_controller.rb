class Api::UserparamController < ApplicationController
  def namegame
    @name = params["name"]


    if @name[0].upcase == "A"
      @name = 'Hey, your name starts with the first letter of the alphabet!'
    else
      @name = @name
    end
    render "usercommit.json.jb"
  end
  def guessgame
    @guess = params["guess"]

    @guess = @guess.to_i

    if @guess == 32
      @guess = 'you win!'
    elsif @guess < 32
      @guess = 'you need to guess higher!'
    else @guess > 32
      @guess = 'you need to guess lower!'


    end
    render "usercommit.json.jb"
  end

  def seg_method
    @user_input = params["guess"].to_i
    number = rand(10)

    if @user_input == number
      @user_input = 'congrats!'
    elsif @user_input > number
      @user_input = 'hey there go a bit lower'
    else @user_input < number
      @user_input = 'higher guess please'
    end



    render "usercommit.json.jb"

  def body_parameter_action
    
    render "body.json.jb"

   end
  end
end