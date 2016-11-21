class TrabajosController < ApplicationController
  def new
    @trabajo = Trabajo.new
  end

  def create
    @trabajo = Trabajo.new(trabajo_params)
  	if @trabajo.save
      @trabajo.nro_trabajo=(@trabajo.id).to_i + 999
      @trabajo.save
			redirect_to success_path
  	else
	    	render 'new'
  	end
  end

  private
    def trabajo_params
        params.require(:trabajo).permit(:titulo, :autor, :autores_secundarios, :resumen, :tema, :correo, :correo_gmail, :tipo_presentacion)
    end
end
