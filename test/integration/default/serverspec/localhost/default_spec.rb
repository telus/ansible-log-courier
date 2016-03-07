require 'spec_helper'

describe 'ansible-log-courier::default' do

  describe package('log-courier') do
    it { should be_installed.by('apt') }
  end

  describe service('log-courier') do
    it { should be_running.under('upstart') }
  end

end
