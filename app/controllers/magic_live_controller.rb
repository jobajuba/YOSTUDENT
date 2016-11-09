class Magic_LiveController < ApplicationController
   
   #2 way stream.
  include ActionController::Live
  
    def magic_live 
      response.headers['Content-Type'] = 'text/event-stream'
      10.times {
        response.stream.write "hello world\n"
        sleep 1
      }
      
    ensure
      response.stream.close
    end
    
    
end