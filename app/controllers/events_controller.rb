class EventsController < ApplicationController
    before_action :require_signin,except: [:index,:show]
    before_action :require_correct_user,only: [:edit,:update]
    def index
        @upcoming_events=Event.upcoming
        @past_events=Event.past
    end

    def edit
        @event=Event.find(params[:id])
    end

    def create
        @event=current_user.events.build(event_params)

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
            redirect_to @event, notice:"Event Successfully Updated!"

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
        params.require(:event).permit(:name,:location,:price,:starts_at,:description,:image_link,:capacity)
    end

    def require_correct_user
        @event=Event.find(params[:id])
        unless current_user.id==@event.creator_id
            redirect_to events_path,alert:"UnAuthorized Acess"

        end
    end
end
