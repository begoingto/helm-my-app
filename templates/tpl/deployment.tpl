{{- define "deployment.tpl"}}
apiVersion: apps/v1
kind: Deployment
metadata:
  name: react-dep
spec:
  replicas: 1
  selector:
    matchLabels:
      app: react-app
  template:
    metadata:
      labels:
        app: react-app
    spec:
      containers:
        - name: react-app
          image: 69966/reactjsimage:latest
          ports:
            - containerPort: 80
{{- end}}