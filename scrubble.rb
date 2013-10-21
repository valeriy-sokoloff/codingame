# Read inputs from Standard Input.
# Write outputs to Standard Output.

$letters_weight = {}
$letters_weight[1] = %w(e a i o n r t l s u)
$letters_weight[2] = %w(d g)
$letters_weight[3] = %w(b c m p)
$letters_weight[4] = %w(f h v w y)
$letters_weight[5] = %w(k)
$letters_weight[8] = %w(j x)
$letters_weight[10] = %w(q z)

class Word    
  attr_reader :value, :weight
    
  def initialize(value)
    @remaining_letters = $letters_weight
    @value = value
    @weight = calc_weight
  end    
    
  def calc_weight
    letters = @value.split(//)
    weight = 0
    letters.each do |letter|
      @remaining_letters.each do |k, v|
        if v.include? letter
          weight += k
          # remove used letter from remaining letters
          v = v.delete_at(v.index(letter) || v.length)
          break
        end
      end
    end
    weight
  end
end

lines=STDIN.read.split("\n")
words = lines[1..-2]
available_letters = lines.last

# Remove words with other letters
words = words.delete_if{|word| !word.gsub(/[#{available_letters}]/, '').empty? }

# Convert string to Word objects (with weight)
words = words.map{|word| Word.new(word)}

# First word with max weight
result = words.max_by(&:weight)

puts result.value

