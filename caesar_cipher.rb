#caesar_cipher
def caesar_cipher(str, shift)
  arr = str.split('')
  shift.times do
    arr.map! do |x|
      if x == "z"
        x = "a"
      elsif x == "Z"
        x = "A"
      elsif ("a".."y").include?(x) || ("A".."Y").include?(x)
        x = x.next
      else
        x = x
      end
    end
  end
  arr.join('')
end
