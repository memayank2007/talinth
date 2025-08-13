require "test_helper"

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_url
    assert_response :success
  end

  test "should create organization" do
    assert_difference("Organization.count") do
      post organizations_url, params: { organization: { ai_model: @organization.ai_model, billing_address: @organization.billing_address, branding_color: @organization.branding_color, city: @organization.city, country: @organization.country, custom_domain: @organization.custom_domain, description: @organization.description, industry: @organization.industry, language: @organization.language, logo_url: @organization.logo_url, max_interviews_per_month: @organization.max_interviews_per_month, max_users: @organization.max_users, name: @organization.name, phone: @organization.phone, plan_expires_at: @organization.plan_expires_at, plan_id: @organization.plan_id, primary_contact_email: @organization.primary_contact_email, primary_contact_name: @organization.primary_contact_name, size: @organization.size, state: @organization.state, status: @organization.status, subdomain: @organization.subdomain, time_zone: @organization.time_zone, zip: @organization.zip } }
    end

    assert_redirected_to organization_url(Organization.last)
  end

  test "should show organization" do
    get organization_url(@organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_url(@organization)
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: { organization: { ai_model: @organization.ai_model, billing_address: @organization.billing_address, branding_color: @organization.branding_color, city: @organization.city, country: @organization.country, custom_domain: @organization.custom_domain, description: @organization.description, industry: @organization.industry, language: @organization.language, logo_url: @organization.logo_url, max_interviews_per_month: @organization.max_interviews_per_month, max_users: @organization.max_users, name: @organization.name, phone: @organization.phone, plan_expires_at: @organization.plan_expires_at, plan_id: @organization.plan_id, primary_contact_email: @organization.primary_contact_email, primary_contact_name: @organization.primary_contact_name, size: @organization.size, state: @organization.state, status: @organization.status, subdomain: @organization.subdomain, time_zone: @organization.time_zone, zip: @organization.zip } }
    assert_redirected_to organization_url(@organization)
  end

  test "should destroy organization" do
    assert_difference("Organization.count", -1) do
      delete organization_url(@organization)
    end

    assert_redirected_to organizations_url
  end
end
