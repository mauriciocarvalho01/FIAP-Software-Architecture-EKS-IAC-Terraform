## Documentação da Arquitetura Terraform

### Visão Geral
Este repositório contém a configuração Terraform para provisionar um cluster EKS na AWS. 
A infraestrutura descrita aqui inclui um cluster EKS principal e um grupo de nós, com configurações específicas para garantir segurança e escalabilidade.

### Versões e Informações Gerais
* **Terraform:** 1.9.5

### Recursos Provisionados
#### 1. Cluster EKS
* **Nome:** eks_cluster
* **Autenticação:** CONFIG_MAP
* **ARN:** arn:aws:eks:us-east-1:<masked_account_id>:cluster/<cluster_name>
* **Endpoint:** https://<masked_id>.gr7.us-east-1.eks.amazonaws.com
* **Rede:**
  * Família de IP: IPv4
  * CIDR de Serviços: 10.100.0.0/16
  * VPC: vpc-<masked_id>
  * Subnets: subnet-<masked_id>, ...

#### 2. Node Group EKS
* **Nome:** eks_node_group
* **AMI:** AL2023_x86_64_STANDARD
* **ARN:** arn:aws:eks:us-east-1:<masked_account_id>:nodegroup/<node_group_name>
* **Tipo de Instância:** t3.medium
* **Escalabilidade:**
  * Desejado: 2
  * Mínimo: 1
  * Máximo: 3

### Considerações de Segurança
* **Acesso Público:** Habilitado para o endpoint EKS.
* **Autenticação:** OIDC com roles IAM.
* **Subnets e VPCs:** IDs mascarados.

### Configurações de Atualização
* **Política:** Suporte para atualizações estendidas.
* **Disponibilidade:** Máximo 1 nó indisponível durante atualizações.

### Pré-requisitos
* **AWS Account:** Uma conta AWS ativa.
* **Credenciais:** Chaves de acesso e chave secreta da AWS configuradas.
* **Terraform:** Instalar e configurar o Terraform.
* **kubectl:** Configurar o kubectl para interagir com o cluster.

### Instruções de Uso
1. **Clonar o repositório:** git clone <url_do_repositório>
2. **Inicializar o backend:** terraform init
3. **Aplicar as configurações:** terraform apply
4. **Verificar o estado:** terraform plan

### Contribuições
Contribuições são bem-vindas! Por favor, abra um pull request.

