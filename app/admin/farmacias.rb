ActiveAdmin.register Farmacia do
  controller do
    def show
      @json = Farmacia.find(params[:id]).to_gmaps4rails
      show!
    end
  end
  
  show :title=> :name do
    div do
      attributes_table_for farmacia,
       :id, :name, :ubicacion,:latitude, :longitude
    end
    panel "Mapa" do
      image_tag "http://maps.google.com/maps/api/staticmap?center=#{farmacia.ubicacion}&zoom=16&size=512x512&maptype=roadmap
&markers=color:blue|label:F|#{farmacia.latitude},#{farmacia.longitude}&sensor=false"
    end
  end
  
  form do |f|
    f.inputs "detalles" do
      f.input :name
      f.input :ubicacion
      f.input :localidad
      f.input :obras, :as => :check_boxes, :collection => Obra.all
    end
    f.buttons
  end
  #sidebar :versionado, :partial => "layouts/gmapsfarmacias", :only => :show
end
