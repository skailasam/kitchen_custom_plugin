# frozen_string_literal: true

control "file_check_external_provider" do
  describe file('./test/fixtures/tf_module/terraform.d/plugins/linux_amd64/terraform-provider-extip') do
    it { should exist }
  end
end
