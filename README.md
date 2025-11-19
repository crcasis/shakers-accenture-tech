# shakers-accenture-tech

Infra structure:

```text
infra/
├── modules/
│   ├── s3-static-site/
│   ├── cloudfront/
│   └── iam/
├── envs/
│   ├── dev/
│   │   ├── main.tf
│   │   └── auto.tfvars
│   └── prod/
│       ├── main.tf
│       └── auto.tfvars
└── provider.tf
```




---

## **Deployment de cada environment**

### **DEV**PROD**
```bash
cd envs/dev or prod
terraform init
terraform plan
terraform apply
```

Cada environment carga automáticamente sus variables desde auto.tfvars o auto.tfvars.

Módulos reutilizables
S3: Crea buckets con versioning y bloqueo de acceso público.
CloudFront: Crea distribution con Origin Access Control (OAC) apuntando al bucket correspondiente.
IAM: Aplica políticas necesarias para permitir acceso desde CloudFront al bucket S3.


Backend remoto (opcional)
Se puede configurar un backend remoto en S3 con DynamoDB para locking:

terraform {
  backend "s3" {
    bucket         = "terraform-state-<env>"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock-<env>"
    encrypt        = true
  }
}
