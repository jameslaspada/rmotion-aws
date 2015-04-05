module RMOTION
  class Aws
    def initialize(key, secret_key)
      @key = key
      @secret_key = secret_key
      # getConnection
    end

    def getConnection
      creds = Aws::Credentials.new(@key, @secret_key)
      puts "creds are #{creds.set?.to_s}"
      ec2 = Aws::EC2::Resource.new(region:'us-east-1', credentials: creds)
      instances = ec2.instances
    end
  end
end