def linear_search(array, elements_to_search, target)
  answer = nil
  for i in 0..(elements_to_search - 1)
    answer = i if array[i] == target
  end
  return answer
end

def better_linear_search(array, elements_to_search, target)
  for i in 0..(elements_to_search - 1)
    return i if array[i] == target
  end
  return nil
end

def sentinel_search(array, elements_to_search, target)
  last_value = array[elements_to_search - 1]
  array[elements_to_search - 1] = target
  i = 0
  while array[i] != target
    i += 1
  end
  array[elements_to_search - 1] = last_value
  if (i < (elements_to_search - 1)) || (array[elements_to_search - 1] == target)
    return i
  else
    return nil
  end
end

def recursive_search(array, elements_to_search, target, i)
  if i > (elements_to_search - 1)
    return nil
  else
    if array[i] == target
      return i
    else
      recursive_search(array, elements_to_search, target, (i + 1))
    end
  end
end

def binary_search(array, elements_to_search, target)
  low = 0
  high = (elements_to_search - 1)
  while low <= high
    middle = ((low + high) / 2)
    return middle if array[middle] == target
    if array[middle] > target
      high = middle - 1
    else
      low = middle + 1
    end
  end
  return nil
end

def recursive_binary(array, low, high, target)
  return nil if low > high
  middle = ((low + high) / 2)
  return middle if array[middle] == target
  if array[middle] > target
    recursive_binary(array, low, middle - 1, target)
  else
    recursive_binary(array, middle + 1, high, target)
  end
end
