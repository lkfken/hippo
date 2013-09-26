module Hippo::TransactionSets
  module HIPAA_834

    class L2100B < Hippo::TransactionSets::Base
      loop_name 'L2100B' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Incorrect Member Name'

      segment Hippo::Segments::DMG,
              :name => 'Incorrect Member Demographics'
    end
  end
end
