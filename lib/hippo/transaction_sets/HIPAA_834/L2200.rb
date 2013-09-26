module Hippo::TransactionSets
  module HIPAA_834

    class L2200 < Hippo::TransactionSets::Base
      loop_name 'L2200' #Header Number

      segment Hippo::Segments::DSB,
              :name => 'Disability Information'

      segment Hippo::Segments::DTP,
              :name => 'Disability Eligibility Dates'

    end
  end
end
