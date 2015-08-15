require "rexml/document"

module SummaryExtractorHelper

  # 2015-08-15: This file is not in use anymore. Summary is extracted
  # in other code using <%= item[:summary] %> and not anymore from
  # posthtml. Posthtml or compiled content does not contain summary,
  # because summary in inserted before it in layouts/blogpost_en.erb
  # to page and only after that part using yield is in posthtml.

  # Uses Ruby's own REXML library to extract the first paragraph
  # of text from the given HTML.
  def extract_summary(posthtml)
    doc = REXML::Document.new("<root>#{posthtml}</root>")
    "<p>" + doc.get_elements('//p').first.text + "</p>"

  end

  # Some tests:
  # "<p>" + posthtml + "</p>"
  # doc.get_elements('//p//b[@id="actualsummary"]').first.text

end
