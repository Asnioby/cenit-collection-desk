module Cenit
  module Collection
    require File.expand_path(File.join(*%w[ desk build ]), File.dirname(__FILE__))
    require "cenit/client"

    @desk = Cenit::Collection::Desk::Build.new

    # Include Collection Gem dependency
    # require "cenit/collection/[My Dependency Collection]/build"
    # Collection dependency
    # @desk.register_dep(Cenit::Collection::[My Dependency Collection]::Build.new)

    def self.push_collection (config)
      Cenit::Client.push(@desk.shared_collection.to_json, config)
    end

    def self.show_collection
      @desk.shared_collection
    end

    def self.pull_collection (parameters,config)
      @desk.shared_collection
    end

    def self.push_sample(model, config)
      Cenit::Client.push(@desk.sample_model(model).to_json, config)
    end

    def self.import(data)
      @desk.import_data(data)
    end
  end
end