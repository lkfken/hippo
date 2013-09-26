module Hippo::TransactionSets
  module HIPAA_834

    class L2100C < Hippo::TransactionSets::Base
      loop_name 'L2100C' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Member Mailing Address'

      segment Hippo::Segments::N3,
              :name => 'Member Mail Street Address'

      segment Hippo::Segments::N4,
              :name => 'Member Mail City, State, ZIP code'

    end
  end
end
