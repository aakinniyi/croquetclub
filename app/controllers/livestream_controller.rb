require 'reloader/sse'
class LivestreamController < ApplicationController
	include ActionController::Live

  def stream
    #SSE expects the `text/event-stream` content type
    response.headers['Content-Type'] = 'text/event-stream'
    #select future booking
    	@booklawns=Booklawn.all.where('starttime>? OR starttime==?',Date.today, Date.today).order("starttime ASC")
    sse = Reloader::SSE.new(response.stream)

    begin
     #streaming function
       @booklawns.each do |booklawns|
       	if booklawns.availability=="Booked"
     	sse.write({:id => booklawns.id},:event =>'update')
     	sleep 0.1
     end
     end

    rescue IOError
      # When the client disconnects, we'll get an IOError on write
    ensure
      sse.close
    end
  end
end
