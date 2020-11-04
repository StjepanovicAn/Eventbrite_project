class EventsController < ApplicationController

	def index
		@events = Event.all
		
	end

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new('start_date' => params[:start_date],
							'title' => params[:title],
							'duration' => params[:duration],
							'location' => params[:location],
							'price' => params[:price],
							'description' => params[:description])
		if @event.save
			render :show
		else
			puts "m"*65
			puts "nope"
			puts "m"*65
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
