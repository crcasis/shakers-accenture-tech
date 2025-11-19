# shakers-accenture-tech

Infra structure:

infra/
├── modules/
│   ├── s3-static-site/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── cloudfront/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── iam/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── envs/
│   ├── dev/
│   │   ├── dev.auto.tfvars
│   │   └── main.tf
│   └── prod/
│       ├── prod.auto.tfvars
│       └── main.tf
└── provider.tf
