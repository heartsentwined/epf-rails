require 'rails'
require 'epf/source'
require 'epf/rails/version'
require 'epf/rails/engine'

module Epf
  module Rails
    class Railtie < ::Rails::Railtie
      initializer 'epf.setup-vendor', :group => :all do |app|
        app.assets.append_path \
          File.expand_path('../', ::Epf::Source.bundled_path)

        # conditional for BC-compatible with pre-source-map versions
        if ::Epf::Source.respond_to?(:bundled_map_path)
          app.assets.append_path \
            File.expand_path('../', ::Epf::Source.bundled_map_path)
        end
      end
    end
  end
end
