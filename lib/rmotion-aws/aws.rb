module RMOTION
  class Aws
    def initialize(key, secret_key)
      @key = key
      @secret_key = secret_key
      # getConnection
    end

    def getConnection
      creds = Aws::Credentials.new(@key, @secret_key)
      ec2 = Aws::EC2::Resource.new(region:'us-east-1', credentials: creds)
      instances = ec2.instances
    end

    def test
      keys = [@key,@secret_key]
      instances = ["instance1","instance2"]
      return ({
        :keys => keys, 
        :instances => instances
        })
    end
  end
end