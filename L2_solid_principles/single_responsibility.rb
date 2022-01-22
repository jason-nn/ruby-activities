# ----- Bad ----- #

class FinancialReportMailer
  def generate_report
    # generate report
  end

  def send_report
    # send report
  end
end

# ----- Good ----- #

class FinancialReportGenerator
  def generate
    # generate report
  end
end

class FinancialReportMailer
  def send
    # send report
  end
end
