# ☁️ Terraform on AWS - Máster en Cloud Computing (IMMUNE)

¡Bienvenidos al Día 2 de Infraestructura como Código (IaC) con Terraform! 🚀

Ayer aprendimos los fundamentos trabajando en local. Hoy damos el salto a las grandes ligas: vamos a conectar Terraform con **Amazon Web Services (AWS)** para desplegar infraestructura real en la nube.

Usaremos **GitHub Codespaces**, que hoy viene con un superpoder extra: trae la **AWS CLI** ya preinstalada.

---

## 🛠️ 1. Arranca tu entorno de prácticas

1. Haz clic en el botón verde **`<> Code`** (arriba a la derecha).
2. Ve a la pestaña **`Codespaces`**.
3. Haz clic en **`Create codespace on main`**.
4. ☕ Espera unos segundos hasta que se abra tu editor.

---

## 🔑 2. Crea tus credenciales en AWS (NUEVO)

Antes de ir a la terminal, necesitamos generar las llaves de acceso en tu cuenta de AWS.

1. Inicia sesión en la **Consola de AWS**.
2. Haz clic en el nombre de tu usuario (arriba a la derecha) y selecciona **Security credentials** (Credenciales de seguridad).
3. Haz scroll hacia abajo hasta la sección **Access keys** y haz clic en **Create access key**.
4. Selecciona el caso de uso **Command Line Interface (CLI)**, marca la casilla de confirmación abajo y dale a **Next**.
5. (Opcional) Ponle una etiqueta, por ejemplo: `terraform-clase`. Dale a **Create access key**.
6. ⚠️ **¡No cierres esta pantalla!** Aquí tienes tu *Access key* y tu *Secret access key*. El Secret solo se muestra una vez.

---

## 🔐 3. Autenticación en tu entorno

Ahora que tienes tus llaves, vuelve a la pestaña de tu GitHub Codespace. Abre la terminal integrada y ejecuta:

    aws configure

Rellena los 4 datos cuando te los pida:
1. **AWS Access Key ID**: `[Pega tu Access Key aquí]`
2. **AWS Secret Access Key**: `[Pega tu Secret Key aquí]`
3. **Default region name**: `eu-west-1`
4. **Default output format**: `json`

> ⚠️ Nota: Al escribir el Secret Key no se verá nada en pantalla por seguridad. Pega el valor y pulsa Enter.

---

## ✅ 4. Comprueba que todo funciona

Verifica tu conexión lanzando este comando en la terminal:

    aws sts get-caller-identity

*Si te devuelve un JSON con tu `Account`... ¡Estás dentro!* 🥳

---

## 🎯 5. ¡A por la Demo!

Cuando estés listo, haz clic en el siguiente enlace para abrir la guía del laboratorio:

👉 **[Abrir la Guía del Laboratorio - Día 2](./docs/lab-dia2.md)**
