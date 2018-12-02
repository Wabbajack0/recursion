def merge_sort(array)
  if array.count <= 1
      return array
  end

  mid = array.count / 2
  arr1 = merge_sort array.slice(0, mid)
  arr2 = merge_sort array.slice(mid, array.count - mid)

  array = []
  i1 = 0
  i2 = 0
  while i1 < arr1.count && i2 < arr2.count
    a = arr1[i1]
    b = arr2[i2]

    if a <= b
      array << a
      i1 += 1
    else
      array << b
      i2 += 1
    end
  end

  while i1 < arr1.count
    array << arr1[i1]
    i1 += 1
  end

  while i2 < arr2.count
    array << arr2[i2]
    i2 += 1
  end

  return array
end

arr = [1,2,3,4,5,6,7,8,9].shuffle
puts "Array to sort: #{arr.join(", ")}"
puts merge_sort(arr).join(", ")
