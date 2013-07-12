class PSD
  class EngineData
    class Text
      attr_reader   :text
      attr_accessor :line

      def initialize(text)
        @text = text.split("\n")
        @line = 0
      end

      def current
        return nil if at_end?
        @text[@line].gsub(/\t/, "").strip
      end

      def at_end?
        @text[@line].nil?
      end

      def next!
        @line += 1
        current
      end

      def next
        @text[@line + 1]
      end

      def length
        @text.length
      end
      alias :size :length
    end
  end
end