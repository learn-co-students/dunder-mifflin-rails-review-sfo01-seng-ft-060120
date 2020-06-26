class EmployeesController < ApplicationController
    before_action :set_employee, only:[:show, :edit, :update]

    def index
        @employees = Employee.all 
    end


    def new
        @employee = Employee.new
    end

    def create 
        @employee = Employee.new(employee_params)
        #byebug
        @employee.save 
        redirect_to @employee
    end

    def update
        @employee.update(employee_params)
        redirect_to @employee
    end

    private

    def set_employee
        @employee = Employee.find(params[:id])
    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end


end
