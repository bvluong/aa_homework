fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def nsquared(arr)
  longest_fish = ""
  prc = Proc.new {|x,y| x <=> y}
  swap = true
  while swap
    swap = false
    (1...arr.length).step do |idx|
      if prc.call(arr[idx-1].length,arr[idx].length) > 0
        arr[idx-1], arr[idx] = arr[idx] , arr[idx-1]
        swap = true
      end
    end
  end
  arr.last
end


def merge_sort(arr)
  return arr if arr.length <= 1
  prc ||= Proc.new {|x,y| x.length <=> y.length}
  middle = arr.length/2
  left = merge_sort(arr.take(middle))
  right = merge_sort(arr.drop(middle))
  merge(left,right,&prc)
end

def merge(left,right,&prc)
  new_arr = []
  until left.empty? || right.empty?
    if prc.call(left[0],right[0]) <= 0
      new_arr << left.shift
    else
      new_arr << right.shift
    end
  end
  new_arr.concat(left).concat(right)
end

def linear_check(arr)
  longest_fish = ""
  arr.each do |x|
    longest_fish = x if x.length > longest_fish.length
  end
  longest_fish
end

p merge_sort(fish).last
p nsquared(fish)
p linear_check(fish)
