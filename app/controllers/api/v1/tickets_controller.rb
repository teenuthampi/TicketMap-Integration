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
        params.require(:ticket).permit(
          request_number: params[:ticket][:RequestNumber],
          sequence_number: params[:ticket][:SequenceNumber],
          request_type: params[:ticket][:RequestType],
          response_due_date_time: params[:ticket][:DateTimes][:ResponseDueDateTime],
          primary_service_area_code: params[:ticket][:ServiceArea][:PrimaryServiceAreaCode][:SACode],
          additional_service_area_codes: params[:ticket][:ServiceArea][:AdditionalServiceAreaCodes][:SACode],
          wellknown_text: params[:ticket][:ExcavationInfo][:DigsiteInfo][:WellKnownText]
        )
      end

      def create_excavator(ticket)
        ticket.create_excavator(
          company_name: params[:ticket][:Excavator][:CompanyName],address: params[:ticket][:Excavator][:Address],city: params[:ticket][:Excavator][:City],
          state: params[:ticket][:Excavator][:State],zip: params[:ticket][:Excavator][:Zip]
        )
      end

    end
  end
end