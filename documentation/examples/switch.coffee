switch day
  case "Mon" then go work
  case "Tue" then go relax
  case "Thu" then go iceFishing
  case "Fri", "Sat"
    if day is bingoDay
      go(bingo)
      go(dancing)
  case "Sun" then go church
  default go(work)
