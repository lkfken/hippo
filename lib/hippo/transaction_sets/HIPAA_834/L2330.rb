module Hippo::TransactionSets
  module HIPAA_834

    class L2330 < Hippo::TransactionSets::Base
      loop_name 'L2330' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Coordination of Benefits Related Entity'

      segment Hippo::Segments::N3,
              :name => 'Coordination of Benefits Related Entity Address'

      segment Hippo::Segments::N4,
              :name => 'Coordination of Benefits Other insurance Company City, State, ZIP code'

      segment Hippo::Segments::PER,
              :name => 'Administrative Communications Contact'

      segment Hippo::Segments::LS,
              :name => 'Additional Reporting Categories'

    end
  end
end
