module Hippo::TransactionSets
  module HIPAA_834

    class L1000C < Hippo::TransactionSets::Base
      loop_name 'L1000C'

      #TPA/Broker Name
      segment Hippo::Segments::N1,
              :name          => 'TPA/Broker Name',
              :minimum       => 0,
              :maximum       => 2,
              :position      => 700,
              :identified_by => {
                  'N101' => %w[BO TV],
                  'N103' => %w[FI XV 94]
              }
      loop    Hippo::TransactionSets::HIPAA_834::L1100C,
              :name           => 'TPA/Broker Account Information',
              :minimum        => 1,
              :maximum        => 99999,
              :position       => 1200

    end
  end
end
