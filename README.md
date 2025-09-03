<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=cylinder&colorGradient=0078D4,5C4EE5&height=200&fontSize=45&fontColor=FFFFFF&text=Azure%20Load%20Balancer%20IaC&animation=fadeIn&desc=Terraform%20%E2%80%94%20Modular%20%E2%80%94%20Production%20Ready&descSize=20&descAlign=64&descAlignY=75" alt="Azure Load Balancer"/>
</p>

<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=22&pause=1000&color=0A66C2&center=true&vCenter=true&width=600&lines=Automated+Azure+Load+Balancer;Terraform+Modular+Infrastructure;Secure+%7C+Scalable+%7C+Reusable" alt="Typing SVG" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Tool-Terraform-5C4EE5?style=for-the-badge&logo=terraform&logoColor=white"/>
  <img src="https://img.shields.io/badge/Cloud-Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white"/>
  <img src="https://img.shields.io/badge/Service-LoadBalancer-darkblue?style=for-the-badge&logo=azuredevops&logoColor=white"/>
  <img src="https://img.shields.io/badge/Security-KeyVault-green?style=for-the-badge&logo=microsoftazure"/>
</p>

---

## 🚀 Overview

This project provisions an **Azure Load Balancer** with Terraform in a **modular structure**.  
It includes **backend pool**, **health probes**, **public IPs**, **subnets**, and supports **VM scaling**.  
Secure configurations are applied with **Azure Key Vault** integration.

---

## 📁 Folder Structure

```bash
azure_loadbalancer/
├── Env/
│   ├── main.tf
│   ├── provider.tf
├── Module/
│   ├── bastion/
│   ├── keyvault/
│   ├── loadbalancer/
│   │   ├── backendpool.tf
│   │   ├── health.tf
│   │   ├── variables.tf
│   ├── mysql/
│   ├── public-ip/
│   ├── resource/
│   ├── subnet/
│   ├── vm/
│   └── vnet/
├── .gitignore
└── README.md
```

---

## 💡 Key Features

- ⚡ Deploys **Azure Load Balancer** with Terraform
- 🔐 Secure secret management using **Key Vault**
- 🧩 Clean **modular structure** for reusability
- 🌐 Configures **backend pools** & **health probes**
- 🚀 CI/CD ready for GitHub Actions / Azure DevOps
- 📦 Scalable design for production workloads

---

## 🧪 How to Deploy

```bash
# 1. Authenticate to Azure
az login

# 2. Navigate to environment directory
cd Env

# 3. Initialize Terraform
terraform init

# 4. Validate the configuration
terraform validate

# 5. Preview infrastructure changes
terraform plan

# 6. Apply configuration
terraform apply -auto-approve

# 7. Destroy resources when not needed
terraform destroy -auto-approve
```

---

## 📄 .gitignore

```gitignore
# Local .terraform directories
.terraform/

# Terraform state files
*.tfstate
*.tfstate.*

# Crash logs
crash.log

# Sensitive variable files
*.tfvars
*.tfvars.json

# Backup & plan files
*.backup
*.tfplan
terraform.lock.hcl
```

---

## 📸 Screenshots

> Add infra screenshots here:

```html
<img src="./screenshots/terraform_plan.png" width="700"/>
<img src="./screenshots/terraform_apply.png" width="700"/>
```

---

## 👨‍💻 Author

**Tushar Mishra** – DevOps Engineer | Azure | Terraform  
📧 tusharmishra2902@gmail.com  
🔗 [LinkedIn](https://linkedin.com/in/tushar-mishra-02461235a)  
🐙 [GitHub](https://github.com/tushar-2902)

---

## ⚖️ License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

---

<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&colorGradient=0078D4,5C4EE5&height=120&section=footer"/>
</p>
