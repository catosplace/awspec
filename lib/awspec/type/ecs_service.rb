module Awspec::Type
  class EcsService < Base
    aws_resource Aws::ECS::Types::Service

    attr_accessor :cluster_name

    def initialize(service)
      super
      @display_name = service
    end

    def resource_via_client
      @resource_via_client ||= find_ecs_service(@cluster_name, @display_name)
    end

    def id
      @id ||= resource_via_client.service_name if resource_via_client
    end

    def cluster_name
      @cluster_name || 'default'
    end

    def active?
      resource_via_client.status == 'ACTIVE'
    end

    def draining?
      resource_via_client.status == 'DRAINING'
    end

    def inactive?
      resource_via_client.status == 'INACTIVE'
    end
  end
end
