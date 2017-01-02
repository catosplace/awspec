### exist
```ruby
describe ecs_task_definition('my-ecs-task-definition') do
  it { should be_available }
end
```

### be_active
```ruby
describe ecs_task_definition('my-ecs-task-definition') do
  it { should be_active }
end
```

### be_inactive
```ruby
describe ecs_task_definition('my-ecs-task-definition') do
  it { should be_inactive }
end
```
