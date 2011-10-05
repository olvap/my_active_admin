ActiveAdmin.register Contrato do

  controller do
   # load_and_authorize_resource
   # skip_load_resource :only => :index
  end 

  belongs_to :lote

  form do |f|

    f.inputs "Details" do
      f.input :inicio, :as=>:string, :input_html => {:class => 'datepicker',:size=>10}
      f.input :ncuotas
      f.input :cuota
      f.input :cuota_inicial
      f.input :interes
      f.input :observaciones
    end

    f.buttons
  end

  controller do
    def create

      create! do |format|
        format.html {redirect_to admin_lote_path @lote}
      end
    end

    def update

      update! do |format|
        format.html {redirect_to admin_lote_path @lote}
      end
    end

  end
end
