class ConsultController < ApplicationController
  

  def patient_new
     @patient = Patient.new

  end
  
  def create_patient
    @patient = Patient.new(patient_params)
     
     if @patient.save
       redirect_to consult_home_path
     else
       flash[:alert] = "Unable to save please fill the correct details."
      redirect_to consult_home_path
     end
   
  end
  
  def new_doctor
    @doctor = Doctor.new
    
  end
  
  def create_doctor
    @doctor = Doctor.new(doctor_params)
     
     if @doctor.save
       redirect_to consult_home_path
     else
       flash[:alert] = "Unable to save please fill the correct details."
        redirect_to consult_home_path
     end
    
  end
  
  def new_appointment
    
    @appointment = Appointment.new
    
  end
  
  def create_appointment
    @appointment = Appointment.new(appointment_params)
     
     if @appointment.save
       redirect_to consult_home_path
     else
       flash[:alert] = "Unable to save please fill the correct details."
         redirect_to consult_home_path
     end
    
  end
  
  def home
    @appointment = Appointment.all.order("created_at DESC")

  end
  
  private

	def patient_params

		params.require(:patient_new).permit(:name,:phone_no)

	end

	def doctor_params
		 params.require(:new_doctor).permit(:name,:phone_no,:specialization)
	end

	def appointment_params
		 params.require(:new_appointment).permit(:doc_name,:pat_name,:diseases)
	end

end
