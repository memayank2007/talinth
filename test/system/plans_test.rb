require "application_system_test_case"

class PlansTest < ApplicationSystemTestCase
  setup do
    @plan = plans(:one)
  end

  test "visiting the index" do
    visit plans_url
    assert_selector "h1", text: "Plans"
  end

  test "should create plan" do
    visit plans_url
    click_on "New plan"

    fill_in "Monthly interview limit", with: @plan. monthly_interview_limit
    check "Priority support" if @plan. priority_support
    fill_in "Code", with: @plan.code
    fill_in "Currency", with: @plan.currency
    check "Custom domain" if @plan.custom_domain
    fill_in "Features", with: @plan.features
    fill_in "Monthly minutes limit", with: @plan.monthly_minutes_limit
    fill_in "Name", with: @plan.name
    fill_in "Price cents", with: @plan.price_cents
    fill_in "Status", with: @plan.status
    click_on "Create Plan"

    assert_text "Plan was successfully created"
    click_on "Back"
  end

  test "should update Plan" do
    visit plan_url(@plan)
    click_on "Edit this plan", match: :first

    fill_in "Monthly interview limit", with: @plan. monthly_interview_limit
    check "Priority support" if @plan. priority_support
    fill_in "Code", with: @plan.code
    fill_in "Currency", with: @plan.currency
    check "Custom domain" if @plan.custom_domain
    fill_in "Features", with: @plan.features
    fill_in "Monthly minutes limit", with: @plan.monthly_minutes_limit
    fill_in "Name", with: @plan.name
    fill_in "Price cents", with: @plan.price_cents
    fill_in "Status", with: @plan.status
    click_on "Update Plan"

    assert_text "Plan was successfully updated"
    click_on "Back"
  end

  test "should destroy Plan" do
    visit plan_url(@plan)
    click_on "Destroy this plan", match: :first

    assert_text "Plan was successfully destroyed"
  end
end
