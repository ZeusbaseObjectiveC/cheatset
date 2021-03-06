module Cheatset
  module DSL
    class Category < Base
      attr_reader :entries
      define_attrs :id, :hasEntry
      define_list_attrs :header

      def initialize(&block)
        @entries = []
        super(&block)
      end
      def entry(&block)
        @entries << Cheatset::DSL::Entry.new(&block)
      end
    end
  end
end
