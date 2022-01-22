# ----- Bad ----- #

class ReportGenerator
  def initialize(data)
    @data = data
  end

  def generate_xml_report
    XmlReportGenerator.new(data).generate
  end
end

# ----- Good ----- #

class ReportGeneratorManager
  def initialize(data, generator = XmlReportGenerator)
    @data = data
    @generator = generator
  end

  def generate_report
    generator.new(data).generate
  end
end
