# All files in the 'lib' directory will be loaded
# before nanoc starts compiling, in alphabetical
# order. This file must be last (hence "zz" in the
# filename).

require "cgi"

include Nanoc::Helpers::Rendering
include NewsItemsHelper
include SummaryExtractorHelper
