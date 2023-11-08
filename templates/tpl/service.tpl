{{- define "service.tpl"}}
apiVersion: v1
kind: Service
metadata:
  name: react-svc
spec:
  type: ClusterIP
  selector:
    app: react-app
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
{{- end}}