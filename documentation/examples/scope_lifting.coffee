determineSuccess = (x, list) =>
  if x > 3
    safeNumber = x
    polled = true
  else
    safeNumber = -12
  item = 12
  for item, index in list when item < 3
    onSuccess x, ->
      alert(i)
  [safeNumber, polled, index, item]
