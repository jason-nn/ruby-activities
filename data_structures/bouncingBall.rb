def bouncingBall(h, bounce, window)
  return -1 if (h <= 0 || bounce <= 0 || bounce >= 1 || window >= h)

  views = 1

  while h * bounce > window
    h *= bounce
    views += 2
  end

  return views
end
