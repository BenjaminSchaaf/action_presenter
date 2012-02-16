module SimplePresenter
  class Railtie < Rails::Railtie
    initialize 'simple_presenter.view_helper' do |app|
      ActiveSupport.on_load :action_controller do
        include SimplePresenter::ViewHelper
      end
    end
  end
end