{{- define "deployment.tpl"}}
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Values.appName }}-dep
spec:
  replicas: 1
  selector:
    matchLabels:
      app: {{.Values.appName}}-app
  template:
    metadata:
      labels:
        app: {{.Values.appName}}-app
    spec:
      containers:
        - name: {{.Values.appName}}-container
          image: {{.Values.image}}:{{.Values.tag}}
          ports:
            - containerPort: {{.Values.containerPort}}
          env:
            {{- range .Values.envs}}
            - name: {{.name}}
              value: {{.value}}
            {{- end}}
{{- end}}