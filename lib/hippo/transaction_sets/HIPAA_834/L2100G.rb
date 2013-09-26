module Hippo::TransactionSets
  module HIPAA_834

    class L2100G < Hippo::TransactionSets::Base
      loop_name 'L2100G' #Header Number

      segment Hippo::Segments::NM1,
              :name => 'Responsible Person'

      segment Hippo::Segments::PER,
              :name => 'Responsible Person Communications Numbers'

      segment Hippo::Segments::N3,
              :name => 'Responsible Person Mail Street Address'

      segment Hippo::Segments::N4,
              :name => 'Responsible Person Mail City, State, ZIP code'

    end
  end
end
