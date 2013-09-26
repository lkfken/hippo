module Hippo::TransactionSets
  module HIPAA_834

    class L2100H < Hippo::TransactionSets::Base
      loop_name 'L2100H' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Drop Off Location'

      segment Hippo::Segments::N3,
              :name => 'Drop Off Location Mail Street Address'

      segment Hippo::Segments::N4,
              :name => 'Drop Off Location Mail City, State, ZIP code'

    end
  end
end
