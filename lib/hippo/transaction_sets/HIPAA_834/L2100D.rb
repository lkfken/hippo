module Hippo::TransactionSets
  module HIPAA_834

    class L2100D < Hippo::TransactionSets::Base
      loop_name 'L2100D' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Member Employer'

      segment Hippo::Segments::PER,
              :name => 'Member Employer Communications Numbers'

      segment Hippo::Segments::N3,
              :name => 'Member Employer Mail Street Address'

      segment Hippo::Segments::N4,
              :name => 'Member Employer Mail City, State, ZIP code'

    end
  end
end
