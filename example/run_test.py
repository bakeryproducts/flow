import mlflow

uri = 'http://127.0.0.1:5042'
e_name = 'exp#4'
run_name = 'test_run4'
# a_path = 'http://127.0.0.1:5042:/mnt/artifacts'
a_path = '/home/dockeruser/art_store/'
print('Start!')
mlflow.set_tracking_uri(uri)
# mlflow.create_experiment(e_name)
mlflow.set_experiment(e_name)
# mlflow.create_experiment(e_name, artifact_location=a_path)
print('Experiment created!')
# print(mlflow.get_artifact_uri())

mlflow.start_run(run_name=run_name)
mlflow.log_param('alpha', 42)

for i in range(10):
    mlflow.log_metric('acc', i, step=i)

mlflow.log_artifact('MLproject')
# mlflow.log_artifact('MLproject', artifact_path=a_path)
# mlflow.log_artifact('Dockerfile')
# mlflow.log_artifact('run_test.py')
mlflow.end_run()
