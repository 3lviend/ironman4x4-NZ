Refinery::Admin::PagesController.class_eval do
  # pp_method_builder = Proc.new do
  #   # Get a reference to the  original method with all previous permissions already applied.
  #   page_params_method = instance_method :page_params

  #   # Define the new method.
  #   define_method("page_params_with_page_image_params") do
  #     pi_params = params.require(:page).permit(images_attributes: [:id, :caption, :image_page_id])
  #     page_params_method.bind(self).call().merge(pi_params)
  #   end
  # end

  # alias_method_chain :page_params, :page_image_params, &pp_method_builder
end
