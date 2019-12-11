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
Vamos seguir os passos, o primeiro passo é criar a imagem usando o packer.

### 1-packer
Vamos iniciar indo até o diretorio **1-packer**, podemos ir até o diretorio usando
```sh
cd 1-packer
```

Em seguida vamos realizar o build da imagem
```sh
packer build -var 'aws_access_key=AKIRA@$3rfssw' -var 'aws_secret_key=sudhsudsuhwrr3r3fFUNKrjS4r4d4' desafio.json
```

> Por fim vai ser retornado uma **AMI**, vamos setar ela essa **AMI** no nosso arquivo **instance.tf**.

### 2-terraform
Depois de realizar o build no terraform, conseguimos obter uma AMI que foi criada.

Vamos iniciar criando um diretorio chamado **.aws**.
> Em seguida vamos criar um arquivo chamado **credentials**.

O valor dele é o
```sh
[giropops]
aws_access_key_id = "AKIRA@$3rfssw"
aws_secret_access_key = "sudhsudsuhwrr3r3fFUNKrjS4r4d4"
```

#### Baixando plugins necessarios
Devemos realizando o comando **terraform init** para obter os plugins necessarios para iniciar o projeto.
```sh
terraform init
```

#### Gerando plano de executação
Com o comando **terraform plan** é usado para criar um plano de execução para o Terraform.
```sh
terraform plan
```

#### Criando instancia
Podemos criar a instancia usando o comando **terraform apply**.
```sh
terraform apply
```

#### Destruindo instancia
Agora podemos destruir a instancia usando o comando **terraform destroy**.
```sh
terraform destroy
```
