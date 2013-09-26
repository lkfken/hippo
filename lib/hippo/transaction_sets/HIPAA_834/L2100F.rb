module Hippo::TransactionSets
  module HIPAA_834

    class L2100F < Hippo::TransactionSets::Base
      loop_name 'L2100F' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Custodial Parent'

      segment Hippo::Segments::PER,
              :name => 'Custodial Parent Communications Numbers'

      segment Hippo::Segments::N3,
              :name => 'Custodial Parent Mail Street Address'

      segment Hippo::Segments::N4,
              :name => 'Custodial Parent Mail City, State, ZIP code'

    end
  end
end
