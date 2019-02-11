require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "visiting the index" do
    visit appointments_url
    assert_selector "h1", text: "Appointments"
  end

  test "creating a Appointment" do
    visit appointments_url
    click_on "New Appointment"

    fill_in "Date", with: @appointment.date
    fill_in "Location", with: @appointment.location
    fill_in "Mechanic", with: @appointment.mechanic_id
    fill_in "Odometer", with: @appointment.odometer
    fill_in "Vehicle", with: @appointment.vehicle_id
    click_on "Create Appointment"

    assert_text "Appointment was successfully created"
    click_on "Back"
  end

  test "updating a Appointment" do
    visit appointments_url
    click_on "Edit", match: :first

    fill_in "Date", with: @appointment.date
    fill_in "Location", with: @appointment.location
    fill_in "Mechanic", with: @appointment.mechanic_id
    fill_in "Odometer", with: @appointment.odometer
    fill_in "Vehicle", with: @appointment.vehicle_id
    click_on "Update Appointment"

    assert_text "Appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointment" do
    visit appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointment was successfully destroyed"
  end
end
