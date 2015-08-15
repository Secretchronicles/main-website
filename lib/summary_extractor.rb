require "rexml/document"

module SummaryExtractorHelper

  # Uses Ruby's own REXML library to extract the first paragraph
  # of text from the given HTML.
  def extract_summary(posthtml)
    doc = REXML::Document.new("<root>#{posthtml}</root>")
    "<p>" + doc.get_elements('//p').first.text + "</p>"
  end

end
