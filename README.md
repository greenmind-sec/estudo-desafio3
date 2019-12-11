## 1-packer - Criando imagem
O diretorio para a criação da imagem, está em:
```sh
cd 1-packer
```

Agora podemos realizar o comando agora para a criação da imagem.
### Criando imagem
```sh
packer build -var 'aws_access_key=AKIATF6B7PFEIOWOUQXU' -var 'aws_secret_key=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' firstrun.json
```

## 2-terraform - Gerenciando instancia

### Baixando plugins necessarios
Devemos realizando o comando **terraform init** para obter os plugins necessarios para iniciar o projeto.
```sh
terraform init
```

### Gerando plano de executação
Com o comando **terraform plan** é usado para criar um plano de execução para o Terraform.
```sh
terraform plan
```

### Criando instancia
Podemos criar a instancia usando o comando **terraform apply**.
```sh
terraform apply
```

### Destruindo instancia
Agora podemos destruir a instancia usando o comando **terraform destroy**.
```sh
terraform destroy
```

## Subindo o projeto
