module Hippo::TransactionSets
  module HIPAA_834

    class L1000A < Hippo::TransactionSets::Base
      loop_name 'L1000A'

      #Sponsor Name
      segment Hippo::Segments::N1,
                :name           => 'Sponsor Name',
                :minimum        => 1,
                :maximum        => 1,
                :position       => 700,
                :identified_by => {
                  'N101' => 'P5',
                  'N103' => %w[24 94 FI]
                }
    end
  end
end
