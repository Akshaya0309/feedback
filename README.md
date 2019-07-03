# feedback-automation-tests


### Run test cases on your machine
**PreRequisite**
- Node js should be installed 
- Google chrome Browser - latest
- Firefox browser- latest
- Install yarn globally  
  
```
  yarn test:chrome
  yarn test:firefox
  yarn test:chromeheadless

```

### Run test inside docker 
**PreRequisite**
- Install docker 
  
```
docker-compose build
docker-compose run cli yarn:chromeheadless
```
