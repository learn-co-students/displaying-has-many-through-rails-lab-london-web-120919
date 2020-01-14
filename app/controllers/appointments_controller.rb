class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
    end

   

    private

    def appt_params
        params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_datetime)
    end
end
