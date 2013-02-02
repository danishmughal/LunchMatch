class LunchslotsController < ApplicationController
	def home

		if current_user
			@existingactive = Lunchslot.where('user_id = ?', current_user.id)
			@existingactive.each do |e|
				if (e.start_time > DateTime.now)
					@set = true
				else
					@set = false
				end
			end
		end



		@hours_array = ['10','11','12',['1','13'],['2','14'],['3','15']]
		@minutes_array = ['00','15','30','45']

		t = Time.parse('14:00:00.000000')

		if !t.past?()
			@day_array = ['Today', 'Tomorrow']
		else
			@day_array = ['Tomorrow']
		end




	end 

	def new
	end
 
	def create
	end


	def add
	end

	def addactiveslot
		starttime = params[:lunchslot][:start_hour] + ':' + params[:lunchslot][:start_minutes]
		endtime = params[:lunchslot][:end_hour] + ':' + params[:lunchslot][:end_minutes]
		if (params[:lunchslot][:day] == 'Today')
			date = (Date.today()).to_s
		else
			date = (Date.tomorrow()).to_s
		end

		startdatetime = DateTime.parse(date + ' ' + starttime)
		enddatetime = DateTime.parse(date + ' ' + endtime)

		@lunchslot = Lunchslot.new(:user_id => current_user.id, :start_time => startdatetime, :end_time => enddatetime)
		@lunchslot.save

		redirect_to '/'
	end

end
