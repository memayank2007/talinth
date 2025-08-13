require "application_system_test_case"

class OrganizationsTest < ApplicationSystemTestCase
  setup do
    @organization = organizations(:one)
  end

  test "visiting the index" do
    visit organizations_url
    assert_selector "h1", text: "Organizations"
  end

  test "should create organization" do
    visit organizations_url
    click_on "New organization"

    fill_in "Ai model", with: @organization.ai_model
    fill_in "Billing address", with: @organization.billing_address
    fill_in "Branding color", with: @organization.branding_color
    fill_in "City", with: @organization.city
    fill_in "Country", with: @organization.country
    fill_in "Custom domain", with: @organization.custom_domain
    fill_in "Description", with: @organization.description
    fill_in "Industry", with: @organization.industry
    fill_in "Language", with: @organization.language
    fill_in "Logo url", with: @organization.logo_url
    fill_in "Max interviews per month", with: @organization.max_interviews_per_month
    fill_in "Max users", with: @organization.max_users
    fill_in "Name", with: @organization.name
    fill_in "Phone", with: @organization.phone
    fill_in "Plan expires at", with: @organization.plan_expires_at
    fill_in "Plan", with: @organization.plan_id
    fill_in "Primary contact email", with: @organization.primary_contact_email
    fill_in "Primary contact name", with: @organization.primary_contact_name
    fill_in "Size", with: @organization.size
    fill_in "State", with: @organization.state
    fill_in "Status", with: @organization.status
    fill_in "Subdomain", with: @organization.subdomain
    fill_in "Time zone", with: @organization.time_zone
    fill_in "Zip", with: @organization.zip
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "should update Organization" do
    visit organization_url(@organization)
    click_on "Edit this organization", match: :first

    fill_in "Ai model", with: @organization.ai_model
    fill_in "Billing address", with: @organization.billing_address
    fill_in "Branding color", with: @organization.branding_color
    fill_in "City", with: @organization.city
    fill_in "Country", with: @organization.country
    fill_in "Custom domain", with: @organization.custom_domain
    fill_in "Description", with: @organization.description
    fill_in "Industry", with: @organization.industry
    fill_in "Language", with: @organization.language
    fill_in "Logo url", with: @organization.logo_url
    fill_in "Max interviews per month", with: @organization.max_interviews_per_month
    fill_in "Max users", with: @organization.max_users
    fill_in "Name", with: @organization.name
    fill_in "Phone", with: @organization.phone
    fill_in "Plan expires at", with: @organization.plan_expires_at.to_s
    fill_in "Plan", with: @organization.plan_id
    fill_in "Primary contact email", with: @organization.primary_contact_email
    fill_in "Primary contact name", with: @organization.primary_contact_name
    fill_in "Size", with: @organization.size
    fill_in "State", with: @organization.state
    fill_in "Status", with: @organization.status
    fill_in "Subdomain", with: @organization.subdomain
    fill_in "Time zone", with: @organization.time_zone
    fill_in "Zip", with: @organization.zip
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "should destroy Organization" do
    visit organization_url(@organization)
    click_on "Destroy this organization", match: :first

    assert_text "Organization was successfully destroyed"
  end
end
