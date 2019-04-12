class SequenceGenerator
  def initialize
    @sequences = {}
  end

  def generate(iterator, length)
    sequence_name = iterator.name

    @sequences[sequence_name] = if @sequences[sequence_name].nil?
                                  {}
                                else
                                  @sequences[sequence_name]
                                end

    if @sequences[sequence_name][length].nil?
      @sequences[sequence_name][length] = iterator.new(length).each { |seq| }
    else
      @sequences[sequence_name][length]
    end
  end
end
