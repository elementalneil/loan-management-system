require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @application = applications(:one)
  end

  test "visiting the index" do
    visit applications_url
    assert_selector "h1", text: "Applications"
  end

  test "should create application" do
    visit applications_url
    click_on "New application"

    fill_in "Age", with: @application.age
    fill_in "Amount", with: @application.amount
    fill_in "Duration", with: @application.duration
    fill_in "Name", with: @application.name
    fill_in "Occupation", with: @application.occupation
    fill_in "Phone number", with: @application.phone_number
    fill_in "Purpose", with: @application.purpose
    click_on "Create Application"

    assert_text "Application was successfully created"
    click_on "Back"
  end

  test "should update Application" do
    visit application_url(@application)
    click_on "Edit this application", match: :first

    fill_in "Age", with: @application.age
    fill_in "Amount", with: @application.amount
    fill_in "Duration", with: @application.duration
    fill_in "Name", with: @application.name
    fill_in "Occupation", with: @application.occupation
    fill_in "Phone number", with: @application.phone_number
    fill_in "Purpose", with: @application.purpose
    click_on "Update Application"

    assert_text "Application was successfully updated"
    click_on "Back"
  end

  test "should destroy Application" do
    visit application_url(@application)
    click_on "Destroy this application", match: :first

    assert_text "Application was successfully destroyed"
  end
end
