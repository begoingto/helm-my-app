{{- define "service.tpl"}}
apiVersion: v1
kind: Service
metadata:
  name: {{.Values.appname}}-svc
spec:
  type: ClusterIP
  selector:
    app: {{.Values.appname}}-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
{{- end}}