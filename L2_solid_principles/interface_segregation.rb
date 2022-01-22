# ----- Bad ----- #

class AppInterface
  def approve_user
    # approve user logic (used by admin)
  end

  def purchase_stock
    # purchase stock logic (used by user)
  end
end

class User
  def initialize
    @app = AppInterface.new
  end

  def purchase_stock
    @app.purchase_stock
  end
end

class Admin
  def initialize
    @app = AppInterface.new
  end

  def approve_user
    @app.approve_user
  end
end

# ----- Good ----- #

class AppUserInterface
  def purchase_stock
    # purchase stock logic (used by user)
  end
end

class AppAdminInterface
  def approve_user
    # approve user logic (used by admin)
  end
end

class User
  def initialize
    @app = AppUserInterface.new
  end

  def purchase_stock
    @app.purchase_stock
  end
end

class Admin
  def initialize
    @app = AppAdminInterface.new
  end

  def approve_user
    @app.approve_user
  end
end
