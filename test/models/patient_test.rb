require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  test "it should not save without present params" do
    patient = Patient.new
    assert_not patient.save
  end

  
end
