module Spree
  class UnifaunExportSetting < Preferences::Configuration
    preference :box_weight, :integer, default: 0
    preference :sender_quick_id, :integer, default: 1
    preference :contents, :string, default: "Clothing"
    preference :encoding, :string, default: "iso-8859-1"
    def encodings
      ['iso-8859-1','utf-8']
    end
  end
end
