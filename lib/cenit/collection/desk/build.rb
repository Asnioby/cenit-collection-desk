require 'cenit/collection/desk/version'
require 'cenit/collection/base/build'

module Cenit
  module Collection
    module Desk
      class Build < Cenit::Collection::Base::Build
        def initialize
          super(__dir__)
        end
      end
    end
  end
end