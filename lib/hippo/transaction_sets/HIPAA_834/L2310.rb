module Hippo::TransactionSets
  module HIPAA_834

    class L2310 < Hippo::TransactionSets::Base
      loop_name 'L2310' #Header Number

      segment Hippo::Segments::HD,
              :name => 'Health Coverage'

      segment Hippo::Segments::DTP,
              :name => 'Health Coverage Dates'

      segment Hippo::Segments::AMT,
              :name => 'Health Coverage Policy'

      segment Hippo::Segments::REF,
              :name => 'Health Coverage Policy Number'

      segment Hippo::Segments::REF,
              :name => 'Prior Coverage Months'

      segment Hippo::Segments::IDC,
              :name => 'Identification Card'
    end
  end
end
