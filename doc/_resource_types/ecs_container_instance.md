### exist
```ruby
describe ecs_container_instance('my-ecs-container-instance') do
  it { should be_available }
end
```

### be_active
```ruby
describe ecs_container_instance('my-ecs-container-instance') do
  it { should be_active }
end
```

### be_inactive
```ruby
describe ecs_container_instance('my-ecs-container-instance') do
  it { should be_inactive }
end
```
