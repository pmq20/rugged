module Rugged
  class Diff
    class Patch
      include Enumerable
      alias each each_hunk

      alias size hunk_count
      alias count hunk_count

      attr_accessor :owner
      alias diff owner

      alias binary? binary

      def inspect
        "#<#{self.class.name}:#{object_id} {old_file: #{old_file.inspect}, new_file: #{new_file.inspect}, similarity: #{similarity.inspect}, status: #{status.inspect}, binary: #{binary.inspect}>"
      end

      def hunks
        each_hunk.to_a
      end
    end
  end
end
