# 🚀 Proyecto Multi-AZ en AWS con Terraform

Este proyecto implementa una infraestructura **Multi-AZ (Multi Availability Zone)** en **AWS** utilizando **Terraform**.  
El objetivo es crear un entorno altamente disponible, escalable y automatizado siguiendo buenas prácticas de **Infraestructura como Código (IaC)**.  

## 📌 Recursos creados

- **VPC**: Red privada virtual para aislar los recursos.
- **Subredes**: Públicas y privadas distribuidas en múltiples zonas de disponibilidad.
- **NAT Gateway**: Permite a las instancias en subredes privadas acceder a internet de forma segura.
- **EC2 (Auto Scaling Group)**: Instancias escalables para ejecutar aplicaciones.
- **Application Load Balancer (ALB)**: Balanceo de tráfico entrante hacia las instancias EC2.
- **Auto Scaling**: Ajusta automáticamente la cantidad de instancias EC2 según la carga.

## ⚙️ Automatización con GitHub Actions

El repositorio incluye un **workflow de GitHub Actions** que permite:

- Validar la sintaxis de los archivos Terraform.  
- Ejecutar `terraform plan` para ver los cambios propuestos.  
- Aplicar automáticamente la infraestructura en AWS con `terraform apply`.  

Esto garantiza que la infraestructura se despliegue de forma **consistente, trazable y automatizada** cada vez que se actualiza el repositorio.

## 📂 Estructura del proyecto

multi-az/

│── .github/workflows/  # Workflow de GitHub Actions

│── main.tf # Configuración principal

│── variables.tf # Variables de entrada

│── outputs.tf # Salidas principales

│── provider.tf # Configuración del proveedor AWS

│── modules/ # Módulos reutilizables


## ⚙️ Requisitos

- [Terraform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) >= 1.5
- [AWS CLI](https://docs.aws.amazon.com/cli/) instalado
- [GitHub Actions](https://docs.github.com/actions) habilitado en el repositorio

## 🚀 Cómo desplegar la infraestructura

```bash
# Inicializar Terraform
terraform init

# Ver plan de ejecución
terraform plan

# Aplicar los cambios
terraform apply -auto-approve
