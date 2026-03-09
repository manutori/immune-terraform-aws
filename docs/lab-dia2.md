# ☁️ Laboratorio Día 2: Terraform on AWS

Asegúrate de haber configurado tus credenciales con `aws configure` antes de empezar.

---

## 📂 Ejercicio 1: Primer Bucket (`01-primer-bucket`)
**🎯 Objetivo:** Conectar Terraform con AWS y crear nuestro primer recurso (un bucket S3).

    cd 01-primer-bucket
    terraform init
    terraform apply

* **Reto:** Si el apply da error porque el nombre ya existe, ¡es normal! Los nombres en S3 deben ser únicos a nivel mundial. Pasa al siguiente ejercicio.

---

## 📂 Ejercicio 2: Data Sources (`02-data-sources`)
**🎯 Objetivo:** Usar un `data source` para consultar tu ID de cuenta a AWS y generar un nombre de bucket 100% único.

    cd ../02-data-sources
    terraform init
    terraform apply

---

## 📂 Ejercicio 3: Condicionales y Variables (`03-condicionales`)
**🎯 Objetivo:** Aprender a usar `count` junto con una variable para decidir dinámicamente si creamos un objeto dentro del bucket.

    cd ../03-condicionales
    terraform init
    terraform apply -var="create_object=true"

---

## 📂 Ejercicio 4: Proyecto Web (Infraestructura) (`04-web-infra`)
**🎯 Objetivo:** Preparar la infraestructura para alojar una web estática (políticas de acceso público y `depends_on`).

    cd ../04-web-infra
    terraform init
    terraform apply

---

## 📂 Ejercicio 5: Proyecto Web (Despliegue) (`05-web-deploy`)
**🎯 Objetivo:** Subir el código fuente (`index.html`) usando la función `filemd5()` para detectar cambios, y obtener la URL pública con un `output`.

    cd ../05-web-deploy
    terraform init
    terraform apply

* **Reto Final:** ¡Haz clic en la URL que aparece en verde al final y mira tu web funcionando!

---
### 🧹 Limpieza Final
¡AWS cobra por recursos activos! Al terminar la clase:
    terraform destroy
