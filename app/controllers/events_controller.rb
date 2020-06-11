class EventsController < ApplicationController
    def index
        @events=Event.all
    end

    def edit
        @event=Event.find(:params[:id])
    end

    def create
        @event=Event.new(event_params)

        if @event.save
            redirect_to @event,notice:"Event Successfully Created"

        else 
            render :new    
        end
    end

    def show
        @event=Event.find(params[:id])
    end

    def update
        @event=Event.find(params[:id])

        if @event.update(event_params)
            redirect_to @event, notice:"Event Successfully Created!"

        else
            render :edit

        end    

    
        
    end

    def destroy
        
    end

    def new
       @event=Event.new
    end

    private

    def event_params
        params.require(:user).permit(:name,:location,:price,:starts_at,:description,)
    end

    
end
