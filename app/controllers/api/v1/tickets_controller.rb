module Api
  module V1
    class TicketsController < Api::ApiController

    def new
     @ticket = Ticket.new
     @excavator = Excavator.new
    end

    def show
      @ticket = Ticket.find(params[:id])
    end

    def create
      @ticket = Ticket.new(ticket_params)
      respond_to do |format|
        format.json do
          if @ticket.save!
            create_excavator(@ticket)
            render json: @ticket
          else
            render json: @ticket.errors, status: :unprocessable_entity
          end
        end
      end
    end

      private

      def ticket_params
        params.require(:ticket).permit(:request_number, :sequence_number, :requestType, :response_due_date_time,
                                       :primary_service_area_code,:additional_service_area_code,:wellknown_text)
      end

      def excavator_params(ticket)
        ticket.excavator_params(
          company_name: params[:ticket][:Excavator][:CompanyName],address: params[:ticket][:Excavator][:Address],city: params[:ticket][:Excavator][:City],
          state: params[:ticket][:Excavator][:State],zip: params[:ticket][:Excavator][:Zip]
        )
      end

    end
  end
end