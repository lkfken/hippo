module Hippo::TransactionSets
  module HIPAA_834

    class L2000 < Hippo::TransactionSets::Base
      loop_name 'L2000' #Header Number

      segment Hippo::Segments::INS,
              :name          => 'Member Level Detail',
              :minimum       => 1,
              :maximum       => 1,
              :position      => 100

      segment Hippo::Segments::REF,
              :name          => 'Subscriber Identifier',
              :minimum       => 1,
              :maximum       => 1,
              :position      => 200,
              :identified_by => {
                  'REF01' => '0F'
              }
      segment Hippo::Segments::REF,
              :name          => 'Member Policy Number',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 200,
              :identified_by => {
                  'REF01' => '1L'
              }
      segment Hippo::Segments::REF,
              :name          => 'Member Supplemental Identifier',
              :minimum       => 0,
              :maximum       => 13,
              :position      => 200,
              :identified_by => {
                  'REF01' => %w[17 23 3H 4A 6O ABB D3 DX F6 P5 Q4 QQ ZZ]
              }
      segment Hippo::Segments::DTP,
              :name          => 'Member Level Dates',
              :minimum       => 0,
              :maximum       => 24,
              :position      => 250,
              :identified_by => {
                  'DTP01' => %w[050 286 296 297 300 301 3030 336 337 338 339 340 341 350 351 356 357 383 385 386 393 394 473 474]
              }

      loop Hippo::TransactionSets::HIPAA_834::L2100A,
           :name     => 'Member Name',
           :minimum  => 1,
           :maximum  => 1,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100B,
           :name     => 'Incorrect Member Name',
           :minimum  => 0,
           :maximum  => 1,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100C,
           :name     => 'Member Mailing Address',
           :minimum  => 0,
           :maximum  => 1,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100D,
           :name     => 'Member Employer',
           :minimum  => 0,
           :maximum  => 3,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100E,
           :name     => 'Member School',
           :minimum  => 0,
           :maximum  => 3,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100F,
           :name     => 'Custodial Parent',
           :minimum  => 0,
           :maximum  => 1,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100G,
           :name     => 'Responsible Person',
           :minimum  => 0,
           :maximum  => 13,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2100H,
           :name     => 'Drop Off Location',
           :minimum  => 0,
           :maximum  => 1,
           :position => 300

      loop Hippo::TransactionSets::HIPAA_834::L2200,
           :name     => 'Disability Information',
           :minimum  => 0,
           :maximum  => 99999,
           :position => 2000

      loop Hippo::TransactionSets::HIPAA_834::L2300,
           :name     => 'Health Coverage',
           :minimum  => 0,
           :maximum  => 99,
           :position => 2600

      segment Hippo::Segments::LS,
              :name          => 'Additional Reporting Categories',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 6880,
              :identified_by => {
                  'LS01' => '2700'
              }
      loop Hippo::TransactionSets::HIPAA_834::L2710,
           :name     => 'Member Reporting Categories',
           :minimum  => 0,
           :maximum  => 99999,
           :position => 6881

      segment Hippo::Segments::LE,
              :name          => 'Additional Reporting Categories Loop Termination',
              :minimum       => 0,
              :maximum       => 1,
              :position      => 6885,
              :identified_by => {
                  'LE01' => '2700'
              }
    end
  end
end
