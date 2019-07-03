# feedback-tests

## feedback-automation-tests
git clone git@github.com:Akshaya0309/feedback.git



location - feedback/src/tests/feature/feedbackbutton.feature

  
  
### Run test cases on your machine
**PreRequisite**
- Node js should be installed 
- Google chrome Browser - latest
- Firefox browser- latest
- Install yarn globally  # feedback-tests
  
  Go inside the feedback folder and run below commands 
  
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

## feedback-manual-tests

Please find  manual test cases inside testcasefeedback.feature file

feedback/testcasesfeedback.feature

