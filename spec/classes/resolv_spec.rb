require 'spec_helper'

describe 'resolv', :type => :class do

  let :facts do
    {
      :domain => 'defaultdomain.com'
    }
  end

  context 'using default values' do
    it do
      should contain_file('/etc/resolv.conf')
        .with_content(/search defaultdomain.com/)
        .with_content(/domain defaultdomain.com/)
        .with_content(/nameserver 8.8.8.8/)
        .with_content(/nameserver 8.8.4.4/)
    end
  end

  context 'using parms' do
    let :params do
      {
        :domainname  => 'example.com',
        :searchpath  => ['example.com', 'example2.com'],
        :nameservers => ['1.2.3.4', '5.6.7.8']
      }
    end

    it do
      should contain_file('/etc/resolv.conf')
        .with_content(/search example.com example2.com/)
        .with_content(/domain example.com/)
        .with_content(/nameserver 1.2.3.4/)
        .with_content(/nameserver 5.6.7.8/)
    end
  end
end
