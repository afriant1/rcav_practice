class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root

    @user_input = params["input"].to_f

    if @user_input >= 0

      @square_root = Math.sqrt(@user_input).round(2)

      else @square_root = "imaginary. Input positive number"

    end

    render("square_root.html.erb")
  end

  def random

     @min = params["input1"].to_i
     @max = params["input2"].to_i
     @random = rand(@min..@max)

    render("random.html.erb")
  end

  def payment

     @rate = params["input1"]
     @rate1 = @rate.to_f/10000/12
     @term = params["input2"].to_i
     @loan = params["input3"].to_f
     @payment = (@loan*@rate1*((1+@rate1)**(@term*12)))/(((1+@rate1)**(@term*12))-1)

    render("payment.html.erb")
  end
end
