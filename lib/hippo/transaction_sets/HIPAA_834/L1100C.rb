module Hippo::TransactionSets
  module HIPAA_834

    class L1100C < Hippo::TransactionSets::Base
      loop_name 'L1100C'

      segment Hippo::Segments::ACT,
              :name     => 'TPA/Broker Account Information',
              :minimum  => 0,
              :maximum  => 1,
              :position => 1200

    end
  end
end
