module Hippo::TransactionSets
  module HIPAA_834

    class L2320 < Hippo::TransactionSets::Base
      loop_name 'L2320' #Header Number

      segment Hippo::Segments::COB,
              :name => 'Coordination of Benefits'

      segment Hippo::Segments::REF,
              :name => 'Additional Coordination of Benefits Identifiers'

      segment Hippo::Segments::DTP,
              :name => 'Coordination of Benefits Eligibility Dates'


    end
  end
end
