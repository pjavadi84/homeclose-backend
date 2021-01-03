require "application_system_test_case"

class DestinationsTest < ApplicationSystemTestCase
  setup do
    @destination = destinations(:one)
  end

  test "visiting the index" do
    visit destinations_url
    assert_selector "h1", text: "Destinations"
  end

  test "creating a Destination" do
    visit destinations_url
    click_on "New Destination"

    check "Available" if @destination.available
    fill_in "Capacity", with: @destination.capacity
    fill_in "Description", with: @destination.description
    fill_in "Price", with: @destination.price
    fill_in "Zipcode", with: @destination.zipcode
    click_on "Create Destination"

    assert_text "Destination was successfully created"
    click_on "Back"
  end

  test "updating a Destination" do
    visit destinations_url
    click_on "Edit", match: :first

    check "Available" if @destination.available
    fill_in "Capacity", with: @destination.capacity
    fill_in "Description", with: @destination.description
    fill_in "Price", with: @destination.price
    fill_in "Zipcode", with: @destination.zipcode
    click_on "Update Destination"

    assert_text "Destination was successfully updated"
    click_on "Back"
  end

  test "destroying a Destination" do
    visit destinations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Destination was successfully destroyed"
  end
end
