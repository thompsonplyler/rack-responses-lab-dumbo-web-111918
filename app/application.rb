class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.strftime('%H:%M') > '12:00'
      resp.write("Good afternoon!")
    else
      resp.write("Good morning!!")
    end
    
    resp.finish
  end

end

# class Application
#
#   def call(env)
#     resp = Rack::Response.new
#
#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)
#
#     resp.write "#{num_1}\n"
#     resp.write "#{num_2}\n"
#     resp.write "#{num_3}\n"
#
#     if num_1==num_2 && num_2==num_3
#       resp.write "You Win."
#     else
#       resp.write "You Lose"
#     end
#     resp.finish
#
#   end
#
# end
