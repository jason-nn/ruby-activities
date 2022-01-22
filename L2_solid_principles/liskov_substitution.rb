# ----- Bad ----- #

class User
  def initialize(posts)
    # assume posts is an array
    @posts = posts
  end

  def posts
    return @posts
  end
end

class Admin < User
  def posts
    # this violates the liskov substitution principle
    # because the returning of a string instead of an array will
    # lead to unexpected behavior which means in this case admin and user
    # are not interchangeable
    return @posts.join(' ')
  end
end

# ----- Good ----- #

class User
  def initialize(posts)
    # assume posts is an array
    @posts = posts
  end

  def posts
    return @posts
  end
end

class Admin < User
  def posts
    return @posts.group_by { |post| post.author == 'admin' }[true]
  end
end
