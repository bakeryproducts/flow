import os
import mlflow


artifact_storage_path = os.environ['ARTIFACT_PATH']
store_storage_path = os.environ['STORE_PATH']
flow_server_port = os.environ['FLOW_SERVER_PORT']

uri = f'http://web:{flow_server_port}'
e_name = 'exp5'
run_name = 'test_run1'
# a_path = 'http://127.0.0.1:5042:/mnt/artifacts'
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


mlflow.log_artifact('MLproject',)
mlflow.log_artifact('Dockerfile',)
mlflow.log_artifact('src/run_test.py', 'src')

mlflow.end_run()
