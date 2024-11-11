echo "GET STABLE SERVICE"
oc get svc stable -o yaml -n user1-prod | oc neat
echo
echo "GET canary SERVICE"
oc get svc canary -o yaml -n user1-prod | oc neat
echo
echo "GET ROLLOUT-DEMO"
oc get Rollout rollouts-demo -o yaml -n user1-prod | oc neat
echo
echo "GET ANALYSIS-TEMPLATE"
oc get AnalysisTemplate smoke-tests -n user1-prod -o yaml | oc neat
echo

