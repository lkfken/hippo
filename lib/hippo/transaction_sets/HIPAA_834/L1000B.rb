module Hippo::TransactionSets
  module HIPAA_834

    class L1000B < Hippo::TransactionSets::Base
      loop_name 'L1000B'

      #Payer
      segment Hippo::Segments::N1,
                :name           => 'Payer',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 700,
                :identified_by => {
                  'N101' => 'IN',
                  'N103' => %w[FI XV 94]
                }

    end
  end
end
