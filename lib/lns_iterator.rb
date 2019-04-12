require_relative './sequence_iterator'

class LNSIterator < SequenceIterator
  @name = 'Look-and-say'

  def each
    previous_value = nil

    (1..@sequence_length).map do
      value = if previous_value.nil?
                '1'
              else
                previous_value.gsub(/(\d)\1*/) do |digit_group|
                  "#{digit_group.length}#{digit_group.chars.first}"
                end
              end

      previous_value = value
      yield value
      value
    end
  end
end
